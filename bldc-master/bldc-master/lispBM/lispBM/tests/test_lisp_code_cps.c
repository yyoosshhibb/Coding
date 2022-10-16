/*
    Copyright 2018,2020 Joel Svensson   svenssonjoel@yahoo.se

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#define _POSIX_C_SOURCE 200809L
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <ctype.h>
#include <getopt.h>
#include <pthread.h>
#include <sys/time.h>
#include <unistd.h>

#include "lispbm.h"
#include "extensions/array_extensions.h"
#include "lbm_channel.h"

#define WAIT_TIMEOUT 2500

#define EVAL_CPS_STACK_SIZE 256
#define GC_STACK_SIZE 256
#define PRINT_STACK_SIZE 256
#define EXTENSION_STORAGE_SIZE 256
#define VARIABLE_STORAGE_SIZE 256

lbm_uint gc_stack_storage[GC_STACK_SIZE];
lbm_uint print_stack_storage[PRINT_STACK_SIZE];
extension_fptr extension_storage[EXTENSION_STORAGE_SIZE];
lbm_value variable_storage[VARIABLE_STORAGE_SIZE];

/* Tokenizer state for strings */
//static lbm_tokenizer_string_state_t string_tok_state;

/* Tokenizer statefor compressed data */
//static tokenizer_compressed_state_t comp_tok_state;

/* shared tokenizer */
//static lbm_tokenizer_char_stream_t string_tok;

static lbm_char_channel_t string_tok;
static lbm_string_channel_state_t string_tok_state;
static lbm_buffered_channel_state_t buffered_tok_state;

void *eval_thd_wrapper(void *v) {
  (void)v;
  lbm_run_eval();
  return NULL;
}

uint32_t timestamp_callback() {
  struct timeval tv;
  gettimeofday(&tv,NULL);
  return (uint32_t)(tv.tv_sec * 1000000 + tv.tv_usec);
}

void sleep_callback(uint32_t us) {
  struct timespec s;
  struct timespec r;
  s.tv_sec = 0;
  s.tv_nsec = (long)us * 1000;
  nanosleep(&s, &r);
}
volatile bool experiment_success = false;
volatile bool experiment_done = false;

void context_done_callback(eval_context_t *ctx) {
  char output[128];
  lbm_value t = ctx->r;

  int res = lbm_print_value(output, 128, t);

  if ( res >= 0) {
    printf("O: %s\n", output);
  } else {
    printf("%s\n", output);
  }

  if (res && lbm_type_of(t) == LBM_TYPE_SYMBOL && lbm_dec_sym(t) == SYM_TRUE){ // structural_equality(car(rest),car(cdr(rest)))) {
    experiment_success = true;
    printf("Test: OK!\n");
  } else {
    printf("Test: Failed!\n");
  }

  experiment_done = true;
}


bool dyn_load(const char *str, const char **code) {

  bool res = false;
  if (strlen(str) == 5 && strncmp(str, "defun", 5) == 0) {
    *code = "(define defun (macro (name args body) `(define ,name (lambda ,args ,body))))";
    res = true;
  } else if (strlen(str) == 7 && strncmp(str, "reverse", 7) == 0) {
    *code = "(define reverse (lambda (xs)"
            "(let ((revacc (lambda (acc xs)"
            "(if (eq nil xs) acc"
            "(revacc (cons (car xs) acc) (cdr xs))))))"
            "(revacc nil xs))))";
    res = true;
  } else if (strlen(str) == 4 && strncmp(str, "iota", 4) == 0) {
    *code = "(define iota (lambda (n)"
            "(let ((iacc (lambda (acc i)"
            "(if (< i 0) acc"
            "(iacc (cons i acc) (- i 1))))))"
            "(iacc nil n))))";
    res = true;
  } else if (strlen(str) == 6 && strncmp(str, "length", 6) == 0) {
    *code = "(define length (lambda (xs)"
            "(let ((len (lambda (l xs)"
            "(if (eq xs nil) l"
            "(len (+ l 1) (cdr xs))))))"
            "(len 0 xs))))";
    res = true;
  } else if (strlen(str) == 4 && strncmp(str, "take", 4) == 0) {
    *code = "(define take (lambda (n xs)"
            "(let ((take-tail (lambda (acc n xs)"
            "(if (= n 0) acc"
            "(take-tail (cons (car xs) acc) (- n 1) (cdr xs))))))"
            "(reverse (take-tail nil n xs)))))";
    res = true;
  } else if (strlen(str) == 4 && strncmp(str, "drop", 4) == 0) {
    *code = "(define drop (lambda (n xs)"
            "(if (= n 0) xs"
            "(if (eq xs nil) nil"
            "(drop (- n 1) (cdr xs))))))";
    res = true;
  } else if (strlen(str) == 3 && strncmp(str, "zip", 3) == 0) {
    *code = "(define zip (lambda (xs ys)"
            "(if (eq xs nil) nil"
            "(if (eq ys nil) nil"
            "(cons (cons (car xs) (car ys)) (zip (cdr xs) (cdr ys)))))))";
    res = true;
  } else if (strlen(str) == 3 && strncmp(str, "map", 3) == 0) {
    *code = "(define map (lambda (f xs)"
            "(if (eq xs nil) nil"
            "(cons (f (car xs)) (map f (cdr xs))))))";
    res = true;
  } else if (strlen(str) == 6 && strncmp(str, "lookup", 6) == 0) {
    *code = "(define lookup (lambda (x xs)"
            "(if (eq xs nil) nil"
            "(if (eq (car (car xs)) x)"
            "(car (cdr (car xs)))"
            "(lookup x (cdr xs))))))";
    res = true;
  } else if (strlen(str) == 5 && strncmp(str, "foldr", 5) == 0) {
    *code = "(define foldr (lambda (f i xs)"
            "(if (eq xs nil) i"
            "(f (car xs) (foldr f i (cdr xs))))))";
    res = true;
  } else if (strlen(str) == 5 && strncmp(str, "foldl", 5) == 0) {
    *code = "(define foldl (lambda (f i xs)"
            "(if (eq xs nil) i (foldl f (f i (car xs)) (cdr xs)))))";
    res = true;
  }
  return res;
}

  //lbm_value ext_even(lbm_value *args, lbm_uint argn) {
LBM_EXTENSION(ext_even, args, argn){
  if (argn < 1) return lbm_enc_sym(SYM_NIL);

  lbm_value v = args[0];

  if (lbm_type_of(v) == LBM_TYPE_I ||
      lbm_type_of(v) == LBM_TYPE_U) {
    if (lbm_dec_i(v) % 2 == 0)
      return lbm_enc_sym(SYM_TRUE);
  }

  return lbm_enc_sym(SYM_NIL);
}

LBM_EXTENSION(ext_odd, args, argn){
  //lbm_value ext_odd(lbm_value *args, lbm_uint argn) {

  if (argn < 1) return lbm_enc_sym(SYM_NIL);

  lbm_value v = args[0];

  if (lbm_type_of(v) == LBM_TYPE_I ||
      lbm_type_of(v) == LBM_TYPE_U) {
    if (lbm_dec_i(v) % 2 == 1)
      return lbm_enc_sym(SYM_TRUE);
  }

  return lbm_enc_sym(SYM_NIL);
}

LBM_EXTENSION(ext_numbers, args, argn) {

  bool b = true;

  for (unsigned int i = 0; i < argn; i ++) {
    if (!lbm_is_number(args[i])) {
      b = false;
      break;
    }
  }
  return lbm_enc_sym(b ? SYM_TRUE : SYM_NIL);
}



int main(int argc, char **argv) {

  int res = 0;

  unsigned int heap_size = 8 * 1024 * 1024;  // 8 Megabytes is standard
  //  bool compress_decompress = false;

  bool stream_source = false;

  pthread_t lispbm_thd;
  lbm_cons_t *heap_storage = NULL;

  int c;
  opterr = 1;

  while (( c = getopt(argc, argv, "gsch:")) != -1) {
    switch (c) {
    case 'h':
      heap_size = (unsigned int)atoi((char *)optarg);
      break;
      //    case 'c':
      //compress_decompress = true;
      //break;
    case 's':
      stream_source = true;
    case '?':
      break;
    default:
      break;
    }
  }
  printf("------------------------------------------------------------\n");
  printf("Heap size: %u\n", heap_size);
  printf("Streaming source: %s\n", stream_source ? "yes" : "no");
  //  printf("Compression: %s\n", compress_decompress ? "yes" : "no");
  printf("------------------------------------------------------------\n");

  if (argc - optind < 1) {
    printf("Incorrect arguments\n");
    return 0;
  }

  printf("Opening file: %s\n", argv[optind]);

  FILE* fp = fopen(argv[optind], "r");

  if (fp == NULL) {
    printf("Error opening file\n");
    return 0;
  }

  fseek(fp, 0, SEEK_END);
  long size = ftell(fp);
  if (size <= 0) {
    printf("Error file empty %s\n", argv[1]);
    return 0;
  }
  fseek(fp, 0, SEEK_SET);
  char *code_buffer = malloc((unsigned long)size * sizeof(char) + 1);
  if (!code_buffer) return 0;
  memset(code_buffer, 0, (unsigned long)size * sizeof(char) + 1);
  size_t r = fread (code_buffer, 1, (unsigned int)size, fp);

  if (r == 0) {
    printf("Error empty file?\n");
    return 0;
  }

  lbm_uint *memory = malloc(sizeof(lbm_uint) * LBM_MEMORY_SIZE_12K);
  if (memory == NULL) return 0;
  lbm_uint *bitmap = malloc(sizeof(lbm_uint) * LBM_MEMORY_BITMAP_SIZE_12K);
  if (bitmap == NULL) return 0;


  res = lbm_memory_init(memory, LBM_MEMORY_SIZE_12K,
                        bitmap, LBM_MEMORY_BITMAP_SIZE_12K);
  if (res)
    printf("Memory initialized.\n");
  else {
    printf("Error initializing memory!\n");
    return 0;
  }

  res = lbm_print_init(print_stack_storage, PRINT_STACK_SIZE);
  if (res)
    printf("Printing initialized.\n");
  else {
    printf("Error initializing printing!\n");
    return 0;
  }

  res = lbm_symrepr_init();
  if (res)
    printf("Symrepr initialized.\n");
  else {
    printf("Error initializing symrepr!\n");
    return 0;
  }

  heap_storage = (lbm_cons_t*)malloc(sizeof(lbm_cons_t) * heap_size);
  if (heap_storage == NULL) {
    return 0;
  }

  res = lbm_heap_init(heap_storage, heap_size, gc_stack_storage, GC_STACK_SIZE);
  if (res)
    printf("Heap initialized. Heap size: %"PRI_FLOAT" MiB. Free cons cells: %"PRI_INT"\n", (double)lbm_heap_size_bytes() / 1024.0 / 1024.0, lbm_heap_num_free());
  else {
    printf("Error initializing heap!\n");
    return 0;
  }

  res = lbm_eval_init();
  if (res)
    printf("Evaluator initialized.\n");
  else {
    printf("Error initializing evaluator.\n");
    return 0;
  }

  res = lbm_init_env();
  if (res)
    printf("Environment initialized.\n");
  else {
    printf("Error initializing environment.\n");
    return 0;
  }

  res = lbm_extensions_init(extension_storage, EXTENSION_STORAGE_SIZE);
  if (res)
    printf("Extensions initialized.\n");
  else {
    printf("Error initializing extensions.\n");
    return 0;
  }

  lbm_array_extensions_init();

  res = lbm_add_extension("ext-even", ext_even);
  if (res)
    printf("Extension added.\n");
  else {
    printf("Error adding extension.\n");
    return 0;
  }

  res = lbm_add_extension("ext-odd", ext_odd);
  if (res)
    printf("Extension added.\n");
  else {
    printf("Error adding extension.\n");
    return 0;
  }

  res = lbm_add_extension("ext-numbers", ext_numbers);
  if (res)
    printf("Extension added.\n");
  else {
    printf("Error adding extension.\n");
    return 0;
  }

  lbm_set_dynamic_load_callback(dyn_load);
  lbm_set_timestamp_us_callback(timestamp_callback);
  lbm_set_usleep_callback(sleep_callback);
  lbm_set_printf_callback(printf);

  lbm_variables_init(variable_storage, VARIABLE_STORAGE_SIZE);

  lbm_set_verbose(true);

  if (pthread_create(&lispbm_thd, NULL, eval_thd_wrapper, NULL)) {
    printf("Error creating evaluation thread\n");
    return 1;
  }

  lbm_cid cid;
  /* prelude_load(&string_tok_state, &string_tok); */
  /* lbm_cid cid = lbm_load_and_eval_program(&string_tok); */
  /* if (!lbm_wait_ctx(cid, WAIT_TIMEOUT)) { */
  /*   printf("Waiting for prelude timed out.\n"); */
  /* } */

  /* lbm_pause_eval_with_gc(20); */
  /* while (lbm_get_eval_state() != EVAL_CPS_STATE_PAUSED) { */
  /*   sleep_callback(1000); */
  /* } */

  /* char *compressed_code; */
  /* if (compress_decompress) { */
  /*   uint32_t compressed_size = 0; */
  /*   compressed_code = lbm_compress(code_buffer, &compressed_size); */
  /*   if (!compressed_code) { */
  /*     printf("Error compressing code\n"); */
  /*     return 0; */
  /*   } */
  /*   //char decompress_code[8192]; */
  /*   char decompress_code[64000]; */

  /*   lbm_decompress(decompress_code, 64000, compressed_code); */
  /*   printf("\n\nDECOMPRESS TEST: %s\n\n", decompress_code); */

  /*   lbm_create_char_stream_from_compressed(&comp_tok_state, */
  /*                                          &string_tok, */
  /*                                          compressed_code); */

  /* } else { */
  //lbm_create_char_stream_from_string(&string_tok_state,
  //                                   &string_tok,
  //                                   code_buffer);

  lbm_pause_eval_with_gc(20);
  while (lbm_get_eval_state() != EVAL_CPS_STATE_PAUSED) {
    sleep_callback(1000);
  }
  if (stream_source) {
    lbm_create_buffered_char_channel(&buffered_tok_state,
                                     &string_tok);
  } else {
    lbm_create_string_char_channel(&string_tok_state,
                                   &string_tok,
                                   code_buffer);
  }
  //}

  lbm_set_ctx_done_callback(context_done_callback);
  cid = lbm_load_and_eval_program(&string_tok);

  if (cid == -1) {
    printf("Failed to load and evaluate the test program\n");
    return 0;
  }

  lbm_continue_eval();

  if (stream_source) {
    int i = 0;
    while (true) {
      if (code_buffer[i] == 0) {
        lbm_channel_writer_close(&string_tok);
        break;
      }
      int ch_res = lbm_channel_write(&string_tok, code_buffer[i]);

      if (ch_res == CHANNEL_SUCCESS) {
        //printf("wrote: %c\n", code_buffer[i]);
        i ++;
      } else if (ch_res == CHANNEL_READER_CLOSED) {
        break;
      } else {
        sleep_callback(2);
      }
    }
  }

  while (!experiment_done) {
    sleep_callback(1000);
  }

  lbm_pause_eval();
  while(lbm_get_eval_state() != EVAL_CPS_STATE_PAUSED);

  /* if (compress_decompress) { */
  /*   free(compressed_code); */
  /* } */

  free(heap_storage);

  if (experiment_success) return 1;
  return 0;
}
