Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_SEQUENCE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_SEQUENCE_1))==(Machine(L_SEQUENCE));
  Level(Implementation(L_SEQUENCE_1))==(1);
  Upper_Level(Implementation(L_SEQUENCE_1))==(Machine(L_SEQUENCE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_SEQUENCE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_SEQUENCE_1))==(se_vrb.L_ARRAY3);
  Inherited_List_Includes(Implementation(L_SEQUENCE_1))==(se_vrb.L_ARRAY3)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_SEQUENCE_1))==(?);
  Context_List_Variables(Implementation(L_SEQUENCE_1))==(?);
  Abstract_List_Variables(Implementation(L_SEQUENCE_1))==(seq_vrb);
  Local_List_Variables(Implementation(L_SEQUENCE_1))==(?);
  List_Variables(Implementation(L_SEQUENCE_1))==(se_vrbarr_vrb);
  External_List_Variables(Implementation(L_SEQUENCE_1))==(se_vrb.arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_SEQUENCE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_SEQUENCE_1))==(?);
  External_List_VisibleVariables(Implementation(L_SEQUENCE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_SEQUENCE_1))==(?);
  List_VisibleVariables(Implementation(L_SEQUENCE_1))==(se_siz);
  Internal_List_VisibleVariables(Implementation(L_SEQUENCE_1))==(se_siz)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_SEQUENCE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_SEQUENCE_1))==(seq_vrb: seq(LS_VALUE) & size(seq_vrb)<=LS_maxsize);
  Expanded_List_Invariant(Implementation(L_SEQUENCE_1))==(se_vrbarr_vrb: 0..LS_maxsize --> LS_VALUE);
  Context_List_Invariant(Implementation(L_SEQUENCE_1))==(btrue);
  List_Invariant(Implementation(L_SEQUENCE_1))==(seq_vrb = 1..size(seq_vrb)<|se_vrbarr_vrb & se_siz: 0..MAXINT & se_siz = size(seq_vrb) & se_siz<=LS_maxsize)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_SEQUENCE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_SEQUENCE_1))==(btrue);
  Context_List_Assertions(Implementation(L_SEQUENCE_1))==(btrue);
  List_Assertions(Implementation(L_SEQUENCE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_SEQUENCE_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LS_maxsize --> LS_VALUE ==> se_vrbarr_vrb:=arr_vrb$0);(0: INT | se_siz:=0));
  Context_List_Initialisation(Implementation(L_SEQUENCE_1))==(skip);
  List_Initialisation(Implementation(L_SEQUENCE_1))==(se_siz:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_SEQUENCE_1))==(LS_maxsize,LS_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_SEQUENCE_1),Machine(se_vrb.L_ARRAY3))==(btrue);
  List_Instanciated_Parameters(Implementation(L_SEQUENCE_1),Machine(se_vrb.L_ARRAY3))==(LS_VALUE,LS_maxsize)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_SEQUENCE_1),Machine(se_vrb.L_ARRAY3))==(LS_maxsize: NAT1 & LS_VALUE: FIN(INTEGER) & not(LS_VALUE = {}));
  List_Constraints(Implementation(L_SEQUENCE_1))==(LS_maxsize: 1..MAXINT-1 & LS_VALUE: FIN(INTEGER) & not(LS_VALUE = {}));
  List_Context_Constraints(Implementation(L_SEQUENCE_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_SEQUENCE_1))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ);
  List_Operations(Implementation(L_SEQUENCE_1))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_SEQUENCE_1),LEN_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(ii);
  List_Input(Implementation(L_SEQUENCE_1),VAL_SEQ)==(ii);
  List_Input(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),LAST_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(vv);
  List_Input(Implementation(L_SEQUENCE_1),POP_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),STR_SEQ)==(ii,vv);
  List_Input(Implementation(L_SEQUENCE_1),RMV_SEQ)==(ii);
  List_Input(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(ii,vv);
  List_Input(Implementation(L_SEQUENCE_1),CLR_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(nn);
  List_Input(Implementation(L_SEQUENCE_1),CUT_SEQ)==(nn);
  List_Input(Implementation(L_SEQUENCE_1),PART_SEQ)==(ii,jj);
  List_Input(Implementation(L_SEQUENCE_1),REV_SEQ)==(?);
  List_Input(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(vv);
  List_Input(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_SEQUENCE_1),LEN_SEQ)==(nn);
  List_Output(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(bb);
  List_Output(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(bb);
  List_Output(Implementation(L_SEQUENCE_1),VAL_SEQ)==(vv);
  List_Output(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(vv);
  List_Output(Implementation(L_SEQUENCE_1),LAST_SEQ)==(vv);
  List_Output(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),POP_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),STR_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),RMV_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),CLR_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),CUT_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),PART_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),REV_SEQ)==(?);
  List_Output(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(bb,ii);
  List_Output(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(bb,ii)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_SEQUENCE_1),LEN_SEQ)==(nn <-- LEN_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(bb <-- IS_FULL_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(bb <-- IS_INDEX_SEQ(ii));
  List_Header(Implementation(L_SEQUENCE_1),VAL_SEQ)==(vv <-- VAL_SEQ(ii));
  List_Header(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(vv <-- FIRST_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),LAST_SEQ)==(vv <-- LAST_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(PUSH_SEQ(vv));
  List_Header(Implementation(L_SEQUENCE_1),POP_SEQ)==(POP_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),STR_SEQ)==(STR_SEQ(ii,vv));
  List_Header(Implementation(L_SEQUENCE_1),RMV_SEQ)==(RMV_SEQ(ii));
  List_Header(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(INS_AFT_SEQ(ii,vv));
  List_Header(Implementation(L_SEQUENCE_1),CLR_SEQ)==(CLR_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(TAIL_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(KEEP_SEQ(nn));
  List_Header(Implementation(L_SEQUENCE_1),CUT_SEQ)==(CUT_SEQ(nn));
  List_Header(Implementation(L_SEQUENCE_1),PART_SEQ)==(PART_SEQ(ii,jj));
  List_Header(Implementation(L_SEQUENCE_1),REV_SEQ)==(REV_SEQ);
  List_Header(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(bb,ii <-- FIND_FIRST_SEQ(vv));
  List_Header(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(bb,ii <-- FIND_LAST_SEQ(vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_SEQUENCE_1),LEN_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),LEN_SEQ)==(btrue);
  Own_Precondition(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(btrue);
  Own_Precondition(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(ii: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_1),VAL_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),VAL_SEQ)==(ii: NAT & ii: 1..size(seq_vrb));
  Own_Precondition(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(size(seq_vrb)/=0);
  Own_Precondition(Implementation(L_SEQUENCE_1),LAST_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),LAST_SEQ)==(size(seq_vrb)/=0);
  Own_Precondition(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(vv: LS_VALUE & size(seq_vrb)/=LS_maxsize);
  Own_Precondition(Implementation(L_SEQUENCE_1),POP_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),POP_SEQ)==(size(seq_vrb)/=0);
  Own_Precondition(Implementation(L_SEQUENCE_1),STR_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),STR_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) & vv: LS_VALUE);
  Own_Precondition(Implementation(L_SEQUENCE_1),RMV_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),RMV_SEQ)==(ii: NAT & ii: 1..size(seq_vrb));
  Own_Precondition(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(ii: NAT & ii: 0..size(seq_vrb) & vv: LS_VALUE & size(seq_vrb)/=LS_maxsize);
  Own_Precondition(Implementation(L_SEQUENCE_1),CLR_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),CLR_SEQ)==(btrue);
  Own_Precondition(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(size(seq_vrb)/=0);
  Own_Precondition(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(nn: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_1),CUT_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),CUT_SEQ)==(nn: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_1),PART_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),PART_SEQ)==(ii: NAT1 & jj: NAT1 & ii<=jj);
  Own_Precondition(Implementation(L_SEQUENCE_1),REV_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),REV_SEQ)==(btrue);
  Own_Precondition(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(vv: LS_VALUE);
  Own_Precondition(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(vv: LS_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(vv: LS_VALUE | @zz.(zz:=se_siz;(1<=zz ==> (zz: 0..LS_maxsize & 1: 0..LS_maxsize & 1<=zz & vv: LS_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (1..zz<|se_vrbarr_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nrr,nbb)) [] not(1<=zz) ==> ((0: INT | ii:=0);bb:=FALSE))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(vv: LS_VALUE | @zz.(zz:=se_siz;(1<=zz ==> (zz: 0..LS_maxsize & 1: 0..LS_maxsize & 1<=zz & vv: LS_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (1..zz<|se_vrbarr_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nrr,nbb)) [] not(1<=zz) ==> ((0: INT | ii:=0);bb:=FALSE))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),REV_SEQ)==(btrue | @zz.(zz:=se_siz;(zz>=2 ==> (zz: 0..LS_maxsize & 1: 0..LS_maxsize | se_vrbarr_vrb:=se_vrbarr_vrb<+%xx.(xx: 1..zz | se_vrbarr_vrb(zz+1-xx))) [] not(zz>=2) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),PART_SEQ)==(ii: NAT1 & jj: NAT1 & ii<=jj | @(zz,xx).(zz:=se_siz;(jj<=zz ==> xx:=jj [] not(jj<=zz) ==> (zz: INT | xx:=zz));(ii<=xx ==> (1<ii ==> (ii-1: INT & ii: INT & 1: INT & xx: 0..LS_maxsize & xx<=MAXINT-1 & ii: 0..LS_maxsize & ii<=xx & ii-1: NAT & ii-1<=ii | se_vrbarr_vrb:=se_vrbarr_vrb<+%(xx$1).(xx$1: 0..LS_maxsize & xx$1+(ii-1): ii..xx | se_vrbarr_vrb(xx$1+(ii-1)))) [] not(1<ii) ==> skip;(xx-ii+1: INT & xx-ii: INT & xx: INT & ii: INT & 1: INT | se_siz:=xx-ii+1)) [] not(ii<=xx) ==> (0: INT | se_siz:=0))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),CUT_SEQ)==(nn: NAT | @zz.(nn/=0 ==> (zz:=se_siz;(nn<zz ==> ((nn+1: INT & nn: INT & 1: INT & zz: 0..LS_maxsize & zz<=MAXINT-1 & nn+1: 0..LS_maxsize & nn+1<=zz & nn: NAT & nn<=nn+1 | se_vrbarr_vrb:=se_vrbarr_vrb<+%xx.(xx: 0..LS_maxsize & xx+nn: nn+1..zz | se_vrbarr_vrb(xx+nn)));(zz-nn: INT & zz: INT & nn: INT | se_siz:=zz-nn)) [] not(nn<zz) ==> (0: INT | se_siz:=0))) [] not(nn/=0) ==> skip));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(nn: NAT | @zz.(zz:=se_siz;(nn<zz ==> (nn: INT | se_siz:=nn) [] not(nn<zz) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(size(seq_vrb)/=0 | @zz.(zz:=se_siz;(2<=zz ==> (zz: 0..LS_maxsize & zz<=MAXINT-1 & 2: 0..LS_maxsize & 2<=zz & 1: NAT & 1<=2 | se_vrbarr_vrb:=se_vrbarr_vrb<+%xx.(xx: 0..LS_maxsize & xx+1: 2..zz | se_vrbarr_vrb(xx+1))) [] not(2<=zz) ==> skip);(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(zz: INT | se_siz:=zz)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),CLR_SEQ)==(btrue & 0: INT | se_siz:=0);
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(ii: NAT & ii: 0..size(seq_vrb) & vv: LS_VALUE & size(seq_vrb)/=LS_maxsize | @zz.(zz:=se_siz;(ii<zz ==> (ii+1: INT & ii: INT & 1: INT & zz: 0..LS_maxsize & ii+1: 0..LS_maxsize & 1: 0..LS_maxsize & zz+1: 0..LS_maxsize & ii+1<=zz | se_vrbarr_vrb:=se_vrbarr_vrb<+%xx.(xx: ii+1+1..zz+1 | se_vrbarr_vrb(xx-1))) [] not(ii<zz) ==> skip);(ii+1: INT & ii: INT & 1: INT & ii+1: 0..LS_maxsize & vv: LS_VALUE | se_vrbarr_vrb:=se_vrbarr_vrb<+{ii+1|->vv});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1);(zz: INT | se_siz:=zz)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),RMV_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) | @zz.(zz:=se_siz;(ii<zz ==> (ii+1: INT & ii: INT & 1: INT & zz: 0..LS_maxsize & zz<=MAXINT-1 & ii+1: 0..LS_maxsize & ii+1<=zz & 1: NAT & 1<=ii+1 | se_vrbarr_vrb:=se_vrbarr_vrb<+%xx.(xx: 0..LS_maxsize & xx+1: ii+1..zz | se_vrbarr_vrb(xx+1))) [] not(ii<zz) ==> skip);(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(zz: INT | se_siz:=zz)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),STR_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) & vv: LS_VALUE & ii: 0..LS_maxsize & vv: LS_VALUE | se_vrbarr_vrb:=se_vrbarr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),POP_SEQ)==(size(seq_vrb)/=0 | @zz.(zz:=se_siz;(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(zz: INT | se_siz:=zz)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(vv: LS_VALUE & size(seq_vrb)/=LS_maxsize | @zz.(zz:=se_siz;(zz+1: INT & zz: INT & 1: INT | zz:=zz+1);(zz: INT | se_siz:=zz);(zz: 0..LS_maxsize & vv: LS_VALUE | se_vrbarr_vrb:=se_vrbarr_vrb<+{zz|->vv})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),LAST_SEQ)==(size(seq_vrb)/=0 | @zz.(zz:=se_siz;(zz: 0..LS_maxsize | vv:=se_vrbarr_vrb(zz))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(size(seq_vrb)/=0 & 1: 0..LS_maxsize | vv:=se_vrbarr_vrb(1));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),VAL_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) & ii: 0..LS_maxsize | vv:=se_vrbarr_vrb(ii));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(ii: NAT | @zz.(zz:=se_siz;(1<=ii & ii<=zz ==> bb:=TRUE [] not(1<=ii & ii<=zz) ==> bb:=FALSE)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(btrue | @zz.(zz:=se_siz;(zz = LS_maxsize ==> bb:=TRUE [] not(zz = LS_maxsize) ==> bb:=FALSE)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_1),LEN_SEQ)==(btrue & se_siz: INT | nn:=se_siz);
  List_Substitution(Implementation(L_SEQUENCE_1),LEN_SEQ)==(nn:=se_siz);
  List_Substitution(Implementation(L_SEQUENCE_1),IS_FULL_SEQ)==(VAR zz IN zz:=se_siz;IF zz = LS_maxsize THEN bb:=TRUE ELSE bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ)==(VAR zz IN zz:=se_siz;IF 1<=ii & ii<=zz THEN bb:=TRUE ELSE bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_1),VAL_SEQ)==(vv <-- (se_vrb.VAL_ARRAY)(ii));
  List_Substitution(Implementation(L_SEQUENCE_1),FIRST_SEQ)==(vv <-- (se_vrb.VAL_ARRAY)(1));
  List_Substitution(Implementation(L_SEQUENCE_1),LAST_SEQ)==(VAR zz IN zz:=se_siz;vv <-- (se_vrb.VAL_ARRAY)(zz) END);
  List_Substitution(Implementation(L_SEQUENCE_1),PUSH_SEQ)==(VAR zz IN zz:=se_siz;zz:=zz+1;se_siz:=zz;(se_vrb.STR_ARRAY)(zz,vv) END);
  List_Substitution(Implementation(L_SEQUENCE_1),POP_SEQ)==(VAR zz IN zz:=se_siz;zz:=zz-1;se_siz:=zz END);
  List_Substitution(Implementation(L_SEQUENCE_1),STR_SEQ)==((se_vrb.STR_ARRAY)(ii,vv));
  List_Substitution(Implementation(L_SEQUENCE_1),RMV_SEQ)==(VAR zz IN zz:=se_siz;IF ii<zz THEN (se_vrb.LEFT_SHIFT_ARRAY)(ii+1,zz,1) END;zz:=zz-1;se_siz:=zz END);
  List_Substitution(Implementation(L_SEQUENCE_1),INS_AFT_SEQ)==(VAR zz IN zz:=se_siz;IF ii<zz THEN (se_vrb.RIGHT_SHIFT_ARRAY)(ii+1,zz,1) END;(se_vrb.STR_ARRAY)(ii+1,vv);zz:=zz+1;se_siz:=zz END);
  List_Substitution(Implementation(L_SEQUENCE_1),CLR_SEQ)==(se_siz:=0);
  List_Substitution(Implementation(L_SEQUENCE_1),TAIL_SEQ)==(VAR zz IN zz:=se_siz;IF 2<=zz THEN (se_vrb.LEFT_SHIFT_ARRAY)(2,zz,1) END;zz:=zz-1;se_siz:=zz END);
  List_Substitution(Implementation(L_SEQUENCE_1),KEEP_SEQ)==(VAR zz IN zz:=se_siz;IF nn<zz THEN se_siz:=nn END END);
  List_Substitution(Implementation(L_SEQUENCE_1),CUT_SEQ)==(VAR zz IN IF nn/=0 THEN zz:=se_siz;IF nn<zz THEN (se_vrb.LEFT_SHIFT_ARRAY)(nn+1,zz,nn);se_siz:=zz-nn ELSE se_siz:=0 END END END);
  List_Substitution(Implementation(L_SEQUENCE_1),PART_SEQ)==(VAR zz,xx IN zz:=se_siz;IF jj<=zz THEN xx:=jj ELSE xx:=zz END;IF ii<=xx THEN IF 1<ii THEN (se_vrb.LEFT_SHIFT_ARRAY)(ii,xx,ii-1) END;se_siz:=xx-ii+1 ELSE se_siz:=0 END END);
  List_Substitution(Implementation(L_SEQUENCE_1),REV_SEQ)==(VAR zz IN zz:=se_siz;IF zz>=2 THEN (se_vrb.REVERSE_ARRAY)(1,zz) END END);
  List_Substitution(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ)==(VAR zz IN zz:=se_siz;IF 1<=zz THEN ii,bb <-- (se_vrb.SEARCH_MIN_EQL_ARRAY)(1,zz,vv) ELSE ii:=0;bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ)==(VAR zz IN zz:=se_siz;IF 1<=zz THEN ii,bb <-- (se_vrb.SEARCH_MAX_EQL_ARRAY)(1,zz,vv) ELSE ii:=0;bb:=FALSE END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_SEQUENCE_1))==(?);
  Inherited_List_Constants(Implementation(L_SEQUENCE_1))==(?);
  List_Constants(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_SEQUENCE_1))==(?);
  Context_List_Defered(Implementation(L_SEQUENCE_1))==(?);
  Context_List_Sets(Implementation(L_SEQUENCE_1))==(?);
  List_Own_Enumerated(Implementation(L_SEQUENCE_1))==(?);
  List_Valuable_Sets(Implementation(L_SEQUENCE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_SEQUENCE_1))==(?);
  Inherited_List_Defered(Implementation(L_SEQUENCE_1))==(?);
  Inherited_List_Sets(Implementation(L_SEQUENCE_1))==(?);
  List_Enumerated(Implementation(L_SEQUENCE_1))==(?);
  List_Defered(Implementation(L_SEQUENCE_1))==(?);
  List_Sets(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_SEQUENCE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_SEQUENCE_1))==(?);
  List_HiddenConstants(Implementation(L_SEQUENCE_1))==(?);
  External_List_HiddenConstants(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_SEQUENCE_1))==(btrue);
  Context_List_Properties(Implementation(L_SEQUENCE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_SEQUENCE_1))==(btrue);
  List_Properties(Implementation(L_SEQUENCE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_SEQUENCE_1))==(aa: aa);
  List_Values(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_SEQUENCE_1),Machine(L_ARRAY3))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(L_SEQUENCE_1))==(Type(se_siz) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(L_SEQUENCE_1))==(Type(FIND_LAST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(FIND_FIRST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(REV_SEQ) == Cst(No_type,No_type);Type(PART_SEQ) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CUT_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(KEEP_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(TAIL_SEQ) == Cst(No_type,No_type);Type(CLR_SEQ) == Cst(No_type,No_type);Type(INS_AFT_SEQ) == Cst(No_type,btype(INTEGER,?,?)*atype(LS_VALUE,?,?));Type(RMV_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(STR_SEQ) == Cst(No_type,btype(INTEGER,?,?)*atype(LS_VALUE,?,?));Type(POP_SEQ) == Cst(No_type,No_type);Type(PUSH_SEQ) == Cst(No_type,atype(LS_VALUE,?,?));Type(LAST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(FIRST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(VAL_SEQ) == Cst(atype(LS_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SEQ) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SEQ) == Cst(btype(BOOL,?,?),No_type);Type(LEN_SEQ) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_SEQUENCE_1)) == (? | ? | ? | se_vrbarr_vrb | LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ | ? | imported(Machine(se_vrb.L_ARRAY3)) | LS_maxsize,LS_VALUE | L_SEQUENCE_1);
  List_Of_HiddenCst_Ids(Implementation(L_SEQUENCE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_SEQUENCE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_SEQUENCE_1)) == (se_siz | ?);
  List_Of_Ids_SeenBNU(Implementation(L_SEQUENCE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY3)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY,SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,REVERSE_ARRAY | ? | ? | LAT_VALUE,LAT_maxidx | L_ARRAY3);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY3)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY3)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY3)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY3)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_SEQUENCE_1)) == (Type(LS_VALUE) == Prm(SetOf(atype(LS_VALUE,?,?)));Type(LS_maxsize) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(L_SEQUENCE_1)) == (Type(se_siz) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_SEQUENCE_1),IS_FULL_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),IS_INDEX_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),LAST_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),PUSH_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),POP_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),RMV_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),INS_AFT_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),TAIL_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),KEEP_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),CUT_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),PART_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?));Type(xx) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),REV_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),FIND_FIRST_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_1),FIND_LAST_SEQ, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  event_b_project == KO;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(L_SEQUENCE_1))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(L_SEQUENCE_1))==(se_siz: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_SEQUENCE_1),Machine(se_vrb.L_ARRAY3))==(se_vrb.arr_vrb);
  ImportedVisVariablesList(Implementation(L_SEQUENCE_1),Machine(se_vrb.L_ARRAY3))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
