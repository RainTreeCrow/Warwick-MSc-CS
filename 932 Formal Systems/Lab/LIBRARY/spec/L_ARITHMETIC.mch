/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    L_ARITHMETIC : advanced arithmetic functions
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  L_ARITHMETIC

OPERATIONS

  uu <-- MIN(vv,ww) = PRE
    vv: NAT &
    ww: NAT
  THEN
    uu:=min({vv,ww})
  END;

  uu <-- MAX(vv,ww) = PRE
    vv: NAT &
    ww: NAT
  THEN
    uu:=max({vv,ww})
  END;

  uu <-- INC(vv) = PRE
    vv: NAT &
    vv+1: NAT
  THEN
    uu:=vv+1
  END;

  uu <-- DEC(vv) = PRE
    vv: NAT1
  THEN
    uu:=vv-1
  END;

  rr <-- EXP(xx,nn) = PRE
    xx: NAT &
    nn: NAT &
    not(xx = 0 & nn = 0) &
    xx**nn: NAT
  THEN
    rr:=xx**nn
  END;

  /*----------------------------------------------------------------------**
  LOG_BY_DEFAULT in base vv of ww: returns uu such that
  vv**uu<=ww<vv**(uu+1).
  vv = 0 and vv = 1 are invalid because 0**ii et 1**ii are constant,
  and ww = 0 is invalid because the powers of vv are always greater than 1.
  **----------------------------------------------------------------------*/ 
  uu,rr <-- LOG_BY_DEFAULT1(vv,ww) = PRE
    vv: NAT &
    ww: NAT1 &
    vv>1 &
    vv<=ww
  THEN
    ANY zz WHERE
      zz: NAT &
      vv**zz<=ww &
      vv**(zz+1)>ww
    THEN
      uu:=zz ||
      rr:=vv**zz
    END
  END;

  nn <-- SQRT(pp) = PRE
    pp: NAT
  THEN
    ANY zz WHERE
      zz: NAT &
      zz*zz<=pp &
      (zz+1)*(zz+1)>pp
    THEN
      nn:=zz
    END
  END

END
