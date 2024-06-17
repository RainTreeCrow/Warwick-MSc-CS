/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    BASIC_ARITHMETIC1 : Extended integer operations
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  L_ARITHMETIC1
  /*----------------------------------------------------------------------**
  Extended integer operations: MIN, MAX, INC, DEC, EXP, SQRT, LOG.
  **----------------------------------------------------------------------*/

OPERATIONS

  /** Copied part from L_ARITHMETIC **/

  uu <-- MIN ( vv , ww ) = PRE
    vv : NAT &
    ww : NAT
  THEN
    uu := min ( { vv , ww } )
  END ;

  uu <-- MAX ( vv , ww ) = PRE
    vv : NAT &
    ww : NAT
  THEN
    uu := max ( { vv , ww } )
  END ;

  uu <-- INC ( vv ) = PRE
    vv : NAT &
    vv + 1 : NAT
  THEN
    uu := vv + 1
  END ;

  uu <-- DEC ( vv ) = PRE
    vv : NAT1
  THEN
    uu := vv - 1
  END ;

  /*----------------------------------------------------------------------**
  EXP: returns xx power nn. 
  The calculation 0**0 is invalid.
  The implementation uses a fast algorithm based on the decomposition of nn
  in base 2 (log2(nn) iterations)
  **----------------------------------------------------------------------*/
  rr <-- EXP ( xx , nn ) = PRE
    xx : NAT &
    nn : NAT &
    not ( xx = 0 & nn = 0 ) &
    xx ** nn : NAT
  THEN
    rr := xx ** nn
  END ;

  /*----------------------------------------------------------------------**
  SQRT: returns the largest nn such that nn*nn<=pp.
  The implementation uses an algorithm with SQRT(nn) iterations, each
  iteration costs 2 additions and 1 substraction.
  **----------------------------------------------------------------------*/
  nn <-- SQRT ( pp ) = PRE
    pp : NAT
  THEN
    ANY zz WHERE
      zz : NAT &
      zz * zz <= pp &
      ( zz + 1 ) * ( zz + 1 ) > pp
    THEN
      nn := zz
    END
  END ;

  /** end of copied part from L_ARITHMETIC **/

  /*----------------------------------------------------------------------**
  LOG_BY_DEFAULT in base vv of ww: returns the smallest uu such that
  ww<vv**(uu+1). Then vv**uu<=ww, except if ww<vv (example: ww = 0).
  vv = 0 or 1 are invalid values because 0**ii and 1**ii are constant.
  rr is equal to vv**uu, to figure out what is the error.
  **----------------------------------------------------------------------*/
  uu , rr <-- LOG_BY_DEFAULT ( vv , ww ) = PRE
    vv : NAT &
    ww : NAT &
    vv > 1
  THEN
    uu := min ( { xx | xx : NATURAL & ww < vv ** ( xx + 1 ) } ) ||
    rr := vv ** min ( { xx | xx : NATURAL & ww < vv ** ( xx + 1 ) } )
  END ;

  /*----------------------------------------------------------------------**
  LOG_BY_EXCESS in base vv of ww: returns the smallest uu such that
  ww<=vv**uu. WARNING: vv**uu may be greater than MAXINT!
  vv = 0 or 1 are invalid values because 0**ii and 1**ii are constant.
  bb = TRUE if ww = vv**uu.
  **----------------------------------------------------------------------*/
  uu , bb <-- LOG_BY_EXCESS ( vv , ww ) = PRE
    vv : NAT &
    ww : NAT &
    vv > 1
  THEN
    uu := min ( { xx | xx : NATURAL & ww <= vv ** xx } ) ||
    bb := bool ( ww = vv ** min ( { xx | xx : NATURAL & ww <= vv ** xx } ) )
  END

END
