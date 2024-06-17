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
  L_ARRAY_COLLECTION ( LACOLL_maxobj , LACOLL_INDEX , LACOLL_VALUE )
CONSTRAINTS
  LACOLL_maxobj : 1 .. MAXINT - 1


ABSTRACT_VARIABLES
  arr_col
INVARIANT
  arr_col : ( 1 .. LACOLL_maxobj ) +-> ( LACOLL_INDEX --> LACOLL_VALUE )
INITIALISATION
  arr_col := {}
OPERATIONS

  ii , bb <-- CRE_ARR_COL = ANY nrge , nbb , sol , fct , nac WHERE
    nrge : ( 1 .. LACOLL_maxobj ) &
    nbb : BOOL &
    sol <: ( 1 .. LACOLL_maxobj ) &
    sol = ( 1 .. LACOLL_maxobj ) - dom ( arr_col ) &
    fct : LACOLL_INDEX --> LACOLL_VALUE &
    nac : ( 1 .. LACOLL_maxobj ) +-> ( LACOLL_INDEX --> LACOLL_VALUE ) &
    ( sol = {} => nac = arr_col ) &
    ( sol /= {} => nrge : sol & nac = arr_col \/ { nrge |-> fct } ) &
    nbb = bool ( sol /= {} )
  THEN
    bb := nbb ||
    ii := nrge ||
    arr_col := nac
  END ;

  DEL_ARR_COL ( ii ) = PRE
    ii : ( 1 .. LACOLL_maxobj ) &
    ii : dom ( arr_col )
  THEN
    arr_col := { ii } <<| arr_col
  END ;

  vv <-- VAL_ARR_COL ( ii , jj ) = PRE
    ii : ( 1 .. LACOLL_maxobj ) &
    ii : dom ( arr_col ) &
    jj : LACOLL_INDEX
  THEN
    vv := arr_col ( ii ) ( jj )
  END ;

  STR_ARR_COL ( ii , jj , vv ) = PRE
    ii : ( 1 .. LACOLL_maxobj ) &
    ii : dom ( arr_col ) &
    jj : LACOLL_INDEX &
    vv : LACOLL_VALUE
  THEN
    arr_col ( ii ) ( jj ) := vv
  END ;

  COP_ARR_COL ( dest , src ) = PRE
    dest : ( 1 .. LACOLL_maxobj ) &
    dest : dom ( arr_col ) &
    src : ( 1 .. LACOLL_maxobj ) &
    src : dom ( arr_col )
  THEN
    arr_col := arr_col <+ { dest |-> arr_col ( src ) }
  END ;

  bb <-- CMP_ARR_COL ( range1 , range2 ) = PRE
    range1 : ( 1 .. LACOLL_maxobj ) &
    range1 : dom ( arr_col ) &
    range2 : ( 1 .. LACOLL_maxobj ) &
    range2 : dom ( arr_col )
  THEN
    bb := bool ( arr_col ( range1 ) = arr_col ( range2 ) )
  END
END
