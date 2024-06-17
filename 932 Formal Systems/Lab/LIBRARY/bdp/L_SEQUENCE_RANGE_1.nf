Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_SEQUENCE_RANGE_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_SEQUENCE_RANGE_1))==(Machine(L_SEQUENCE_RANGE));
  Level(Implementation(L_SEQUENCE_RANGE_1))==(1);
  Upper_Level(Implementation(L_SEQUENCE_RANGE_1))==(Machine(L_SEQUENCE_RANGE))
END
&
THEORY LoadedStructureX IS
  Implementation(L_SEQUENCE_RANGE_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge_arr.L_ARRAY3_RANGE,seq_rge_siz.L_ARRAY1);
  Inherited_List_Includes(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge_siz.L_ARRAY1,seq_rge_arr.L_ARRAY3_RANGE)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Context_List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Abstract_List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge);
  Local_List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge_arrarr_rge,seq_rge_sizarr_vrb);
  External_List_Variables(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge_arr.arr_rge,seq_rge_siz.arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  External_List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge: LSR_minrge..LSR_maxrge --> seq(LSR_VALUE) & !rr.(rr: LSR_minrge..LSR_maxrge => size(seq_rge(rr))<=LSR_maxsize));
  Expanded_List_Invariant(Implementation(L_SEQUENCE_RANGE_1))==(seq_rge_arrarr_rge: LSR_minrge..LSR_maxrge --> (0..LSR_maxsize --> LSR_VALUE) & seq_rge_sizarr_vrb: 0..LSR_maxrge --> 0..MAXINT-1);
  Context_List_Invariant(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  List_Invariant(Implementation(L_SEQUENCE_RANGE_1))==(!rr.(rr: LSR_minrge..LSR_maxrge => seq_rge(rr) = 1..size(seq_rge(rr))<|seq_rge_arrarr_rge(rr)) & !rr.(rr: LSR_minrge..LSR_maxrge => seq_rge_sizarr_vrb(rr) = size(seq_rge(rr))))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  Context_List_Assertions(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  List_Assertions(Implementation(L_SEQUENCE_RANGE_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_SEQUENCE_RANGE_1))==(@(arr_rge$0).(arr_rge$0: LSR_minrge..LSR_maxrge --> (0..LSR_maxsize --> LSR_VALUE) ==> seq_rge_arrarr_rge:=arr_rge$0);@(arr_vrb$0).(arr_vrb$0: 0..LSR_maxrge --> 0..MAXINT-1 ==> seq_rge_sizarr_vrb:=arr_vrb$0);(LSR_minrge: NAT & LSR_maxrge: NAT & LSR_maxrge/=MAXINT & LSR_minrge..LSR_maxrge <: 0..LSR_maxrge & 0: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+(LSR_minrge..LSR_maxrge)*{0}));
  Context_List_Initialisation(Implementation(L_SEQUENCE_RANGE_1))==(skip);
  List_Initialisation(Implementation(L_SEQUENCE_RANGE_1))==((seq_rge_siz.SET_ARRAY)(LSR_minrge,LSR_maxrge,0))
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_SEQUENCE_RANGE_1))==(LSR_minrge,LSR_maxrge,LSR_maxsize,LSR_VALUE)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_siz.L_ARRAY1))==(MAXINT-1: INT & MAXINT: INT & 1: INT);
  Precond_Instanciated_Parameters(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_arr.L_ARRAY3_RANGE))==(btrue);
  List_Instanciated_Parameters(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_arr.L_ARRAY3_RANGE))==(LSR_minrge,LSR_maxrge,LSR_maxsize,LSR_VALUE);
  List_Instanciated_Parameters(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_siz.L_ARRAY1))==(0..MAXINT-1,LSR_maxrge)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_siz.L_ARRAY1))==(LSR_maxrge: NAT1 & 0..MAXINT-1: FIN(INTEGER) & not(0..MAXINT-1 = {}));
  List_Constraints(Implementation(L_SEQUENCE_RANGE_1))==(LSR_maxsize: 1..MAXINT-1 & LSR_minrge: NAT & LSR_maxrge: NAT & LSR_maxrge/=MAXINT & LSR_minrge<LSR_maxrge & LSR_VALUE: FIN(INTEGER) & not(LSR_VALUE = {}));
  List_Context_Constraints(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  List_Constraints(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_arr.L_ARRAY3_RANGE))==(LSR_maxsize: NAT1 & LSR_minrge: NAT & LSR_maxrge: NAT & LSR_minrge<LSR_maxrge & LSR_VALUE: FIN(INTEGER) & not(LSR_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_SEQUENCE_RANGE_1))==(LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE);
  List_Operations(Implementation(L_SEQUENCE_RANGE_1))==(LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(range,ii);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(range,ii);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(range,vv);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(range,ii,vv);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(range,ii);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(range,ii,vv);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(range,nn);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(range,nn);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(range,ii,jj);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(range);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(range,vv);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(range,vv);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(dst,src);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(rng1,rng2);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(dst,idx,src,ii,jj);
  List_Input(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(rng1,ii,jj,rng2,kk)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(nn);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(bb);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(bb);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(vv);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(vv);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(vv);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(bb,ii);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(bb,ii);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(bb);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(?);
  List_Output(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(nn <-- LEN_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(bb <-- IS_FULL_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(bb <-- IS_INDEX_SEQ_RGE(range,ii));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(vv <-- VAL_SEQ_RGE(range,ii));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(vv <-- FIRST_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(vv <-- LAST_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(PUSH_SEQ_RGE(range,vv));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(POP_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(STR_SEQ_RGE(range,ii,vv));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(RMV_SEQ_RGE(range,ii));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(INS_AFT_SEQ_RGE(range,ii,vv));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(CLR_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(TAIL_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(KEEP_SEQ_RGE(range,nn));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(CUT_SEQ_RGE(range,nn));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(PART_SEQ_RGE(range,ii,jj));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(REV_SEQ_RGE(range));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(bb,ii <-- FIND_FIRST_SEQ_RGE(range,vv));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(bb,ii <-- FIND_LAST_SEQ_RGE(range,vv));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(COP_SEQ_RGE(dst,src));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(bb <-- CMP_SEQ_RGE(rng1,rng2));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(PCOP_SEQ_RGE(dst,idx,src,ii,jj));
  List_Header(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(idx,bb <-- PCMP_SEQ_RGE(rng1,ii,jj,rng2,kk))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)));
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) & vv: LSR_VALUE);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)));
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 0..size(seq_rge(range)) & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT1 & jj: NAT1 & ii<=jj);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & src: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & idx: NAT & idx: 1..size(seq_rge(dst))+1 & src: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(src)) & jj: NAT & jj: 1..size(seq_rge(src)) & dst/=src & jj<=MAXINT-1 & ii<=jj & idx+jj-ii: 1..LSR_maxsize);
  Own_Precondition(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(btrue);
  List_Precondition(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(rng1)) & jj: NAT & jj: 1..size(seq_rge(rng1)) & ii<=jj & kk: NAT & kk: 1..size(seq_rge(rng2)) & kk+jj-ii: 1..size(seq_rge(rng2)))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(rng1)) & jj: NAT & jj: 1..size(seq_rge(rng1)) & ii<=jj & kk: NAT & kk: 1..size(seq_rge(rng2)) & kk+jj-ii: 1..size(seq_rge(rng2)) & rng2: LSR_minrge..LSR_maxrge & kk: 0..LSR_maxsize & rng1: LSR_minrge..LSR_maxrge & ii: 0..LSR_maxsize & jj: 0..LSR_maxsize & ii<=jj & kk+jj-ii: 0..LSR_maxsize | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & seq_rge_arrarr_rge(rng1)(xx)/=seq_rge_arrarr_rge(rng2)(xx+kk-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & idx: NAT & idx: 1..size(seq_rge(dst))+1 & src: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(src)) & jj: NAT & jj: 1..size(seq_rge(src)) & dst/=src & jj<=MAXINT-1 & ii<=jj & idx+jj-ii: 1..LSR_maxsize | @(zz,xx).((dst: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(dst));(dst: LSR_minrge..LSR_maxrge & idx: 0..LSR_maxsize & src: LSR_minrge..LSR_maxrge & ii: 0..LSR_maxsize & jj: 0..LSR_maxsize & dst/=src & jj<=MAXINT-1 & ii<=jj & idx+jj-ii: 0..LSR_maxsize | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{dst|->(seq_rge_arrarr_rge(dst)<+%xx.(xx: idx..idx+jj-ii | seq_rge_arrarr_rge(src)(xx+ii-idx)))});xx:=jj;(xx-ii: INT & xx: INT & ii: INT | xx:=xx-ii);(xx+idx: INT & xx: INT & idx: INT | xx:=xx+idx);(zz<xx ==> (dst: 0..LSR_maxrge & xx: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{dst|->xx}) [] not(zz<xx) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge | @(zz1,zz2,xx,bb1).((rng1: 0..LSR_maxrge | zz1:=seq_rge_sizarr_vrb(rng1));(rng2: 0..LSR_maxrge | zz2:=seq_rge_sizarr_vrb(rng2));(zz1/=zz2 ==> bb:=FALSE [] not(zz1/=zz2) ==> (zz1 = 0 ==> bb:=TRUE [] not(zz1 = 0) ==> ((rng2: LSR_minrge..LSR_maxrge & 1: 0..LSR_maxsize & rng1: LSR_minrge..LSR_maxrge & 1: 0..LSR_maxsize & zz1: 0..LSR_maxsize & 1<=zz1 & 1+zz1-1: 0..LSR_maxsize | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx$1 | xx$1: 1..zz1 & seq_rge_arrarr_rge(rng1)(xx$1)/=seq_rge_arrarr_rge(rng2)(xx$1+1-1)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> xx,bb1:=nidx,nbb));(bb1 = TRUE ==> bb:=FALSE [] not(bb1 = TRUE) ==> bb:=TRUE))))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & src: LSR_minrge..LSR_maxrge | @zz.((src: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(src));(dst: LSR_minrge..LSR_maxrge & src: LSR_minrge..LSR_maxrge | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{dst|->seq_rge_arrarr_rge(src)});(dst: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{dst|->zz})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(1<=zz ==> (range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & 1: 0..LSR_maxsize & 1<=zz & vv: LSR_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (1..zz<|seq_rge_arrarr_rge(range))~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nrr,nbb)) [] not(1<=zz) ==> ((0: INT | ii:=0);bb:=FALSE))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(1<=zz ==> (range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & 1: 0..LSR_maxsize & 1<=zz & vv: LSR_VALUE | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (1..zz<|seq_rge_arrarr_rge(range))~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nrr,nbb)) [] not(1<=zz) ==> ((0: INT | ii:=0);bb:=FALSE))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(zz>=2 ==> (range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & 1: 0..LSR_maxsize | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%xx.(xx: 1..zz | seq_rge_arrarr_rge(range)(zz+1-xx)))}) [] not(zz>=2) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT1 & jj: NAT1 & ii<=jj | @(zz,xx).((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(jj<=zz ==> xx:=jj [] not(jj<=zz) ==> (zz: INT | xx:=zz));(ii<=xx ==> (1<ii ==> (ii-1: INT & ii: INT & 1: INT & range: LSR_minrge..LSR_maxrge & xx: 0..LSR_maxsize & xx<=MAXINT-1 & ii: 0..LSR_maxsize & ii<=xx & ii-1: NAT & ii-1<=ii | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%(xx$1).(xx$1: 0..LSR_maxsize & xx$1+(ii-1): ii..xx | seq_rge_arrarr_rge(range)(xx$1+(ii-1))))}) [] not(1<ii) ==> skip;(xx-ii: INT & xx: INT & ii: INT & xx-ii+1: INT & 1: INT & range: 0..LSR_maxrge & xx-ii+1: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->xx-ii+1})) [] not(ii<=xx) ==> (range: 0..LSR_maxrge & 0: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->0}))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT | @zz.(nn/=0 ==> ((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(nn<zz ==> ((nn+1: INT & nn: INT & 1: INT & range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & zz<=MAXINT-1 & nn+1: 0..LSR_maxsize & nn+1<=zz & nn: NAT & nn<=nn+1 | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%xx.(xx: 0..LSR_maxsize & xx+nn: nn+1..zz | seq_rge_arrarr_rge(range)(xx+nn)))});(zz-nn: INT & zz: INT & nn: INT & range: 0..LSR_maxrge & zz-nn: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz-nn})) [] not(nn<zz) ==> (range: 0..LSR_maxrge & 0: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->0}))) [] not(nn/=0) ==> skip));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(nn<zz ==> (range: 0..LSR_maxrge & nn: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->nn}) [] not(nn<zz) ==> skip)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(2<=zz ==> (range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & zz<=MAXINT-1 & 2: 0..LSR_maxsize & 2<=zz & 1: NAT & 1<=2 | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%xx.(xx: 0..LSR_maxsize & xx+1: 2..zz | seq_rge_arrarr_rge(range)(xx+1)))}) [] not(2<=zz) ==> skip);(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(range: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & range: 0..LSR_maxrge & 0: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->0});
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 0..size(seq_rge(range)) & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize | @(zz,xx).((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(ii+1: INT & ii: INT & 1: INT | xx:=ii+1);(ii<zz ==> (range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & xx: 0..LSR_maxsize & 1: 0..LSR_maxsize & zz+1: 0..LSR_maxsize & xx<=zz | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%(xx$1).(xx$1: xx+1..zz+1 | seq_rge_arrarr_rge(range)(xx$1-1)))}) [] not(ii<zz) ==> skip);(range: LSR_minrge..LSR_maxrge & xx: 0..LSR_maxsize & vv: LSR_VALUE | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+{xx|->vv})});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1);(range: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(ii<zz ==> (ii+1: INT & ii: INT & 1: INT & range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & zz<=MAXINT-1 & ii+1: 0..LSR_maxsize & ii+1<=zz & 1: NAT & 1<=ii+1 | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+%xx.(xx: 0..LSR_maxsize & xx+1: ii+1..zz | seq_rge_arrarr_rge(range)(xx+1)))}) [] not(ii<zz) ==> skip);(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(range: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) & vv: LSR_VALUE & range: LSR_minrge..LSR_maxrge & ii: 0..LSR_maxsize & vv: LSR_VALUE | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+{ii|->vv})});
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(zz-1: INT & zz: INT & 1: INT | zz:=zz-1);(range: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(zz+1: INT & zz: INT & 1: INT | zz:=zz+1);(range: 0..LSR_maxrge & zz: 0..MAXINT-1 | seq_rge_sizarr_vrb:=seq_rge_sizarr_vrb<+{range|->zz});(range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize & vv: LSR_VALUE | seq_rge_arrarr_rge:=seq_rge_arrarr_rge<+{range|->(seq_rge_arrarr_rge(range)<+{zz|->vv})})));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(range: LSR_minrge..LSR_maxrge & zz: 0..LSR_maxsize | vv:=seq_rge_arrarr_rge(range)(zz))));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 & range: LSR_minrge..LSR_maxrge & 1: 0..LSR_maxsize | vv:=seq_rge_arrarr_rge(range)(1));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) & range: LSR_minrge..LSR_maxrge & ii: 0..LSR_maxsize | vv:=seq_rge_arrarr_rge(range)(ii));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(1<=ii & ii<=zz ==> bb:=TRUE [] not(1<=ii & ii<=zz) ==> bb:=FALSE)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | @zz.((range: 0..LSR_maxrge | zz:=seq_rge_sizarr_vrb(range));(zz = LSR_maxsize ==> bb:=TRUE [] not(zz = LSR_maxsize) ==> bb:=FALSE)));
  Expanded_List_Substitution(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & range: 0..LSR_maxrge | nn:=seq_rge_sizarr_vrb(range));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),LEN_SEQ_RGE)==(nn <-- (seq_rge_siz.VAL_ARRAY)(range));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF zz = LSR_maxsize THEN bb:=TRUE ELSE bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF 1<=ii & ii<=zz THEN bb:=TRUE ELSE bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),VAL_SEQ_RGE)==(vv <-- (seq_rge_arr.VAL_ARR_RGE)(range,ii));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIRST_SEQ_RGE)==(vv <-- (seq_rge_arr.VAL_ARR_RGE)(range,1));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);vv <-- (seq_rge_arr.VAL_ARR_RGE)(range,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);zz:=zz+1;(seq_rge_siz.STR_ARRAY)(range,zz);(seq_rge_arr.STR_ARR_RGE)(range,zz,vv) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);zz:=zz-1;(seq_rge_siz.STR_ARRAY)(range,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),STR_SEQ_RGE)==((seq_rge_arr.STR_ARR_RGE)(range,ii,vv));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF ii<zz THEN (seq_rge_arr.LEFT_SHIFT_RGE)(range,ii+1,zz,1) END;zz:=zz-1;(seq_rge_siz.STR_ARRAY)(range,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE)==(VAR zz,xx IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);xx:=ii+1;IF ii<zz THEN (seq_rge_arr.RIGHT_SHIFT_RGE)(range,xx,zz,1) END;(seq_rge_arr.STR_ARR_RGE)(range,xx,vv);zz:=zz+1;(seq_rge_siz.STR_ARRAY)(range,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CLR_SEQ_RGE)==((seq_rge_siz.STR_ARRAY)(range,0));
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF 2<=zz THEN (seq_rge_arr.LEFT_SHIFT_RGE)(range,2,zz,1) END;zz:=zz-1;(seq_rge_siz.STR_ARRAY)(range,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF nn<zz THEN (seq_rge_siz.STR_ARRAY)(range,nn) END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE)==(VAR zz IN IF nn/=0 THEN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF nn<zz THEN (seq_rge_arr.LEFT_SHIFT_RGE)(range,nn+1,zz,nn);(seq_rge_siz.STR_ARRAY)(range,zz-nn) ELSE (seq_rge_siz.STR_ARRAY)(range,0) END END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE)==(VAR zz,xx IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF jj<=zz THEN xx:=jj ELSE xx:=zz END;IF ii<=xx THEN IF 1<ii THEN (seq_rge_arr.LEFT_SHIFT_RGE)(range,ii,xx,ii-1) END;(seq_rge_siz.STR_ARRAY)(range,xx-ii+1) ELSE (seq_rge_siz.STR_ARRAY)(range,0) END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF zz>=2 THEN (seq_rge_arr.REVERSE_RGE)(range,1,zz) END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF 1<=zz THEN ii,bb <-- (seq_rge_arr.SEARCH_MIN_EQL_RGE)(range,1,zz,vv) ELSE ii:=0;bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(range);IF 1<=zz THEN ii,bb <-- (seq_rge_arr.SEARCH_MAX_EQL_RGE)(range,1,zz,vv) ELSE ii:=0;bb:=FALSE END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE)==(VAR zz IN zz <-- (seq_rge_siz.VAL_ARRAY)(src);(seq_rge_arr.COP_ARR_RGE)(dst,src);(seq_rge_siz.STR_ARRAY)(dst,zz) END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE)==(VAR zz1,zz2,xx,bb1 IN zz1 <-- (seq_rge_siz.VAL_ARRAY)(rng1);zz2 <-- (seq_rge_siz.VAL_ARRAY)(rng2);IF zz1/=zz2 THEN bb:=FALSE ELSIF zz1 = 0 THEN bb:=TRUE ELSE xx,bb1 <-- (seq_rge_arr.PCMP_ARR_RGE)(rng2,1,rng1,1,zz1);IF bb1 = TRUE THEN bb:=FALSE ELSE bb:=TRUE END END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE)==(VAR zz,xx IN zz <-- (seq_rge_siz.VAL_ARRAY)(dst);(seq_rge_arr.PCOP_ARR_RGE)(dst,idx,src,ii,jj);xx:=jj;xx:=xx-ii;xx:=xx+idx;IF zz<xx THEN (seq_rge_siz.STR_ARRAY)(dst,xx) END END);
  List_Substitution(Implementation(L_SEQUENCE_RANGE_1),PCMP_SEQ_RGE)==(idx,bb <-- (seq_rge_arr.PCMP_ARR_RGE)(rng2,kk,rng1,ii,jj))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Inherited_List_Constants(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Constants(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Context_List_Defered(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Context_List_Sets(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Own_Enumerated(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Valuable_Sets(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Inherited_List_Enumerated(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Inherited_List_Defered(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Inherited_List_Sets(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Enumerated(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Defered(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_Sets(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_SEQUENCE_RANGE_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_SEQUENCE_RANGE_1))==(?);
  List_HiddenConstants(Implementation(L_SEQUENCE_RANGE_1))==(?);
  External_List_HiddenConstants(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  Context_List_Properties(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  Inherited_List_Properties(Implementation(L_SEQUENCE_RANGE_1))==(btrue);
  List_Properties(Implementation(L_SEQUENCE_RANGE_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_SEQUENCE_RANGE_1))==(aa: aa);
  List_Values(Implementation(L_SEQUENCE_RANGE_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_SEQUENCE_RANGE_1),Machine(L_ARRAY1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY);
  List_Included_Operations(Implementation(L_SEQUENCE_RANGE_1),Machine(L_ARRAY3_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_SEQUENCE_RANGE_1))==(Type(PCMP_SEQ_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(FIND_LAST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(FIND_FIRST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(REV_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(PART_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CUT_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(KEEP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(TAIL_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(CLR_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(INS_AFT_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(RMV_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(POP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(PUSH_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(LAST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(FIRST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(VAL_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_INDEX_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_FULL_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(LEN_SEQ_RGE) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_SEQUENCE_RANGE_1)) == (? | ? | ? | seq_rge_sizarr_vrb,seq_rge_arrarr_rge | LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE | ? | imported(Machine(seq_rge_arr.L_ARRAY3_RANGE)),imported(Machine(seq_rge_siz.L_ARRAY1)) | LSR_minrge,LSR_maxrge,LSR_maxsize,LSR_VALUE | L_SEQUENCE_RANGE_1);
  List_Of_HiddenCst_Ids(Implementation(L_SEQUENCE_RANGE_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_SEQUENCE_RANGE_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_SEQUENCE_RANGE_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_SEQUENCE_RANGE_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY1)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY | ? | ? | LAU_VALUE,LAU_maxidx | L_ARRAY1);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY3_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE,SWAP_RGE,RIGHT_SHIFT_RGE,LEFT_SHIFT_RGE,SEARCH_MIN_EQL_RGE,SEARCH_MAX_EQL_RGE,REVERSE_RGE | ? | ? | LATR_minrge,LATR_maxrge,LATR_maxidx,LATR_VALUE | L_ARRAY3_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY3_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY3_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY3_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY3_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_SEQUENCE_RANGE_1)) == (Type(LSR_VALUE) == Prm(SetOf(atype(LSR_VALUE,?,?)));Type(LSR_maxsize) == Prm(btype(INTEGER,?,?));Type(LSR_maxrge) == Prm(btype(INTEGER,?,?));Type(LSR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),IS_FULL_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),IS_INDEX_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),LAST_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),PUSH_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),POP_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),RMV_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),INS_AFT_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?));Type(xx) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),TAIL_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),KEEP_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),CUT_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),PART_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?));Type(xx) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),REV_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),FIND_FIRST_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),FIND_LAST_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),COP_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),CMP_SEQ_RGE, 1) == (Type(zz1) == Lvl(btype(INTEGER,?,?));Type(zz2) == Lvl(btype(INTEGER,?,?));Type(xx) == Lvl(btype(INTEGER,?,?));Type(bb1) == Lvl(btype(BOOL,?,?)));
  Variables_Loc(Implementation(L_SEQUENCE_RANGE_1),PCOP_SEQ_RGE, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?));Type(xx) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_SEQUENCE_RANGE_1))==(?)
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
  TypingPredicate(Implementation(L_SEQUENCE_RANGE_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_arr.L_ARRAY3_RANGE))==(seq_rge_arr.arr_rge);
  ImportedVisVariablesList(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_arr.L_ARRAY3_RANGE))==(?);
  ImportedVariablesList(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_siz.L_ARRAY1))==(seq_rge_siz.arr_vrb);
  ImportedVisVariablesList(Implementation(L_SEQUENCE_RANGE_1),Machine(seq_rge_siz.L_ARRAY1))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
