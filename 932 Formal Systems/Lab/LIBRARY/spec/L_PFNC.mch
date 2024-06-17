/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description : L_PFNC modelizes a partial function  
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  pfnc_vrb is a partial function from 0..LPF_maxidx into LPF_minval..LPF_maxval.
  L_PFNC has equivalent operations as L_ARRAY5, except SEARCH_GEQ (search
  for an element greater or equal to a value).
  **----------------------------------------------------------------------*/ 
  L_PFNC(LPF_minval,LPF_maxval,LPF_maxidx)

CONSTRAINTS
  LPF_minval: NAT &
  LPF_maxval: NAT &
  LPF_minval<=LPF_maxval &
  LPF_maxval/=MAXINT &
  LPF_maxidx: NAT1 &
  LPF_maxidx/=MAXINT

DEFINITIONS
  LPF_INDEX == 0..LPF_maxidx;
  LPF_VALUE == LPF_minval..LPF_maxval

VARIABLES
  pfnc_vrb

INVARIANT
  pfnc_vrb: LPF_INDEX +-> LPF_VALUE

INITIALISATION
  pfnc_vrb:={}

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL: returns the value of an element of the partial function range.
  **----------------------------------------------------------------------*/ 
  vv <-- VAL_PFNC(ii) = PRE
    ii: LPF_INDEX &
    ii: dom(pfnc_vrb)
  THEN
    vv:=pfnc_vrb(ii)
  END;

  /*----------------------------------------------------------------------**
  STR: writes an element into the partial function.
  **----------------------------------------------------------------------*/ 
  STR_PFNC(ii,vv) = PRE
    ii: LPF_INDEX &
    vv: LPF_VALUE
  THEN
    pfnc_vrb(ii):=vv
  END;

  /*----------------------------------------------------------------------**
  XST: tests if ii belongs to the partial function range.
  **----------------------------------------------------------------------*/ 
  bb <-- XST_PFNC(ii) = PRE
    ii: LPF_INDEX
  THEN
    bb:=bool(ii: dom(pfnc_vrb))
  END;

  /*----------------------------------------------------------------------**
  RMV: removes an element from the partial function range.
  **----------------------------------------------------------------------*/ 
  RMV_PFNC(ii) = PRE
    ii: LPF_INDEX &
    ii: dom(pfnc_vrb)
  THEN
    pfnc_vrb:={ii}<<|pfnc_vrb
  END;

  /*----------------------------------------------------------------------**
  SET: writes (ii,jj)*{vv} into the partial function.
  **----------------------------------------------------------------------*/ 
  SET_PFNC(ii,jj,vv) = PRE
    ii: NAT &
    jj: NAT &
    jj/=MAXINT &
    ii..jj <: LPF_INDEX &
    vv: LPF_VALUE
  THEN
    pfnc_vrb:=pfnc_vrb<+(ii..jj)*{vv}
  END;

  /*----------------------------------------------------------------------**
  SWAP: swaps 2 elements.
  **----------------------------------------------------------------------*/ 
  SWAP_PFNC(ii,jj) = PRE
    ii: LPF_INDEX &
    ii: dom(pfnc_vrb) &
    jj: LPF_INDEX &
    jj: dom(pfnc_vrb)
  THEN
    pfnc_vrb:=pfnc_vrb<+{ii|->pfnc_vrb(jj),jj|->pfnc_vrb(ii)}
  END;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT: copies the elements indexed by ii..jj into the elements
  indexed by ii+nn..jj+nn (right shift of nn elements).
  **----------------------------------------------------------------------*/ 
  RIGHT_SHIFT_PFNC(ii,jj,nn) = PRE
    jj: NAT &
    ii: NAT &
    nn: NAT &
    jj+nn: LPF_INDEX &
    ii<=jj &
    ii..jj <: dom(pfnc_vrb)
  THEN
    pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii+nn..jj+nn | pfnc_vrb(xx-nn))
  END;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT: copies the elements indexed by ii..jj into the elements
  indexed by ii-nn..jj-nn (left shift of nn elements).
  **----------------------------------------------------------------------*/ 
  LEFT_SHIFT_PFNC(ii,jj,nn) = PRE
    jj: NAT &
    ii: NAT &
    ii<=jj &
    ii..jj <: dom(pfnc_vrb) &
    nn: NAT &
    nn<=ii
  THEN
    pfnc_vrb:=pfnc_vrb<+%xx.(xx: LPF_INDEX & xx+nn: ii..jj | pfnc_vrb(xx+nn))
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MAX_EQL: searches for an array element equal to vv, scanning the
  range ii..jj and starting from jj.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MAX_EQL_PFNC(ii,jj,vv) = PRE
    jj: LPF_INDEX &
    ii: LPF_INDEX &
    ii<=jj &
    vv: LPF_VALUE
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|pfnc_vrb)~[{vv}] &
      (sol/={} => nrr = max(sol)) &
      nbb = bool(sol/={})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL: searches for an array element equal to vv, scanning the
  range ii..jj and starting from ii.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MIN_EQL_PFNC(ii,jj,vv) = PRE
    jj: LPF_INDEX &
    ii: LPF_INDEX &
    ii<=jj &
    vv: LPF_VALUE
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|pfnc_vrb)~[{vv}] &
      (sol/={} => nrr = min(sol)) &
      nbb = bool(sol/={})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END;

  /*----------------------------------------------------------------------**
  REVERSE: inverts the elements of the range ii..jj.
  **----------------------------------------------------------------------*/ 
  REVERSE_PFNC(ii,jj) = PRE
    jj: LPF_INDEX &
    ii: LPF_INDEX &
    ii..jj <: dom(pfnc_vrb)
  THEN
    pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii..jj | pfnc_vrb(jj+ii-xx))
  END;

  /*----------------------------------------------------------------------**
  ASCENDING_SORT: shift sort, in ascending order (the smallest elements
  first) in the range ii..jj.
  **----------------------------------------------------------------------*/ 
  ASCENDING_SORT_PFNC(ii,jj) = PRE
    jj: LPF_INDEX &
    ii: LPF_INDEX &
    ii..jj <: dom(pfnc_vrb)
  THEN
    ANY ff,bb WHERE
      ff: ii..jj >->> ii..jj &
      bb: LPF_INDEX +-> LPF_VALUE &
      bb = (ff;pfnc_vrb) &
      !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1))
    THEN
      pfnc_vrb:=pfnc_vrb<+bb
    END
  END

END
