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
  L_ARRAY1(LAU_VALUE,LAU_maxidx)

CONSTRAINTS
  LAU_maxidx: NAT1

DEFINITIONS
  LAU_INDEX == 0..LAU_maxidx

VARIABLES
  arr_vrb

INVARIANT
  arr_vrb: LAU_INDEX --> LAU_VALUE

INITIALISATION
  arr_vrb:: LAU_INDEX --> LAU_VALUE

OPERATIONS

  vv <-- VAL_ARRAY(ii) = PRE
    ii: LAU_INDEX
  THEN
    vv:=arr_vrb(ii)
  END;

  STR_ARRAY(ii,vv) = PRE
    ii: LAU_INDEX &
    vv: LAU_VALUE
  THEN
    arr_vrb(ii):=vv
  END;

  /*----------------------------------------------------------------------**
  SET_ARRAY: copies vv in the ii..jj part of the array.
  **----------------------------------------------------------------------*/ 
  SET_ARRAY(ii,jj,vv) = PRE
    ii: NAT &
    jj: NAT &
    jj /= MAXINT &
    ii..jj <: LAU_INDEX &
    vv: LAU_VALUE
  THEN
    arr_vrb:=arr_vrb<+(ii..jj)*{vv}
  END

END
