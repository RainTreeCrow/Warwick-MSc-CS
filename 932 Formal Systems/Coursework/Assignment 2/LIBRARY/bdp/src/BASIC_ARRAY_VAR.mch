/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    BASIC_ARRAY_VAR : modelisation for one dimensionnal
*                                    total functions
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  BASIC_ARRAY_VAR ( BAV_INDEX , BAV_VALUE )

ABSTRACT_VARIABLES
  arr_vrb

INVARIANT
  /*----------------------------------------------------------------------**
  arr_vrb is a total function from BAV_INDEX towards BAV_VALUE, that describes
  an array.
  **----------------------------------------------------------------------*/
  arr_vrb : BAV_INDEX --> BAV_VALUE

INITIALISATION
  arr_vrb :: BAV_INDEX --> BAV_VALUE

OPERATIONS

  vv <-- VAL_ARRAY ( ii ) = PRE
    ii : BAV_INDEX
  THEN
    vv := arr_vrb ( ii )
  END ;

  STR_ARRAY ( ii , vv ) = PRE
    ii : BAV_INDEX &
    vv : BAV_VALUE
  THEN
    arr_vrb ( ii ) := vv
  END

END
