/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARRAY_COLLECTION modelizes a 2 dimensions array
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  L_ARRAY_COLLECTION(LACOLL_maxobj,LACOLL_INDEX,LACOLL_VALUE)
CONSTRAINTS
  LACOLL_maxobj: 1..MAXINT-1
DEFINITIONS
  LACOLL_RANGE == (1..LACOLL_maxobj)
VARIABLES
  arr_col
INVARIANT
  arr_col: LACOLL_RANGE +-> (LACOLL_INDEX --> LACOLL_VALUE)
INITIALISATION
  arr_col:= {}
OPERATIONS
 
  ii,bb <-- CRE_ARR_COL = ANY nrge,nbb,sol,fct,nac WHERE
    nrge: LACOLL_RANGE &
    nbb: BOOL &
	sol <: LACOLL_RANGE &
    sol = LACOLL_RANGE-dom(arr_col) &
    fct: LACOLL_INDEX --> LACOLL_VALUE &
    nac: LACOLL_RANGE +-> (LACOLL_INDEX --> LACOLL_VALUE) &
    (sol = {} => nac = arr_col) &
    (sol/={} => nrge: sol & nac = arr_col\/{nrge|->fct}) &
    nbb = bool(sol/={})
  THEN
    bb:=nbb ||
    ii:=nrge ||
    arr_col:=nac
  END;

  DEL_ARR_COL(ii) = PRE
    ii: LACOLL_RANGE &
    ii: dom(arr_col)
  THEN
    arr_col:={ii}<<|arr_col
  END;

  vv <-- VAL_ARR_COL(ii,jj) = PRE
    ii: LACOLL_RANGE &
    ii: dom(arr_col) &
    jj: LACOLL_INDEX
  THEN
    vv:=arr_col(ii)(jj)
  END;

  STR_ARR_COL(ii,jj,vv) = PRE
    ii: LACOLL_RANGE &
    ii: dom(arr_col) &
    jj: LACOLL_INDEX &
    vv: LACOLL_VALUE
  THEN
    arr_col(ii)(jj):=vv
  END;

  COP_ARR_COL(dest,src) = PRE
    dest: LACOLL_RANGE &
    dest: dom(arr_col) &
    src: LACOLL_RANGE &
    src: dom(arr_col)
  THEN
    arr_col:=arr_col<+{dest|->arr_col(src)}
  END;

  bb <-- CMP_ARR_COL(range1,range2) = PRE
    range1: LACOLL_RANGE &
    range1: dom(arr_col) &
    range2: LACOLL_RANGE &
    range2: dom(arr_col)
  THEN
    bb:=bool(arr_col(range1) = arr_col(range2))
  END
END
