/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :  L_SEQUENCE modelizes a sequence of elements 
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  /*----------------------------------------------------------------------**
  seq_vrb is a sequence of elements from VALUE, its maximum size is LS_maxsize.
  **----------------------------------------------------------------------*/
  L_SEQUENCE ( LS_maxsize , LS_VALUE )

CONSTRAINTS
  LS_maxsize : 1 .. MAXINT - 1

ABSTRACT_VARIABLES
  seq_vrb

INVARIANT
  seq_vrb : seq ( LS_VALUE ) &
  size ( seq_vrb ) <= LS_maxsize

INITIALISATION
  seq_vrb := <>

OPERATIONS

  /*----------------------------------------------------------------------**
  LEN_SEQ: returns the size of the sequence.
  **----------------------------------------------------------------------*/
  nn <-- LEN_SEQ = nn := size ( seq_vrb ) ;

  /*----------------------------------------------------------------------**
  IS_FULL_SEQ: tests if the sequence is full (size = LS_maxsize).
  **----------------------------------------------------------------------*/
  bb <-- IS_FULL_SEQ = bb := bool ( size ( seq_vrb ) = LS_maxsize ) ;

  /*----------------------------------------------------------------------**
  IS_INDEX_SEQ: tests if ii is a valid index.
  **----------------------------------------------------------------------*/
  bb <-- IS_INDEX_SEQ ( ii ) = PRE
    ii : NAT
  THEN
    bb := bool ( ii : 1 .. size ( seq_vrb ) )
  END ;

  /*----------------------------------------------------------------------**
  VAL_SEQ: returns the value of a sequence element.
  **----------------------------------------------------------------------*/
  vv <-- VAL_SEQ ( ii ) = PRE
    ii : NAT &
    ii : 1 .. size ( seq_vrb )
  THEN
    vv := seq_vrb ( ii )
  END ;

  /*----------------------------------------------------------------------**
  FIRST_SEQ: returns the first sequence element.
  **----------------------------------------------------------------------*/
  vv <-- FIRST_SEQ = PRE
    size ( seq_vrb ) /= 0
  THEN
    vv := first ( seq_vrb )
  END ;

  /*----------------------------------------------------------------------**
  LAST_SEQ: returns the last sequence element.
  **----------------------------------------------------------------------*/
  vv <-- LAST_SEQ = PRE
    size ( seq_vrb ) /= 0
  THEN
    vv := last ( seq_vrb )
  END ;

  /*----------------------------------------------------------------------**
  PUSH_SEQ: adds vv at the end of the sequence.
  **----------------------------------------------------------------------*/
  PUSH_SEQ ( vv ) = PRE
    vv : LS_VALUE &
    size ( seq_vrb ) /= LS_maxsize
  THEN
    seq_vrb := seq_vrb <- vv
  END ;

  /*----------------------------------------------------------------------**
  POP_SEQ: removes the last sequence element (its value is lost).
  **----------------------------------------------------------------------*/
  POP_SEQ = PRE
    size ( seq_vrb ) /= 0
  THEN
    seq_vrb := front ( seq_vrb )
  END ;

  /*----------------------------------------------------------------------**
  STR_SEQ: writes the value of a sequence element.
  **----------------------------------------------------------------------*/
  STR_SEQ ( ii , vv ) = PRE
    ii : NAT &
    ii : 1 .. size ( seq_vrb ) &
    vv : LS_VALUE
  THEN
    seq_vrb ( ii ) := vv
  END ;

  /*----------------------------------------------------------------------**
  RMV_SEQ: removes a sequence element (the hole is filled).
  **----------------------------------------------------------------------*/
  RMV_SEQ ( ii ) = PRE
    ii : NAT &
    ii : 1 .. size ( seq_vrb )
  THEN
    seq_vrb := seq_vrb /|\ ii - 1 ^ ( seq_vrb \|/ ii )
  END ;

  /*----------------------------------------------------------------------**
  INS_AFT_SEQ: inverts vv just after index ii.
  **----------------------------------------------------------------------*/
  INS_AFT_SEQ ( ii , vv ) = PRE
    ii : NAT &
    ii : 0 .. size ( seq_vrb ) &
    vv : LS_VALUE &
    size ( seq_vrb ) /= LS_maxsize
  THEN
    seq_vrb := seq_vrb /|\ ii ^ [ vv ] ^ ( seq_vrb \|/ ii )
  END ;

  /*----------------------------------------------------------------------**
  CLR_SEQ: clears the sequence.
  **----------------------------------------------------------------------*/
  CLR_SEQ = BEGIN
    seq_vrb := <>
  END ;

  /*----------------------------------------------------------------------**
  TAIL_SEQ: remove the fist element of the sequence.
  **----------------------------------------------------------------------*/
  TAIL_SEQ = PRE
    size ( seq_vrb ) /= 0
  THEN
    seq_vrb := tail ( seq_vrb )
  END ;

  /*----------------------------------------------------------------------**
  KEEP_SEQ: keeps the first nn sequence elements.
  **----------------------------------------------------------------------*/
  KEEP_SEQ ( nn ) = PRE
    nn : NAT
  THEN
    seq_vrb := seq_vrb /|\ min ( { size ( seq_vrb ) , nn } )
  END ;

  /*----------------------------------------------------------------------**
  CUT_SEQ: cuts out the first nn sequence elements.
  **----------------------------------------------------------------------*/
  CUT_SEQ ( nn ) = PRE
    nn : NAT
  THEN
    seq_vrb := seq_vrb \|/ nn
  END ;

  /*----------------------------------------------------------------------**
  PART_SEQ: keeps only the sequence elements indexed by ii..jj.
  **----------------------------------------------------------------------*/
  PART_SEQ ( ii , jj ) = PRE
    ii : NAT1 &
    jj : NAT1 &
    ii <= jj
  THEN
    ANY nseq WHERE
      nseq : seq ( LS_VALUE ) &
      nseq = % uu . ( uu : NATURAL & uu + ii - 1 : ii .. jj /\ dom ( seq_vrb ) | seq_vrb ( uu + ii - 1 ) )
    THEN
      seq_vrb := nseq
    END
  END ;

  /*----------------------------------------------------------------------**
  REV_SEQ: inverts the elements of the sequence.
  **----------------------------------------------------------------------*/
  REV_SEQ = BEGIN
    seq_vrb := rev ( seq_vrb )
  END ;

  /*----------------------------------------------------------------------**
  FIND_FIRST_SEQ: searches for vv in the sequence, starting at the
  beginning.
  **----------------------------------------------------------------------*/
  bb , ii <-- FIND_FIRST_SEQ ( vv ) = PRE
    vv : LS_VALUE
  THEN
    ANY nii , nbb , sol WHERE
      nii : NAT &
      nbb : BOOL &
      sol = seq_vrb ~ [ { vv } ] &
      ( sol /= {} => nii = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      ii := nii ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
  FIND_LAST_SEQ: searches for vv in the sequence, starting from the end.
  **----------------------------------------------------------------------*/
  bb , ii <-- FIND_LAST_SEQ ( vv ) = PRE
    vv : LS_VALUE
  THEN
    ANY nii , nbb , sol WHERE
      nii : NAT &
      nbb : BOOL &
      sol = seq_vrb ~ [ { vv } ] &
      ( sol /= {} => nii = max ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      ii := nii ||
      bb := nbb
    END
  END

END
