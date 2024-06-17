/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY2_RANGE modelizes a 2 dimensions array
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  L_ARRAY2_RANGE: representation of a 2 dimensions array by the total
  function:
  .  arr_rge: LADR_RANGE --> (LADR_INDEX --> LADR_VALUE)
  where LADR_RANGE = LADR_minrge..LADR_maxrge, LADR_INDEX = 0..LADR_maxidx.
  LADR_RANGE is the line numbers set and LADR_INDEX is the row numbers set, LADR_VALUE is
  the possible values set for an array element. Operations on elements
  groups can be performed by choosing intervals values for LADR_RANGE and LADR_INDEX.
  L_ARRAY2_RANGE has extended operations that L_ARRAY1_RANGE does not have. 
  **----------------------------------------------------------------------*/ 
  L_ARRAY2_RANGE(LADR_minrge,LADR_maxrge,LADR_maxidx,LADR_VALUE)

CONSTRAINTS
  LADR_maxidx: NAT1 &
  LADR_minrge: NAT &
  LADR_maxrge: NAT &
  LADR_minrge<LADR_maxrge

DEFINITIONS
  LADR_RANGE == LADR_minrge..LADR_maxrge;
  LADR_INDEX == 0..LADR_maxidx
  
VARIABLES
  arr_rge

INVARIANT
  arr_rge: LADR_RANGE --> (LADR_INDEX --> LADR_VALUE)

INITIALISATION
  arr_rge:: LADR_RANGE --> (LADR_INDEX --> LADR_VALUE) 

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL_ARR_RGE: returns the value of an array element.
  **----------------------------------------------------------------------*/ 
  value <-- VAL_ARR_RGE(range,index) = PRE
    range: LADR_RANGE &
    index: LADR_INDEX
  THEN
    value:=arr_rge(range)(index)
  END;

  /*----------------------------------------------------------------------**
  STR_ARR_RGE: writes into an array element.
  **----------------------------------------------------------------------*/ 
  STR_ARR_RGE(range,index,value) = PRE
    range: LADR_RANGE &
    index: LADR_INDEX &
    value: LADR_VALUE
  THEN
    arr_rge(range)(index):=value
  END;

  /*----------------------------------------------------------------------**
  COP_ARR_RGE: copies an array line into another one.
  **----------------------------------------------------------------------*/ 
  COP_ARR_RGE(dest,src) = PRE
    dest: LADR_RANGE &
    src: LADR_RANGE
  THEN
    arr_rge:=arr_rge<+{dest|->arr_rge(src)}
  END;

  /*----------------------------------------------------------------------**
  CMP_ARR_RGE: compares 2 array lines.
  **----------------------------------------------------------------------*/ 
  bb <-- CMP_ARR_RGE(range1,range2) = PRE
    range1: LADR_RANGE &
    range2: LADR_RANGE
  THEN
    bb:=bool(arr_rge(range1) = arr_rge(range2))
  END;


  /*----------------------------------------------------------------------**
  DUP_ARR_RGE: copies an array line into a sequence of following lines.
  **----------------------------------------------------------------------*/
  DUP_ARR_RGE(dest1,dest2,src) = PRE
	dest1: NAT &
	dest2: NAT &
	dest2/= MAXINT &
	dest1..dest2 <: LADR_RANGE &
	src: LADR_RANGE
  THEN
	arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)}
  END;
	

  /*----------------------------------------------------------------------**
  SET_ARR_RGE: copies a value into an index interval of an array line.
  **----------------------------------------------------------------------*/ 
  SET_ARR_RGE(range,ii,jj,vv) = PRE
	range: LADR_RANGE &
	ii: NAT &
	jj: NAT &
	jj/= MAXINT &
	ii..jj <: LADR_INDEX &
	vv: LADR_VALUE
  THEN
	arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv}
  END;

  /*----------------------------------------------------------------------**
  PCOP_ARR_RGE: copies the ii..jj range of a line into another one at
  a given index (starting at idx_dst). The 2 lines must be different.
  **----------------------------------------------------------------------*/
  PCOP_ARR_RGE(dest,idx_dst,src,ii,jj) = PRE
	dest: LADR_RANGE &
	idx_dst: LADR_INDEX &
	src: LADR_RANGE &
	ii: LADR_INDEX &
	jj: LADR_INDEX &
	dest/=src &
	jj<=MAXINT-1 &
	ii<=jj &
	idx_dst+jj-ii: LADR_INDEX
  THEN
	arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst))
  END;

  /*----------------------------------------------------------------------**
  PCMP_ARR_RGE: searches for the first different element in the ii..jj range
  of the line rng1 and the range of the line rng2 starting at index idx2.
  The boolean bb is true if the searc succeeds, and in this case, the index
  idx of this element (included between ii and jj) is returned.
  **----------------------------------------------------------------------*/
  idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj) = PRE
    rng2: LADR_RANGE &
    idx2: LADR_INDEX &
    rng1: LADR_RANGE &
    ii: LADR_INDEX &
    jj: LADR_INDEX &
    ii<=jj &
    idx2+jj-ii: LADR_INDEX
  THEN
    ANY nidx,nbb,sol WHERE
      nidx: NAT &
      nbb: BOOL &
      sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} &
      (sol/={} => nidx = min(sol)) &
      nbb = bool(sol/={})
    THEN
      idx:=nidx ||
      bb:=nbb
    END
  END;

 /***** end of the part copied from L_ARRAY1_RANGE *****/

  /*----------------------------------------------------------------------**
  SWAP_RGE : echange de deux elements d'une ligne.
  **----------------------------------------------------------------------*/ 
  SWAP_RGE(rng,ii,jj) = PRE
	rng: LADR_RANGE &
    ii: LADR_INDEX &
    jj: LADR_INDEX
  THEN
    arr_rge(rng):=arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)}
  END;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT_RGE: the ii..jj range of the line rng is copied into the
  ii+nn..jj+nn range of the line (right shift of nn elements).
  **----------------------------------------------------------------------*/ 
  RIGHT_SHIFT_RGE(rng,ii,jj,nn) = PRE
	rng: LADR_RANGE &
    jj: LADR_INDEX &
    ii: LADR_INDEX &
    nn: LADR_INDEX &
    jj+nn: LADR_INDEX &
    ii<=jj
  THEN
    arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn))
  END;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT_RGE: the ii..jj range of the line rng is copied into the
  ii-nn..jj-nn range of the line (left shift of nn elements).
  **----------------------------------------------------------------------*/ 
  LEFT_SHIFT_RGE(rng,ii,jj,nn) = PRE
	rng: LADR_RANGE &
    jj: LADR_INDEX &
    jj<=MAXINT-1 &
    ii: LADR_INDEX &
    ii<=jj &
    nn: NAT &
    nn<=ii 
  THEN
    arr_rge(rng):=arr_rge(rng)<+%xx.((xx: LADR_INDEX & (xx+nn): ii..jj) | arr_rge(rng)(xx+nn))
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL_RGE: searches for an element of the line rng equal to vv, 
  scanning the ii..jj range starting at ii.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv) = PRE
	rng: LADR_RANGE &
    jj: LADR_INDEX &
    ii: LADR_INDEX &
    ii<=jj &
    vv: LADR_VALUE 
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|arr_rge(rng))~[{vv}] &
      (sol /= {} => nrr = min(sol)) &
      nbb = bool(sol /= {})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL_RGE: searches for an element of the line rng equal to vv, 
  scanning the ii..jj range starting at jj.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MAX_EQL_RGE(rng,ii,jj,vv) = PRE
	rng: LADR_RANGE &
    jj: LADR_INDEX &
    ii: LADR_INDEX &
    ii<=jj &
    vv: LADR_VALUE 
  THEN
    ANY nrr,nbb,sol WHERE
      nrr: NAT &
      nbb: BOOL &
      sol = (ii..jj<|arr_rge(rng))~[{vv}] &
      (sol /= {} => nrr = max(sol)) &
      nbb = bool(sol /= {})
    THEN
      rr:=nrr ||
      bb:=nbb
    END
  END


END

