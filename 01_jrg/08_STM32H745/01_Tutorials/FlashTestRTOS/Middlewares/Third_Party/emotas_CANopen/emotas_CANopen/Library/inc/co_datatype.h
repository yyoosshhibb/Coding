/*
* co_datatype.h - contains defines for data types
*
* Copyright (c) 2012-2021 emotas embedded communication GmbH
*
*-------------------------------------------------------------------
* $Id: co_datatype.h 36758 2021-06-11 09:46:51Z boe $
*-------------------------------------------------------------------
*
*
*
*/

/**
* \brief data types
*
* \file co_datatype.h - contains defines for data types
*
*/

#ifndef CO_DATATYPE_H
#define CO_DATATYPE_H 1


#ifdef __STDC_VERSION__
#  if (__STDC_VERSION__ >= 199901L)
#	 ifndef C99
#      define C99
#	 endif /* C99 */
#  endif /* if */
#endif /* __STDC_VERSION__ */

#ifdef C99
# include <stdint.h>
#endif /* C99 */


/* datatypes */

#ifndef CO_INLINE
# define CO_INLINE
#endif /* CO_INLINE */


#ifndef CO_CONST
# define CO_CONST const
#endif /* CO_CONST */

/* special NV storage specified that must be placed in type defitions */
#ifndef CO_NV_STORAGE
# define CO_NV_STORAGE 
#endif /* CO_NV_STORAGE */

#ifndef EXTERN_DECL 
# define EXTERN_DECL 
#endif /* EXTERN_DECL */

/*lint -save -e961 function like macro for debug */
#ifndef CO_DEBUG
# define CO_DEBUG(f)
# define CO_DEBUG1(f, par1)
# define CO_DEBUG2(f, par1, par2)
# define CO_DEBUG3(f, par1, par2, par3)
# define CO_DEBUG4(f, par1, par2, par3, par4)
#endif /* CO_DEBUG */
/*lint -restore */


#ifdef CO_CUSTOMER_DATATYPES
/* customer typedefs in gen_define.h */
#else /* CO_CUSTOMER_DATATYPES */

/**
* define for bool values 
*/
typedef enum {
	CO_FALSE,			/**< false */
	CO_TRUE				/**< true */
} BOOL_T;

#ifdef C99
typedef uint8_t 			UNSIGNED8;
typedef uint16_t 			UNSIGNED16;
typedef uint32_t 			UNSIGNED32;
typedef int8_t				INTEGER8;
typedef int16_t				INTEGER16;
typedef int32_t				INTEGER32;
#else /* C99 */
typedef unsigned char		UNSIGNED8;
typedef unsigned short int	UNSIGNED16;
typedef unsigned long		UNSIGNED32;
typedef signed char			INTEGER8;
typedef signed short int	INTEGER16;
typedef signed long			INTEGER32;
#endif /* C99 */

#ifndef UNSIGNED24_T
typedef struct {
	unsigned char	val[3];
} UNSIGNED24_T;
#endif /* UNSIGNED24_T */

#ifndef UNSIGNED40_T
typedef struct {
	unsigned char	val[5];
} UNSIGNED40_T;
#endif /* UNSIGNED40_T */

#ifndef UNSIGNED48_T
typedef struct {
	unsigned char	val[6];
} UNSIGNED48_T;
#endif /* UNSIGNED48_T */

#ifndef UNSIGNED64_T
typedef struct {
	unsigned char	val[8];
} UNSIGNED64_T;
#endif /* UNSIGNED64_T */

typedef	char	 			*VIS_STRING;
typedef	char 				OCTET_STRING;
typedef	unsigned char 		*CO_DOMAIN_PTR;
typedef float				REAL32;
typedef UNSIGNED24_T		UNSIGNED24;
typedef UNSIGNED40_T		UNSIGNED40;
typedef UNSIGNED48_T		UNSIGNED48;
typedef UNSIGNED64_T		UNSIGNED64;


/* special initialisation of extented datatypes */
# ifdef CO_BIG_ENDIAN
#define U24_SET(b1, b2, b3)   \
        {{ b1, b2, b3 }}
#define U40_SET(b1, b2, b3, b4, b5)   \
        {{ b1, b2, b3, b4, b5 }}
#define U48_SET(b1, b2, b3, b4, b5, b6)   \
        {{ b1, b2, b3, b4, b5, b6 }}
#define U64_SET(b1, b2, b3, b4, b5, b6, b7, b8)   \
        {{ b1, b2, b3, b4, b5, b6, b7, b8 }}
# else /* CO_BIG_ENDIAN */
#define U24_SET(b1, b2, b3)   \
        {{ b3, b2, b1 }}
#define U40_SET(b1, b2, b3, b4, b5)   \
        {{ b5, b4, b3, b2, b1 }}
#define U48_SET(b1, b2, b3, b4, b5, b6)   \
        {{ b6, b5, b4, b3, b2, b1 }}
#define U64_SET(b1, b2, b3, b4, b5, b6, b7, b8)   \
        {{ b8, b7, b6, b5, b4, b3, b2, b1 }}
# endif /* CO_BIG_ENDIAN */

#endif /* CO_CUSTOMER_DATATYPES */

/**
* Defines for RET_T
*/
typedef enum {
	RET_OK = 0u,					/**< all ok */

	RET_INVALID_PARAMETER = 10,		/**< error invalid parameter */
	RET_PARAMETER_INCOMPATIBLE = 11,/**< error incompatible parameter */
	RET_NOT_INITIALIZED = 12,		/**< error function not initialized */
	RET_EVENT_NO_RESSOURCE = 13,	/**< error no ressource available */
	RET_INVALID_NMT_STATE = 14,		/**< error invalid NMT state */
	RET_INVALID_NODEID = 15,		/**< invalid node id */
	RET_ALREADY_INITIALIZED = 16,	/**< error already initialized */

	RET_IDX_NOT_FOUND = 20,			/**< error index not found */
	RET_SUBIDX_NOT_FOUND = 21,		/**< error subindex not found */
	RET_OD_ACCESS_ERROR = 22,		/**< error access at object dictionary */
	RET_NO_READ_PERM = 23,			/**< error no read permission */
	RET_NO_WRITE_PERM = 24,			/**< error no write permission */

	RET_SDO_UNKNOWN_CCS = 30,		/**< error unknown command specifier */
	RET_SDO_DATA_TYPE_NOT_MATCH = 31,/**< error wrong data type */
	RET_SDO_INVALID_VALUE = 32,		/**< error invalid value */
	RET_SDO_TRANSFER_NOT_SUPPORTED = 33,/**< error transfer not supported */
	RET_OUT_OF_MEMORY = 34,			/**< error out of memory */
	RET_DATA_TYPE_MISMATCH = 35,	/**< error data type mismatch */
	RET_TOGGLE_MISMATCH = 36,		/**< error toogle bit not alternate */
	RET_SDO_CRC_ERROR = 37,			/**< error CRC mismatch */
	RET_SDO_WRONG_BLOCKSIZE = 38,	/**< error wrong blocksize */
	RET_SDO_WRONG_SEQ_NR = 39,		/**< error wrong sequence number */
	RET_SDO_TIMEOUT = 40,			/**< error sdo timeout */
	RET_SDO_SPLIT_INDICATION = 41,	/**< SDO split indikation */
	RET_USDO_SPLIT_INDICATION = 42,	/**< USDO split indikation */

	RET_NO_COB_AVAILABLE = 50,		/**< error no cob available */
	RET_COB_DISABLED = 51,			/**< error cob-id is disabled */

	RET_DRV_WRONG_BITRATE = 60,		/**< error unknown bitrate */
	RET_DRV_ERROR = 61,				/**< error driver */
	RET_DRV_TRANS_BUFFER_FULL = 62,	/**< error transmit buffer full */
	RET_DRV_BUSY = 63,				/**< error driver is busy */

	RET_MAP_ERROR = 70,				/**< error map entry incorrect */
	RET_MAP_LEN_ERROR = 71,			/**< error mapping len incorrect */
	RET_INHIBIT_ACTIVE = 72,		/**< error inhibit is active */

	RET_INTERNAL_ERROR = 80,		/**< error internal */
	RET_HARDWARE_ERROR = 81,		/**< error hardware access */
	RET_ERROR_PRESENT_DEVICE_STATE = 82,	/**< error wrong device state */
	RET_VALUE_NOT_AVAILABLE = 83,	/**< error value not available */
	RET_ERROR_STORE = 84,			/**< error store data */


	RET_SERVICE_ALREADY_INITIALIZED = 90,/**< service already initialized */
	RET_SERVICE_NOT_INITIALIZED = 91,/**< service not initialized */
	RET_SERVICE_BUSY = 92,			/**< error service is busy */

	RET_CFG_CONVERT_ERROR = 100,	/**< cfg manager convert error */

	RET_NETWORK_ID_UNKNOWN = 110,	/**< network id unknown */
	RET_NW_NODE_ID_UNKNOWN = 111,	/**< networking node id unknown */
	RET_NW_SDO_CHANNEL_IN_USE = 112,	/**< networking sdo channel already in use*/

	RET_ABORTED = 120,				/**< functionality aborted */
	RET_TIMEOUT = 121,				/**< functionality timed out */
	RET_WRONG_STATE = 122,			/**< wrong state */

	RET_FLASH_EMPTY = 130,			/**< flash error */
	RET_FLASH_ERROR = 131,			/**< flash error */
	RET_FLASH_FINISHED = 132,		/**< flash finished */
	RET_FLASH_WRONG_CRC = 133,		/**< flash has wrong CRC */
	RET_FLASH_WRONG_IMAGE = 134,	/**< flash has wrong parameter */
	
	RET_UDS_NRC_PR = 140,			/**< uds positiveResponse */
	RET_UDS_NRC_GR = 141,			/**< uds generalReject */
	RET_UDS_NRC_SNS = 142,			/**< uds serviceNotSupported */
	RET_UDS_NRC_SFNS = 143,			/**< uds sub-functionNotSupported */
	RET_UDS_NRC_IMLOIF = 144,		/**< uds incorrectMessageLengthOrInvalidFormat */
	RET_UDS_NRC_RTL = 145,			/**< responseTooLong */
	RET_UDS_NRC_BRR = 146,			/**< busyRepeatRequest */
	RET_UDS_NRC_CNC = 147,			/**< conditionsNotCorrect */
	RET_UDS_NRC_RSE = 148,			/**< requestSequenceError */
	RET_UDS_NRC_NRFSC = 149,		/**< noResponseFromSubnetComponent */
	RET_UDS_NRC_FPEORA = 150,		/**< FailurePreventsExecutionOfRequestedAction */
	RET_UDS_NRC_ROOR = 151,			/**< requestOutOfRange */
	RET_UDS_NRC_SAD = 152,			/**< securityAccessDenied */
	RET_UDS_NRC_IK = 153,			/**< invalidKey */
	RET_UDS_NRC_ENOA = 154,			/**< exceedNumberOfAttempts */
	RET_UDS_NRC_RTDNE = 155,		/**< requiredTimeDelayNotExpired */
	RET_UDS_NRC_UDNA = 156,			/**< uploadDownloadNotAccepted */
	RET_UDS_NRC_TDS = 157,			/**< transferDataSuspended */
	RET_UDS_NRC_GPF = 158,			/**< generalProgrammingFailure */
	RET_UDS_NRC_WBSC = 159,			/**< wrongBlockSequenceCounter */
	RET_UDS_NRC_RCRRP = 160,		/**< requestCorrectlyReceived-ResponsePending */
	RET_UDS_NRC_SFNSIAS = 161,		/**< sub-functionNotSupportedInActiveSession */

	
	RET_WRONG_FD_MODE = 200			/**< mode node allowed for FD/non-FD */

} RET_T;




/**
* transmit message flags:
* if the last message is not transmitted yet,
* overwrite the last data with the new data
*/
#define MSG_OVERWRITE		1u
/**
* return, if the inhibit time is not ellapsed yet
*/
#define MSG_RET_INHIBIT		2u
/**
* if the message is succesfully transmitted signal
* it to the stack
*/
#define MSG_INDICATION		4u

#endif /* CO_DATATYPE_H */

