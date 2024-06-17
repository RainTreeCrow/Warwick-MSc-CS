/******************************* CLEARSY *************************************
* File : $Id: $
* (C) 1998 CLEARSY
*
* Description :    BASIC_IO : definition of input and output functions
*
*
* History : $Log: $
*
******************************************************************************/
MACHINE
  BASIC_IO

DEFINITIONS
  CHAR == 0..255

OPERATIONS

  /*----------------------------------------------------------------------**
  INTERVAL_READ: input of a number in (mm..nn). The cursor reappears at
  current position, the operator has to enter the number followed
  by Return, with no other character before. Characters after the number
  are ignored. As long as the number is inconsistent, the error message 
  "THIS IS NOT A VALUE IN mm..nn" is displayed and a new input is required.
  **----------------------------------------------------------------------*/ 
  bb <-- INTERVAL_READ(mm,nn) = PRE
    nn: NAT &
    mm: NAT &
    mm<=nn
  THEN
    bb:: mm..nn
  END;

  /*----------------------------------------------------------------------**
  INT_WRITE: write a number into stdout, with no carriage return
  **----------------------------------------------------------------------*/ 
  INT_WRITE(vv) = PRE
    vv: NAT
  THEN
    skip
  END;

  /*----------------------------------------------------------------------**
  BOOL_READ: input of TRUE or FALSE. The cursor reappears at current
  position, the operator has to enter TRUE or FALSE in plain characters.
  As long as the input is inconsistent, the error message 
  "THIS IS NOT A BOOLEAN VALUE, TYPE TRUE OR FALSE" is displayed and a new
  input is required.
  **----------------------------------------------------------------------*/ 
  bb <-- BOOL_READ = BEGIN
    bb:: BOOL
  END;

  /*----------------------------------------------------------------------**
  BOOL_WRITE: write TRUE or FALSE in plain characters into stdout, with no
  carriage return
  **----------------------------------------------------------------------*/ 
  BOOL_WRITE(bb) = PRE
    bb: BOOL
  THEN
    skip
  END;

  /*----------------------------------------------------------------------**
  CHAR_READ: input characters by the operator. The first call to CHAR_READ
  makes the cursor reappear at the current position, the operator types
  some characters followed by carriage return. Then CHAR_READ returns the
  first input character; the next calls will return the following
  characters, till the carriage return character included. The next call to
  CHAR_READ will lead to another input.
  **----------------------------------------------------------------------*/ 
  cc <-- CHAR_READ = BEGIN
    cc:: CHAR
  END;

  /*----------------------------------------------------------------------**
  BOOL_WRITE: write a character into stdout.
  WARNING: do not use characters between quotes. For instance:
  . CHAR_WRITE('n') is meaningless.
  NB: CHAR_WRITE(10) is used to print a carriage return.
  **----------------------------------------------------------------------*/ 
  CHAR_WRITE(cc) = PRE
    cc: CHAR
  THEN
    skip
  END;

  /*----------------------------------------------------------------------**
  STRING_WRITE: write a string into stdout.
  Strings between double quotes are part of the B syntax, with the following
  conventions:
  .  \n = carriage return
  .  \t = TAB
  .  \B = bell
  .  \E = escape
  .  \" = "
  .  \\ = \
  Example: STRING_WRITE("\tHello\n")
  NB: STRING_WRITE can only be used with a literal parameter.
  **----------------------------------------------------------------------*/ 
  STRING_WRITE(ss) = PRE
    ss: STRING
  THEN
    skip
  END

END
