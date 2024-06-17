/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY3 modelizes a total function
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  arr_vrb is a total function from 0..LAT_maxidx into LAT_VALUE, that represents
  a memory array where each element has a defined value. Operations on
  elements groups can be performed by choosing an interval index.
  This machine adds to L_ARRAY2 a new operation that invert a part of an
  array.
  **----------------------------------------------------------------------*/ 
  L_ARRAY3(LAT_VALUE,LAT_maxidx)

CONSTRAINTS
  /***** part copied from L_ARRAY2 *****/ 
  LAT_maxidx: NAT1

DEFINITIONS
  LAT_INDEX == 0..LAT_maxidx

VARIABLES
  arr_vrb

INVARIANT
  arr_vrb: LAT_INDEX --> LAT_VALUE

INITIALISATION
  arr_vrb:: LAT_INDEX --> LAT_VALUE

OPERATIONS

  vv <-- VAL_ARRAY(ii) = PRE
    ii: LAT_INDEX
  THEN
    vv:=arr_vrb(ii)
  END;

  STR_ARRAY(ii,vv) = PRE
    ii: LAT_INDEX &
    vv: LAT_VALUE
  THEN
    arr_vrb(ii):=vv
  END;

  SET_ARRAY(ii,jj,vv) = PRE
    ii: NAT &
    jj: NAT &
    jj/= MAXINT &
    ii..jj <: LAT_INDEX &
    vv: LAT_VALUE
  THEN
    arr_vrb:=arr_vrb<+(ii..jj)*{vv}
  END;

  /*----------------------------------------------------------------------**
  SWAP: swap 2 elements.
  **----------------------------------------------------------------------*/ 
  SWAP_ARRAY(ii,jj) = PRE
    ii: LAT_INDEX &
    jj: LAT_INDEX
  THEN
    arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)}
  END;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT: the ii..jj part is copied into the ii+nn..jj+nn part of the
  array (right shift of nn elements).
  **----------------------------------------------------------------------*/ 
  RIGHT_SHIFT_ARRAY(ii,jj,nn) = PRE
    jj: LAT_INDEX &
    ii: LAT_INDEX &
    nn: LAT_INDEX &
    jj+nn: LAT_INDEX &
    ii<=jj
  THEN
    arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn))
  END;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT: the ii..jj part is copied into the ii-nn..jj-nn part of the
  array (left shift of nn elements).
  **----------------------------------------------------------------------*/ 
  LEFT_SHIFT_ARRAY(ii,jj,nn) = PRE
    jj: LAT_INDEX &
    jj<=MAXINT-1 &
    ii: LAT_INDEX &
    ii<=jj &
    nn: NAT &
    nn<=ii 
  THEN
    arr_vrb:=arr_vrb<+%xx.((xx: LAT_INDEX & (xx+nn): ii..jj) | arr_vrb(xx+nn))
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches an array element equal to vv, scanning the
  ii..jj part, and starting at jj.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv) = PRE
    jj: LAT_INDEX &
    ii: LAT_INDEX &
    ii<=jj &
    vv: LAT_VALUE 
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|arr_vrb)~[{vv}] &
      (sol /= {} => nrr = max(sol)) &
      nbb = bool(sol /= {})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches for an array element equal to vv, scanning the
  ii..jj part, and starting at ii.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv) = PRE
    jj: LAT_INDEX &
    ii: LAT_INDEX &
    ii<=jj &
    vv: LAT_VALUE 
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|arr_vrb)~[{vv}] &
      (sol /= {} => nrr = min(sol)) &
      nbb = bool(sol /= {})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END;
/***** end of part copied from L_ARRAY2 *****/ 

  /*----------------------------------------------------------------------**
  REVERSE: inverts the orders of the ii..jj part.
  **----------------------------------------------------------------------*/ 
  REVERSE_ARRAY(ii,jj) = PRE
    jj: LAT_INDEX &
    ii: LAT_INDEX
  THEN
    arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx))
  END

END
