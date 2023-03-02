/*
* iso_tp.h - contains public api for iso-tp
*
* Copyright (c) 2018-2019 emotas embedded communication GmbH
*
*-------------------------------------------------------------------
* $Id: iso_tp.h 25989 2018-12-15 09:28:53Z phi $
*-------------------------------------------------------------------
*
*
*
*/

/**
* \brief api for iso-tp
*
* \file iso_tp.h - contains api for iso-tp stack
*
*/

#ifndef ISO_TP_H
#define ISO_TP_H 1

#include <co_datatype.h>


/* constants */



/* datatypes */
typedef enum {
	ISOTP_ADDRESS_UNKNOWN = 0u,
	ISOTP_ADDRESS_PHYS,
	ISOTP_ADDRESS_FUNC
} ISO_TP_ADDRESS_T;


typedef enum {
	ISOTP_FORMAT_NORMAL = 0u,
	ISOTP_FORMAT_EXTENDED
} ISO_TP_FORMAT_T;


typedef enum {
	ISOTP_DATAPTR_SERVER = 0u,
	ISOTP_DATAPTR_CLIENT
} ISO_TP_DATAPTR_T;


/** \brief function pointer for isotp receive function
 *
 * \param addr - source address
 * \param pData - pointer to data
 * \param dataSize - valid data size
 *
 * \return RET_T
 *
 */
typedef RET_T (* ISOTP_EVENT_SERVER_T)(UNSIGNED8 addr, UNSIGNED8 *pData, UNSIGNED16 dataSize);

/** \brief function pointer for isotp receive split function
 *
 * \param addr - source address
 * \param pData - pointer to data
 * \param dataSize - valid data size
 * \param tranferSize - size of the currently tranfered
 *
 * \return RET_T
 *
 */
typedef RET_T (* ISOTP_EVENT_SERVER_SPLIT_T)(UNSIGNED8 addr, UNSIGNED8 *pData, UNSIGNED16 dataSize, UNSIGNED16 tranferSize);

 /** \brief function pointer for isotp transmit function
 *
 * \param addr - souce address
 * \param pData - pointer to data
 * \param result - result of the transfer
 *
 * \return RET_T
 *
 */
typedef RET_T (* ISOTP_EVENT_CLIENT_T)(UNSIGNED8 addr, UNSIGNED8 *pData, RET_T result);

/** \brief function pointer for isotp transmit acknowledge function
 *
 * \param addr - souce address
 * \param pData - pointer to data
 * \param size - valid data bytes
 *
 * \return RET_T
 *
 */
typedef RET_T(*ISOTP_EVENT_CLIENT_TXACK_T)(UNSIGNED8 addr, UNSIGNED8* pData, UNSIGNED16 size);


/* function prototypes */
EXTERN_DECL RET_T isoTpInit(void);
EXTERN_DECL RET_T isoTpInitServerChannel(UNSIGNED32 reqId, UNSIGNED32 respId,
		UNSIGNED8 srcAddr, UNSIGNED8 destAdr, ISO_TP_ADDRESS_T addrType,
		ISO_TP_FORMAT_T formatType, UNSIGNED8 *pRecDataBuffer, UNSIGNED16 recBufSize);
EXTERN_DECL RET_T isoTpInitClientChannel(UNSIGNED32 reqId, UNSIGNED32 respId,
		UNSIGNED8 srcAddr, UNSIGNED8 destAdr, ISO_TP_ADDRESS_T addrType,
		ISO_TP_FORMAT_T formatType, UNSIGNED8 *pRecDataBuffer, UNSIGNED16 recBufSize);
EXTERN_DECL RET_T isoTpSetRecDataPtr(ISO_TP_DATAPTR_T direction, UNSIGNED8 destAddr, UNSIGNED8 *pRecData, UNSIGNED16 size);

EXTERN_DECL RET_T isoTpSendReq(UNSIGNED8 destAddr, UNSIGNED8 *pData, UNSIGNED16 dataLen, UNSIGNED8 flags);

EXTERN_DECL RET_T isoTpEventRegister_SERVER(ISOTP_EVENT_SERVER_T pFunction);
EXTERN_DECL RET_T isoTpEventRegister_CLIENT(ISOTP_EVENT_CLIENT_T pFunction);

EXTERN_DECL RET_T isoTpEventRegister_SERVER_SPLIT(ISOTP_EVENT_SERVER_SPLIT_T pFunction);
EXTERN_DECL RET_T isoTpEventRegister_CLIENT_TXACK(ISOTP_EVENT_CLIENT_TXACK_T pFunction);

EXTERN_DECL ISO_TP_ADDRESS_T isoTpGetCurrectConType(void);

#endif /* ISO_TP_H */
