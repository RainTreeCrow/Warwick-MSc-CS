/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY5 modelizes a total function
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  arr_vrb is a total function from 0..LAC_maxidx into LAC_minval..LAC_maxval.
  Since the 2 sets are intervals, operations on elements order can be
  defined.
  **----------------------------------------------------------------------*/ 
  L_ARRAY5(LAC_minval,LAC_maxval,LAC_maxidx)

CONSTRAINTS
  /***** copied part from L_ARRAY4 *****/ 
  LAC_minval: NAT &
  LAC_maxval: NAT &
  LAC_maxidx: NAT1 &
  LAC_minval<=LAC_maxval

DEFINITIONS
  LAC_INDEX == 0..LAC_maxidx;
  LAC_VALUE == LAC_minval..LAC_maxval

VARIABLES
  /***** copied part from L_ARRAY3 *****/ 
  arr_vrb

INVARIANT
  arr_vrb: LAC_INDEX --> LAC_VALUE

INITIALISATION
  arr_vrb:: LAC_INDEX --> LAC_VALUE

OPERATIONS

  vv <-- VAL_ARRAY(ii) = PRE
    ii: LAC_INDEX
  THEN
    vv:=arr_vrb(ii)
  END;

  STR_ARRAY(ii,vv) = PRE
    ii: LAC_INDEX &
    vv: LAC_VALUE
  THEN
    arr_vrb(ii):=vv
  END;

  SET_ARRAY(ii,jj,vv) = PRE
    ii: NAT &
    jj: NAT &
    jj/= MAXINT &
    ii..jj <: LAC_INDEX &
    vv: LAC_VALUE
  THEN
    arr_vrb:=arr_vrb<+(ii..jj)*{vv}
  END;

  /*----------------------------------------------------------------------**
  SWAP: swap 2 elements.
  **----------------------------------------------------------------------*/ 
  SWAP_ARRAY(ii,jj) = PRE
    ii: LAC_INDEX &
    jj: LAC_INDEX
  THEN
    arr_vrb:=arr_vrb<+{ii|->arr_vrb(jj),jj|->arr_vrb(ii)}
  END;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT: the ii..jj range is copied into the ii+nn..jj+nn range of the
  array (right shift of nn elements).
  **----------------------------------------------------------------------*/ 
  RIGHT_SHIFT_ARRAY(ii,jj,nn) = PRE
    jj: LAC_INDEX &
    ii: LAC_INDEX &
    nn: LAC_INDEX &
    jj+nn: LAC_INDEX &
    ii<=jj
  THEN
    arr_vrb:=arr_vrb<+%xx.(xx: ii+nn..jj+nn | arr_vrb(xx-nn))
  END;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT: the ii..jj range is copied into the ii-nn..jj-nn range of the
  array (left shift of nn elements).
  **----------------------------------------------------------------------*/ 
  LEFT_SHIFT_ARRAY(ii,jj,nn) = PRE
    jj: LAC_INDEX &
    jj<=MAXINT-1 &
    ii: LAC_INDEX &
    ii<=jj &
    nn: NAT &
    nn<=ii 
  THEN
    arr_vrb:=arr_vrb<+%xx.((xx: LAC_INDEX & (xx+nn): ii..jj) | arr_vrb(xx+nn))
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches an array element equal to vv, scans the
  ii..jj range, and starts at jj.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv) = PRE
    jj: LAC_INDEX &
    ii: LAC_INDEX &
    ii<=jj &
    vv: LAC_minval..LAC_maxval 
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
    jj: LAC_INDEX &
    ii: LAC_INDEX &
    ii<=jj &
    vv: LAC_VALUE 
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

  /*----------------------------------------------------------------------**
  REVERSE: inverts the orders of the ii..jj part.
  **----------------------------------------------------------------------*/ 
  REVERSE_ARRAY(ii,jj) = PRE
    jj: LAC_INDEX &
    ii: LAC_INDEX
  THEN
    arr_vrb:=arr_vrb<+%xx.(xx: ii..jj | arr_vrb(jj+ii-xx))
  END;

  /***** end of copied part from L_ARRAY3 *****/ 

  /*----------------------------------------------------------------------**
  SEARCH_MIN_GEQ: searches an element greater or equal to vv in jj..kk
  starting at jj.
  **----------------------------------------------------------------------*/ 
  ii,bb <-- SEARCH_MIN_GEQ_ARRAY(jj,kk,vv) = PRE
    kk: LAC_INDEX &
    kk/= MAXINT &
    jj: LAC_INDEX &
    vv: LAC_VALUE &
    jj<=kk
  THEN
    LET res BE
      res = min({xx | xx: jj..kk &
      arr_vrb(xx)>=vv}\/{kk+1})
    IN
      ii:=res ||
      bb:=bool(res/=kk+1)
    END
  END;

  /***** end of copied part from L_ARRAY4 *****/ 
  
  /*----------------------------------------------------------------------**
  ASCENDING_SORT: shift sort, in ascending order (smallest elements first)
  of the indexed part ii..jj.
  **----------------------------------------------------------------------*/ 
  ASCENDING_SORT_ARRAY(ii,jj) = PRE
    jj: LAC_INDEX &
    jj<=MAXINT-1 &
    ii: LAC_INDEX &
    ii<=MAXINT-1
  THEN
    ANY ff,bb WHERE
      ff: ii..jj >->> ii..jj &
      bb: LAC_INDEX +-> LAC_VALUE &
      bb = (ff;arr_vrb) &
      !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1))
    THEN
      arr_vrb:=arr_vrb<+bb
    END
  END

END
