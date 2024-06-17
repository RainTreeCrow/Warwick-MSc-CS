/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description : L_ARRAY3_RANGE modelizes a 2 dimensions array
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  L_ARRAY3_RANGE: specification of a 2 dimensions array by the total
  function:
  .  arr_rge: LATR_RANGE --> (LATR_INDEX --> LATR_VALUE)
  where LATR_RANGE = LATR_minrge..LATR_maxrge, LATR_INDEX = 0..LATR_maxidx.
  LATR_RANGE is the line numbers set, LATR_INDEX is the row numbers set, LATR_VALUE is the
  possible values set in an array element. Operations on elements groups
  can be performed by choosing interval indexes for LATR_RANGE and LATR_INDEX.
  L_ARRAY3_RANGE adds to L_ARRAY2_RANGE an operation that inverts elements
  of a part of a line.
  **----------------------------------------------------------------------*/ 
  L_ARRAY3_RANGE(LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE)

  /***** copied part from L_ARRAY2_RANGE *****/ 
CONSTRAINTS
  LATR_maxidx: NAT1 &
  LATR_minrge: NAT &
  LATR_maxrge: NAT &
  LATR_minrge<LATR_maxrge

DEFINITIONS
  LATR_RANGE == LATR_minrge..LATR_maxrge;
  LATR_INDEX == 0..LATR_maxidx
  
VARIABLES
  arr_rge

INVARIANT
  arr_rge: LATR_RANGE --> (LATR_INDEX --> LATR_VALUE)

INITIALISATION
  arr_rge:: LATR_RANGE --> (LATR_INDEX --> LATR_VALUE) 

OPERATIONS

  /*----------------------------------------------------------------------**
  VAL_ARR_RGE: returns the value of an array element.
  **----------------------------------------------------------------------*/ 
  value <-- VAL_ARR_RGE(range,index) = PRE
    range: LATR_RANGE &
    index: LATR_INDEX
  THEN
    value:=arr_rge(range)(index)
  END;

  /*----------------------------------------------------------------------**
  STR_ARR_RGE: writes into an array element.
  **----------------------------------------------------------------------*/ 
  STR_ARR_RGE(range,index,value) = PRE
    range: LATR_RANGE &
    index: LATR_INDEX &
    value: LATR_VALUE
  THEN
    arr_rge(range)(index):=value
  END;

  /*----------------------------------------------------------------------**
  COP_ARR_RGE: copies an array line into another one.
  **----------------------------------------------------------------------*/ 
  COP_ARR_RGE(dest,src) = PRE
    dest: LATR_RANGE &
    src: LATR_RANGE
  THEN
    arr_rge:=arr_rge<+{dest|->arr_rge(src)}
  END;

  /*----------------------------------------------------------------------**
  CMP_ARR_RGE: compares 2 array lines.
  **----------------------------------------------------------------------*/ 
  bb <-- CMP_ARR_RGE(range1,range2) = PRE
    range1: LATR_RANGE &
    range2: LATR_RANGE
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
	dest1..dest2 <: LATR_RANGE &
	src: LATR_RANGE
  THEN
	arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)}
  END;
	

  /*----------------------------------------------------------------------**
  SET_ARR_RGE: copies a value into an index interval of an array line.
  **----------------------------------------------------------------------*/ 
  SET_ARR_RGE(range,ii,jj,vv) = PRE
	range: LATR_RANGE &
	ii: NAT &
	jj: NAT &
	jj/= MAXINT &
	ii..jj <: LATR_INDEX &
	vv: LATR_VALUE
  THEN
	arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv}
  END;

  /*----------------------------------------------------------------------**
  PCOP_ARR_RGE: copies the ii..jj part of a line into another one at
  a given index (starting at idx_dst). The 2 lines must be different.
  **----------------------------------------------------------------------*/
  PCOP_ARR_RGE(dest,idx_dst,src,ii,jj) = PRE
	dest: LATR_RANGE &
	idx_dst: LATR_INDEX &
	src: LATR_RANGE &
	ii: LATR_INDEX &
	jj: LATR_INDEX &
	dest/=src &
	jj<=MAXINT-1 &
	ii<=jj &
	idx_dst+jj-ii: LATR_INDEX
  THEN
	arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst))
  END;

  /*----------------------------------------------------------------------**
  PCMP_ARR_RGE: searches for the first different element in the ii..jj part
  of the line rng1 and the part of the line rng2 starting at index idx2.
  The boolean bb is true if the searc succeeds, and in this case, the index
  idx of this element (included between ii and jj) is returned.
  **----------------------------------------------------------------------*/
  idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj) = PRE
    rng2: LATR_RANGE &
    idx2: LATR_INDEX &
    rng1: LATR_RANGE &
    ii: LATR_INDEX &
    jj: LATR_INDEX &
    ii<=jj &
    idx2+jj-ii: LATR_INDEX
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

  /*----------------------------------------------------------------------**
  SWAP_RGE : echange de deux elements d'une ligne.
  **----------------------------------------------------------------------*/ 
  SWAP_RGE(rng,ii,jj) = PRE
	rng: LATR_RANGE &
    ii: LATR_INDEX &
    jj: LATR_INDEX
  THEN
    arr_rge(rng):=arr_rge(rng)<+{ii|->arr_rge(rng)(jj),jj|->arr_rge(rng)(ii)}
  END;

  /*----------------------------------------------------------------------**
  RIGHT_SHIFT_RGE: the ii..jj part of the line rng is copied into the
  ii+nn..jj+nn part of the line (right shift of nn elements).
  **----------------------------------------------------------------------*/ 
  RIGHT_SHIFT_RGE(rng,ii,jj,nn) = PRE
	rng: LATR_RANGE &
    jj: LATR_INDEX &
    ii: LATR_INDEX &
    nn: LATR_INDEX &
    jj+nn: LATR_INDEX &
    ii<=jj
  THEN
    arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii+nn..jj+nn | arr_rge(rng)(xx-nn))
  END;

  /*----------------------------------------------------------------------**
  LEFT_SHIFT_RGE: the ii..jj part of the line rng is copied into the
  ii-nn..jj-nn part of the line (left shift of nn elements).
  **----------------------------------------------------------------------*/ 
  LEFT_SHIFT_RGE(rng,ii,jj,nn) = PRE
	rng: LATR_RANGE &
    jj: LATR_INDEX &
    jj<=MAXINT-1 &
    ii: LATR_INDEX &
    ii<=jj &
    nn: NAT &
    nn<=ii 
  THEN
    arr_rge(rng):=arr_rge(rng)<+%xx.((xx: LATR_INDEX & (xx+nn): ii..jj) | arr_rge(rng)(xx+nn))
  END;

  /*----------------------------------------------------------------------**
  SEARCH_MIN_EQL_RGE: searches for an element of the line rng equal to vv, 
  scanning the ii..jj range starting at ii.
  **----------------------------------------------------------------------*/ 
  rr,bb <-- SEARCH_MIN_EQL_RGE(rng,ii,jj,vv) = PRE
	rng: LATR_RANGE &
    jj: LATR_INDEX &
    ii: LATR_INDEX &
    ii<=jj &
    vv: LATR_VALUE 
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
	rng: LATR_RANGE &
    jj: LATR_INDEX &
    ii: LATR_INDEX &
    ii<=jj &
    vv: LATR_VALUE 
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
  END;

  /***** end of copied part from L_ARRAY2_RANGE *****/

  /*----------------------------------------------------------------------**
  REVERSE_RGE: inverts line elements at indexes ii..jj.
  **----------------------------------------------------------------------*/ 
  REVERSE_RGE(rng,ii,jj) = PRE
	rng: LATR_RANGE &
    jj: LATR_INDEX &
    ii: LATR_INDEX
  THEN
    arr_rge(rng):=arr_rge(rng)<+%xx.(xx: ii..jj | arr_rge(rng)(jj+ii-xx))
  END


END

