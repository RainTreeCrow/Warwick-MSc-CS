/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :  L_SEQUENCE_RANGE modelizes an array of sequences 
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE

 /*----------------------------------------------------------------------**
  L_SEQUENCE_RANGE: specification with the total function:
  .  seq_rge: LSR_RANGE --> SEQ 
  (where LSR_RANGE = LSR_minrge..LSR_maxrge and SEQ is the set of sequences of LSR_VALUE
   with maximum size LSR_maxsize)
  of a 2 dimensions array of sequences.
  For implementations reasons, LSR_maxrge < MAXINT and LSR_maxsize < MAXINT. 
  LSR_RANGE is the set of line numbers, each line contains a sequence of
  at most maxsize elements from VALUE.
  WARNING: do not value LSR_RANGE with a set containing values strictly below
  0. There is no protection in the current version.
  **----------------------------------------------------------------------*/


  L_SEQUENCE_RANGE ( LSR_minrge , LSR_maxrge , LSR_maxsize , LSR_VALUE )

CONSTRAINTS
  LSR_maxsize : 1 .. MAXINT - 1 &
  LSR_minrge : NAT &
  LSR_maxrge : NAT &
  LSR_maxrge /= MAXINT &
  LSR_minrge < LSR_maxrge




/*  SEQ == {ss | ss: seq(LSR_VALUE) & size(ss)<=LSR_maxsize}*/

ABSTRACT_VARIABLES
  seq_rge

INVARIANT
  seq_rge : ( LSR_minrge .. LSR_maxrge ) --> seq ( LSR_VALUE ) &
  ! rr . ( rr : ( LSR_minrge .. LSR_maxrge ) => size ( seq_rge ( rr ) ) <= LSR_maxsize )

INITIALISATION
  seq_rge : ( seq_rge : ( LSR_minrge .. LSR_maxrge ) --> seq ( LSR_VALUE ) &
  ! rr . ( rr : ( LSR_minrge .. LSR_maxrge ) => size ( seq_rge ( rr ) ) <= LSR_maxsize ) )

OPERATIONS

  /*----------------------------------------------------------------------**
  LEN_SEQ_RGE: returns the size of a sequence.
  **----------------------------------------------------------------------*/
  nn <--  LEN_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge )
  THEN
    nn := size ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  IS_FULL_SEQ_RGE: tests if a sequence is full (size = LSR_maxsize).
  **----------------------------------------------------------------------*/
  bb <-- IS_FULL_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge )
  THEN
    bb := bool ( size ( seq_rge ( range ) ) = LSR_maxsize )
  END ;

  /*----------------------------------------------------------------------**
  IS_INDEX_SEQ_RGE: tests if ii is a valid index.
  sequence.
  **----------------------------------------------------------------------*/
  bb <-- IS_INDEX_SEQ_RGE ( range , ii ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT
  THEN
    bb := bool ( ii : 1 .. size ( seq_rge ( range ) ) )
  END ;

  /*----------------------------------------------------------------------**
  VAL_SEQ_RGE: returns the value of a sequence element.
  **----------------------------------------------------------------------*/
  vv <-- VAL_SEQ_RGE ( range , ii ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 1 .. size ( seq_rge ( range ) )
  THEN
    vv := seq_rge ( range ) ( ii )
  END ;

  /*----------------------------------------------------------------------**
  FIRST_SEQ_RGE: returns the first element of a sequence.
  **----------------------------------------------------------------------*/
  vv <-- FIRST_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    size ( seq_rge ( range ) ) /= 0
  THEN
    vv := first ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  LAST_SEQ_RGE: returns the last element of a sequence.
  **----------------------------------------------------------------------*/
  vv <-- LAST_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    size ( seq_rge ( range ) ) /= 0
  THEN
    vv := last ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  PUSH_SEQ_RGE: adds vv at the end of a sequence.
  **----------------------------------------------------------------------*/
  PUSH_SEQ_RGE ( range , vv ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    vv : LSR_VALUE &
    size ( seq_rge ( range ) ) /= LSR_maxsize
  THEN
    seq_rge ( range ) := seq_rge ( range ) <- vv
  END ;

  /*----------------------------------------------------------------------**
  POP_SEQ_RGE: removes the last element of a sequence (the value is lost).
  **----------------------------------------------------------------------*/
  POP_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    size ( seq_rge ( range ) ) /= 0
  THEN
    seq_rge ( range ) := front ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  STR_SEQ_RGE: mdifies an sequence element.
  **----------------------------------------------------------------------*/
  STR_SEQ_RGE ( range , ii , vv ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 1 .. size ( seq_rge ( range ) ) &
    vv : LSR_VALUE
  THEN
    seq_rge ( range ) ( ii ) := vv
  END ;

  /*----------------------------------------------------------------------**
  RMV_SEQ_RGE : removes an sequence element (the hole is filled).
  **----------------------------------------------------------------------*/
  RMV_SEQ_RGE ( range , ii ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 1 .. size ( seq_rge ( range ) )
  THEN
    seq_rge ( range ) := seq_rge ( range ) /|\ ii - 1 ^ ( seq_rge ( range ) \|/ ii )
  END ;

  /*----------------------------------------------------------------------**
  INS_AFT_SEQ_RGE: inserts vv in a sequence, just after the index ii.
  **----------------------------------------------------------------------*/
  INS_AFT_SEQ_RGE ( range , ii , vv ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 0 .. size ( seq_rge ( range ) ) &
    vv : LSR_VALUE &
    size ( seq_rge ( range ) ) /= LSR_maxsize
  THEN
    seq_rge ( range ) := seq_rge ( range ) /|\ ii ^ [ vv ] ^ ( seq_rge ( range ) \|/ ii )
  END ;

  /*----------------------------------------------------------------------**
  CLR_SEQ_RGE: clears the sequence range.
  **----------------------------------------------------------------------*/
  CLR_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge )
  THEN
    seq_rge ( range ) := <>
  END ;

  /*----------------------------------------------------------------------**
  TAIL_SEQ_RGE: removes the first element of a sequence.
  **----------------------------------------------------------------------*/
  TAIL_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    size ( seq_rge ( range ) ) /= 0
  THEN
    seq_rge ( range ) := tail ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  KEEP_SEQ_RGE: keeps only the first nn elements of a sequence.
  **----------------------------------------------------------------------*/
  KEEP_SEQ_RGE ( range , nn ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    nn : NAT
  THEN
    seq_rge ( range ) := seq_rge ( range ) /|\ min ( { size ( seq_rge ( range ) ) , nn } )
  END ;

  /*----------------------------------------------------------------------**
  CUT_SEQ_RGE: cut out the first nn elements of a sequence.
  **----------------------------------------------------------------------*/
  CUT_SEQ_RGE ( range , nn ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    nn : NAT
  THEN
    seq_rge ( range ) := seq_rge ( range ) \|/ nn
  END ;

  /*----------------------------------------------------------------------**
  PART_SEQ_RGE: keeps only the range of a sequence indexed by ii..jj.
  **----------------------------------------------------------------------*/
  PART_SEQ_RGE ( range , ii , jj ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT1 &
    jj : NAT1 &
    ii <= jj
  THEN
    ANY nseq WHERE
      nseq : seq ( LSR_VALUE ) &
      nseq = % uu . ( uu : NATURAL & uu + ii - 1 : ii .. jj /\ dom ( seq_rge ( range ) ) | seq_rge ( range ) ( uu + ii - 1 ) )
    THEN
      seq_rge ( range ) := nseq
    END
  END ;

  /*----------------------------------------------------------------------**
  REV_SEQ_RGE: inverts a sequence.
  **----------------------------------------------------------------------*/
  REV_SEQ_RGE ( range ) = PRE
    range : ( LSR_minrge .. LSR_maxrge )
  THEN
    seq_rge ( range ) := rev ( seq_rge ( range ) )
  END ;

  /*----------------------------------------------------------------------**
  FIND_FIRST_SEQ_RGE: searches vv in a sequence, from the beginning.
  **----------------------------------------------------------------------*/
  bb , ii <-- FIND_FIRST_SEQ_RGE ( range , vv ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    vv : LSR_VALUE
  THEN
    ANY nii , nbb , sol WHERE
      nii : NAT &
      nbb : BOOL &
      sol = seq_rge ( range ) ~ [ { vv } ] &
      ( sol /= {} => nii = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      ii := nii ||
      bb := nbb
    END
  END ;

  /*----------------------------------------------------------------------**
	FIND_LAST_SEQ_RGE: searches vv in a sequence, from the end.
  **----------------------------------------------------------------------*/
  bb , ii <-- FIND_LAST_SEQ_RGE ( range , vv ) = PRE
    range : ( LSR_minrge .. LSR_maxrge ) &
    vv : LSR_VALUE
  THEN
    ANY nii , nbb , sol WHERE
      nii : NAT &
      nbb : BOOL &
      sol = seq_rge ( range ) ~ [ { vv } ] &
      ( sol /= {} => nii = max ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      ii := nii ||
      bb := nbb
    END
  END ;

 /*----------------------------------------------------------------------**
  COP_SEQ_RGE: copies a sequence into another one.
  **----------------------------------------------------------------------*/
  COP_SEQ_RGE ( dst , src ) = PRE
    dst : ( LSR_minrge .. LSR_maxrge ) &
    src : ( LSR_minrge .. LSR_maxrge )
  THEN
    seq_rge := seq_rge <+ { dst |-> seq_rge ( src ) }
  END ;

 /*----------------------------------------------------------------------**
  CMP_SEQ_RGE: compares 2 sequences.
  **----------------------------------------------------------------------*/
  bb <-- CMP_SEQ_RGE ( rng1 , rng2 ) = PRE
    rng1 : ( LSR_minrge .. LSR_maxrge ) &
    rng2 : ( LSR_minrge .. LSR_maxrge )
  THEN
    bb := bool ( seq_rge ( rng1 ) = seq_rge ( rng2 ) )
  END ;

 /*----------------------------------------------------------------------**
  PCOP_SEQ_RGE: copies a range of a sequence indexed by ii..jj into another
  one, at a given index (starting at idx).
  **----------------------------------------------------------------------*/
  PCOP_SEQ_RGE ( dst , idx , src , ii , jj ) = PRE
    dst : ( LSR_minrge .. LSR_maxrge ) &
    idx : NAT &
    idx : 1 .. size ( seq_rge ( dst ) ) + 1 &
    src : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 1 .. size ( seq_rge ( src ) ) &
    jj : NAT &
    jj : 1 .. size ( seq_rge ( src ) ) &
    dst /= src &
    jj <= MAXINT - 1 &
    ii <= jj &
    idx + jj - ii : 1 .. LSR_maxsize
  THEN
    seq_rge ( dst ) := seq_rge ( dst ) <+ % xx . ( xx : idx .. idx + jj - ii | seq_rge ( src ) ( xx + ii - idx ) )
  END ;

 /*----------------------------------------------------------------------**
  PCMP_SEQ_RGE: partially compares 2 sequences. Searches for the first
  element that differs between the range ii..jj of the sequence 
  seq_rge(rng1) and the range starting at kk of the sequence seq_rge(rng2).
  The boolean bb is true if the serch succeeds, and in this case, the index
  idx of this element (included between ii and jj) is returned.
  **----------------------------------------------------------------------*/
  idx , bb <-- PCMP_SEQ_RGE ( rng1 , ii , jj , rng2 , kk ) = PRE
    rng1 : ( LSR_minrge .. LSR_maxrge ) &
    rng2 : ( LSR_minrge .. LSR_maxrge ) &
    ii : NAT &
    ii : 1 .. size ( seq_rge ( rng1 ) ) &
    jj : NAT &
    jj : 1 .. size ( seq_rge ( rng1 ) ) &
    ii <= jj &
    kk : NAT &
    kk : 1 .. size ( seq_rge ( rng2 ) ) &
    kk + jj - ii : 1 .. size ( seq_rge ( rng2 ) )
  THEN
    ANY nidx , nbb , sol WHERE
      nidx : NAT &
      nbb : BOOL &
      sol = { xx | xx : ii .. jj & seq_rge ( rng1 ) ( xx ) /= seq_rge ( rng2 ) ( xx + kk - ii ) } &
      ( sol /= {} => nidx = min ( sol ) ) &
      nbb = bool ( sol /= {} )
    THEN
      idx := nidx ||
      bb := nbb
    END
  END


END
