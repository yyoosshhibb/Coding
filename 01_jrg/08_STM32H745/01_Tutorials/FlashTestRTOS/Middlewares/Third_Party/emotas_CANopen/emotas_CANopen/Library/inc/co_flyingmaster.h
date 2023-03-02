/*
* co_flyingmaster.h - contains defines for nmt flying master services
*
* Copyright (c) 2012-2019 emotas embedded communication GmbH
*
*-------------------------------------------------------------------
* $Id: co_flyingmaster.h 29006 2019-08-29 14:45:04Z boe $
*-------------------------------------------------------------------
*
*
*
*/

/**
* \brief defines for nmt flying master services
*
* \file co_flyingmaster.h - contains defines for nmt flying master services
*
*/

#ifndef CO_FLYING_MASTER_H
#define CO_FLYING_MASTER_H 1

#include <co_datatype.h>


/* datatypes */

/**
* NMT states 
*/
typedef enum {
	CO_FLYMA_STATE_DETECT_NO_MASTERS,		/**< no master detected */
	CO_FLYMA_STATE_MASTERS_AVAILABLE,		/**< master capable available */
	CO_FLYMA_STATE_NO_ACTIVE_MASTER,		/**< no active master found */
	CO_FLYMA_STATE_NEGOTIATION_STARTED,		/**< negotiation started */
	CO_FLYMA_STATE_MASTER,					/**< we are master */
	CO_FLYMA_STATE_SLAVE,					/**< we are slave */
} CO_FLYMA_STATE_T;


/** \brief function pointer to NMT flying master event function 
 * \param nmtFlymaState - flying master event
 * \param node - node id of actual master
 * \param prior - priority of actual master
 * 
 * \return void
 */
typedef void (* CO_EVENT_FLYMA_T)(CO_FLYMA_STATE_T, UNSIGNED8, UNSIGNED8); /*lint !e960 customer specific parameter names */


/* function prototypes */

EXTERN_DECL RET_T coEventRegister_FLYMA(CO_EVENT_FLYMA_T fct);
EXTERN_DECL RET_T coNmtFlymaDetectMaster(void);
EXTERN_DECL RET_T coNmtFlymaDetectActiveMaster(void);


#endif /* CO_FLYING_MASTER_H */
