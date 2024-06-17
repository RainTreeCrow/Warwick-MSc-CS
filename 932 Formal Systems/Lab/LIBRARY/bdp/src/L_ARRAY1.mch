/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY1 modelizes a one dimensionnal array
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  arr_vrb is a total function from 0..maxidx vinto VALUE, that figuresout
  a memory array with a specific value for each element. Operations on
  elements groups can be performed by choosing an interval as definition
  set of the array.
  **----------------------------------------------------------------------*/
  L_ARRAY1 ( LAU_VALUE , LAU_maxidx )

CONSTRAINTS
  LAU_maxidx : NAT1




ABSTRACT_VARIABLES
  arr_vrb

INVARIANT
  arr_vrb : 0 .. LAU_maxidx --> LAU_VALUE

INITIALISATION
  arr_vrb :: 0 .. LAU_maxidx --> LAU_VALUE

OPERATIONS

  vv <-- VAL_ARRAY ( ii ) = PRE
    ii : 0 .. LAU_maxidx
  THEN
    vv := arr_vrb ( ii )
  END ;

  STR_ARRAY ( ii , vv ) = PRE
    ii : 0 .. LAU_maxidx &
    vv : LAU_VALUE
  THEN
    arr_vrb ( ii ) := vv
  END ;

  /*----------------------------------------------------------------------**
  SET_ARRAY: copies vv in the ii..jj part of the array.
  **----------------------------------------------------------------------*/
  SET_ARRAY ( ii , jj , vv ) = PRE
    ii : NAT &
    jj : NAT &
    jj /= MAXINT &
    ii .. jj <: 0 .. LAU_maxidx &
    vv : LAU_VALUE
  THEN
    arr_vrb := arr_vrb <+ ( ii .. jj ) * { vv }
  END

END
