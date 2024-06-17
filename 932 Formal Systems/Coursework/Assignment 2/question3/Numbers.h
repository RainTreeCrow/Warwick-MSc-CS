#ifndef _Numbers_h
#define _Numbers_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Numbers__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Numbers__checknumber(int32_t nn, bool *oo);
extern void Numbers__showprevious(int32_t *oo);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Numbers_h */
