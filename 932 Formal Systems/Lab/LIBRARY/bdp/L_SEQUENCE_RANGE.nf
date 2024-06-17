Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_SEQUENCE_RANGE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_SEQUENCE_RANGE))==(Machine(L_SEQUENCE_RANGE));
  Level(Machine(L_SEQUENCE_RANGE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_SEQUENCE_RANGE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_SEQUENCE_RANGE))==(?);
  List_Includes(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_SEQUENCE_RANGE))==(?);
  Context_List_Variables(Machine(L_SEQUENCE_RANGE))==(?);
  Abstract_List_Variables(Machine(L_SEQUENCE_RANGE))==(?);
  Local_List_Variables(Machine(L_SEQUENCE_RANGE))==(seq_rge);
  List_Variables(Machine(L_SEQUENCE_RANGE))==(seq_rge);
  External_List_Variables(Machine(L_SEQUENCE_RANGE))==(seq_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?);
  Abstract_List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?);
  External_List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?);
  Expanded_List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?);
  List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?);
  Internal_List_VisibleVariables(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_SEQUENCE_RANGE))==(btrue);
  Gluing_List_Invariant(Machine(L_SEQUENCE_RANGE))==(btrue);
  Expanded_List_Invariant(Machine(L_SEQUENCE_RANGE))==(btrue);
  Abstract_List_Invariant(Machine(L_SEQUENCE_RANGE))==(btrue);
  Context_List_Invariant(Machine(L_SEQUENCE_RANGE))==(btrue);
  List_Invariant(Machine(L_SEQUENCE_RANGE))==(seq_rge: LSR_minrge..LSR_maxrge --> seq(LSR_VALUE) & !rr.(rr: LSR_minrge..LSR_maxrge => size(seq_rge(rr))<=LSR_maxsize))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_SEQUENCE_RANGE))==(btrue);
  Abstract_List_Assertions(Machine(L_SEQUENCE_RANGE))==(btrue);
  Context_List_Assertions(Machine(L_SEQUENCE_RANGE))==(btrue);
  List_Assertions(Machine(L_SEQUENCE_RANGE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_SEQUENCE_RANGE))==(@(seq_rge$1).(seq_rge$1: LSR_minrge..LSR_maxrge --> seq(LSR_VALUE) & !rr.(rr: LSR_minrge..LSR_maxrge => size(seq_rge$1(rr))<=LSR_maxsize) ==> seq_rge:=seq_rge$1));
  Context_List_Initialisation(Machine(L_SEQUENCE_RANGE))==(skip);
  List_Initialisation(Machine(L_SEQUENCE_RANGE))==(seq_rge: (seq_rge: LSR_minrge..LSR_maxrge --> seq(LSR_VALUE) & !rr.(rr: LSR_minrge..LSR_maxrge => size(seq_rge(rr))<=LSR_maxsize)))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_SEQUENCE_RANGE))==(LSR_minrge,LSR_maxrge,LSR_maxsize,LSR_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_SEQUENCE_RANGE))==(btrue);
  List_Constraints(Machine(L_SEQUENCE_RANGE))==(LSR_maxsize: 1..MAXINT-1 & LSR_minrge: NAT & LSR_maxrge: NAT & LSR_maxrge/=MAXINT & LSR_minrge<LSR_maxrge & LSR_VALUE: FIN(INTEGER) & not(LSR_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_SEQUENCE_RANGE))==(LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE);
  List_Operations(Machine(L_SEQUENCE_RANGE))==(LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(range,ii);
  List_Input(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(range,ii);
  List_Input(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(range,vv);
  List_Input(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(range,ii,vv);
  List_Input(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(range,ii);
  List_Input(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(range,ii,vv);
  List_Input(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(range,nn);
  List_Input(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(range,nn);
  List_Input(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(range,ii,jj);
  List_Input(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(range);
  List_Input(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(range,vv);
  List_Input(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(range,vv);
  List_Input(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(dst,src);
  List_Input(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(rng1,rng2);
  List_Input(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(dst,idx,src,ii,jj);
  List_Input(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(rng1,ii,jj,rng2,kk)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(nn);
  List_Output(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(bb);
  List_Output(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(bb);
  List_Output(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(vv);
  List_Output(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(vv);
  List_Output(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(vv);
  List_Output(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(bb,ii);
  List_Output(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(bb,ii);
  List_Output(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(bb);
  List_Output(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(?);
  List_Output(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(nn <-- LEN_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(bb <-- IS_FULL_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(bb <-- IS_INDEX_SEQ_RGE(range,ii));
  List_Header(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(vv <-- VAL_SEQ_RGE(range,ii));
  List_Header(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(vv <-- FIRST_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(vv <-- LAST_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(PUSH_SEQ_RGE(range,vv));
  List_Header(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(POP_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(STR_SEQ_RGE(range,ii,vv));
  List_Header(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(RMV_SEQ_RGE(range,ii));
  List_Header(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(INS_AFT_SEQ_RGE(range,ii,vv));
  List_Header(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(CLR_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(TAIL_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(KEEP_SEQ_RGE(range,nn));
  List_Header(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(CUT_SEQ_RGE(range,nn));
  List_Header(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(PART_SEQ_RGE(range,ii,jj));
  List_Header(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(REV_SEQ_RGE(range));
  List_Header(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(bb,ii <-- FIND_FIRST_SEQ_RGE(range,vv));
  List_Header(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(bb,ii <-- FIND_LAST_SEQ_RGE(range,vv));
  List_Header(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(COP_SEQ_RGE(dst,src));
  List_Header(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(bb <-- CMP_SEQ_RGE(rng1,rng2));
  List_Header(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(PCOP_SEQ_RGE(dst,idx,src,ii,jj));
  List_Header(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(idx,bb <-- PCMP_SEQ_RGE(rng1,ii,jj,rng2,kk))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT);
  List_Precondition(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)));
  List_Precondition(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  List_Precondition(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  List_Precondition(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize);
  List_Precondition(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  List_Precondition(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) & vv: LSR_VALUE);
  List_Precondition(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)));
  List_Precondition(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 0..size(seq_rge(range)) & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize);
  List_Precondition(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0);
  List_Precondition(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT);
  List_Precondition(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT);
  List_Precondition(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT1 & jj: NAT1 & ii<=jj);
  List_Precondition(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE);
  List_Precondition(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE);
  List_Precondition(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & src: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge);
  List_Precondition(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & idx: NAT & idx: 1..size(seq_rge(dst))+1 & src: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(src)) & jj: NAT & jj: 1..size(seq_rge(src)) & dst/=src & jj<=MAXINT-1 & ii<=jj & idx+jj-ii: 1..LSR_maxsize);
  List_Precondition(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(rng1)) & jj: NAT & jj: 1..size(seq_rge(rng1)) & ii<=jj & kk: NAT & kk: 1..size(seq_rge(rng2)) & kk+jj-ii: 1..size(seq_rge(rng2)))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(rng1)) & jj: NAT & jj: 1..size(seq_rge(rng1)) & ii<=jj & kk: NAT & kk: 1..size(seq_rge(rng2)) & kk+jj-ii: 1..size(seq_rge(rng2)) | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & seq_rge(rng1)(xx)/=seq_rge(rng2)(xx+kk-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & idx: NAT & idx: 1..size(seq_rge(dst))+1 & src: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(src)) & jj: NAT & jj: 1..size(seq_rge(src)) & dst/=src & jj<=MAXINT-1 & ii<=jj & idx+jj-ii: 1..LSR_maxsize | seq_rge:=seq_rge<+{dst|->(seq_rge(dst)<+%xx.(xx: idx..idx+jj-ii | seq_rge(src)(xx+ii-idx)))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(rng1: LSR_minrge..LSR_maxrge & rng2: LSR_minrge..LSR_maxrge | bb:=bool(seq_rge(rng1) = seq_rge(rng2)));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(dst: LSR_minrge..LSR_maxrge & src: LSR_minrge..LSR_maxrge | seq_rge:=seq_rge<+{dst|->seq_rge(src)});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = seq_rge(range)~[{vv}] & (sol/={} => nii = max(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nii,nbb));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = seq_rge(range)~[{vv}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nii,nbb));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | seq_rge:=seq_rge<+{range|->rev(seq_rge(range))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT1 & jj: NAT1 & ii<=jj | @nseq.(nseq: seq(LSR_VALUE) & nseq = %uu.(uu: NATURAL & uu+ii-1: ii..jj/\dom(seq_rge(range)) | seq_rge(range)(uu+ii-1)) ==> seq_rge:=seq_rge<+{range|->nseq}));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT | seq_rge:=seq_rge<+{range|->(seq_rge(range)\|/nn)});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & nn: NAT | seq_rge:=seq_rge<+{range|->(seq_rge(range)/|\min({size(seq_rge(range)),nn}))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | seq_rge:=seq_rge<+{range|->tail(seq_rge(range))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | seq_rge:=seq_rge<+{range|-><>});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 0..size(seq_rge(range)) & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize | seq_rge:=seq_rge<+{range|->(seq_rge(range)/|\ii^[vv]^(seq_rge(range)\|/ii))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) | seq_rge:=seq_rge<+{range|->(seq_rge(range)/|\ii-1^(seq_rge(range)\|/ii))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) & vv: LSR_VALUE | seq_rge:=seq_rge<+{range|->(seq_rge(range)<+{ii|->vv})});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | seq_rge:=seq_rge<+{range|->front(seq_rge(range))});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & vv: LSR_VALUE & size(seq_rge(range))/=LSR_maxsize | seq_rge:=seq_rge<+{range|->(seq_rge(range)<-vv)});
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | vv:=last(seq_rge(range)));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & size(seq_rge(range))/=0 | vv:=first(seq_rge(range)));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT & ii: 1..size(seq_rge(range)) | vv:=seq_rge(range)(ii));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge & ii: NAT | bb:=bool(ii: 1..size(seq_rge(range))));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | bb:=bool(size(seq_rge(range)) = LSR_maxsize));
  Expanded_List_Substitution(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(range: LSR_minrge..LSR_maxrge | nn:=size(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(nn:=size(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(bb:=bool(size(seq_rge(range)) = LSR_maxsize));
  List_Substitution(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(bb:=bool(ii: 1..size(seq_rge(range))));
  List_Substitution(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(vv:=seq_rge(range)(ii));
  List_Substitution(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(vv:=first(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(vv:=last(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(seq_rge(range):=seq_rge(range)<-vv);
  List_Substitution(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(seq_rge(range):=front(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(seq_rge(range)(ii):=vv);
  List_Substitution(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(seq_rge(range):=seq_rge(range)/|\ii-1^(seq_rge(range)\|/ii));
  List_Substitution(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(seq_rge(range):=seq_rge(range)/|\ii^[vv]^(seq_rge(range)\|/ii));
  List_Substitution(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(seq_rge(range):=<>);
  List_Substitution(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(seq_rge(range):=tail(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(seq_rge(range):=seq_rge(range)/|\min({size(seq_rge(range)),nn}));
  List_Substitution(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(seq_rge(range):=seq_rge(range)\|/nn);
  List_Substitution(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(ANY nseq WHERE nseq: seq(LSR_VALUE) & nseq = %uu.(uu: NATURAL & uu+ii-1: ii..jj/\dom(seq_rge(range)) | seq_rge(range)(uu+ii-1)) THEN seq_rge(range):=nseq END);
  List_Substitution(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(seq_rge(range):=rev(seq_rge(range)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==(ANY nii,nbb,sol WHERE nii: NAT & nbb: BOOL & sol = seq_rge(range)~[{vv}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) THEN ii:=nii || bb:=nbb END);
  List_Substitution(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==(ANY nii,nbb,sol WHERE nii: NAT & nbb: BOOL & sol = seq_rge(range)~[{vv}] & (sol/={} => nii = max(sol)) & nbb = bool(sol/={}) THEN ii:=nii || bb:=nbb END);
  List_Substitution(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(seq_rge:=seq_rge<+{dst|->seq_rge(src)});
  List_Substitution(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(bb:=bool(seq_rge(rng1) = seq_rge(rng2)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(seq_rge(dst):=seq_rge(dst)<+%xx.(xx: idx..idx+jj-ii | seq_rge(src)(xx+ii-idx)));
  List_Substitution(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & seq_rge(rng1)(xx)/=seq_rge(rng2)(xx+kk-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_SEQUENCE_RANGE))==(?);
  Inherited_List_Constants(Machine(L_SEQUENCE_RANGE))==(?);
  List_Constants(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_SEQUENCE_RANGE))==(?);
  Context_List_Defered(Machine(L_SEQUENCE_RANGE))==(?);
  Context_List_Sets(Machine(L_SEQUENCE_RANGE))==(?);
  List_Valuable_Sets(Machine(L_SEQUENCE_RANGE))==(?);
  Inherited_List_Enumerated(Machine(L_SEQUENCE_RANGE))==(?);
  Inherited_List_Defered(Machine(L_SEQUENCE_RANGE))==(?);
  Inherited_List_Sets(Machine(L_SEQUENCE_RANGE))==(?);
  List_Enumerated(Machine(L_SEQUENCE_RANGE))==(?);
  List_Defered(Machine(L_SEQUENCE_RANGE))==(?);
  List_Sets(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_SEQUENCE_RANGE))==(?);
  Expanded_List_HiddenConstants(Machine(L_SEQUENCE_RANGE))==(?);
  List_HiddenConstants(Machine(L_SEQUENCE_RANGE))==(?);
  External_List_HiddenConstants(Machine(L_SEQUENCE_RANGE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_SEQUENCE_RANGE))==(btrue);
  Context_List_Properties(Machine(L_SEQUENCE_RANGE))==(btrue);
  Inherited_List_Properties(Machine(L_SEQUENCE_RANGE))==(btrue);
  List_Properties(Machine(L_SEQUENCE_RANGE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),LEN_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),IS_FULL_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),IS_INDEX_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),VAL_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),FIRST_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),LAST_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),PUSH_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),POP_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),STR_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),RMV_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),INS_AFT_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),CLR_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),TAIL_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),KEEP_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),CUT_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),PART_SEQ_RGE)==(Var(nseq) == SetOf(btype(INTEGER,?,?)*atype(LSR_VALUE,?,?)));
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),REV_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),FIND_FIRST_SEQ_RGE)==((Var(nii) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),FIND_LAST_SEQ_RGE)==((Var(nii) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),COP_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),CMP_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),PCOP_SEQ_RGE)==(?);
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),PCMP_SEQ_RGE)==((Var(nidx) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_SEQUENCE_RANGE),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_SEQUENCE_RANGE)) == (? | ? | seq_rge | ? | LEN_SEQ_RGE,IS_FULL_SEQ_RGE,IS_INDEX_SEQ_RGE,VAL_SEQ_RGE,FIRST_SEQ_RGE,LAST_SEQ_RGE,PUSH_SEQ_RGE,POP_SEQ_RGE,STR_SEQ_RGE,RMV_SEQ_RGE,INS_AFT_SEQ_RGE,CLR_SEQ_RGE,TAIL_SEQ_RGE,KEEP_SEQ_RGE,CUT_SEQ_RGE,PART_SEQ_RGE,REV_SEQ_RGE,FIND_FIRST_SEQ_RGE,FIND_LAST_SEQ_RGE,COP_SEQ_RGE,CMP_SEQ_RGE,PCOP_SEQ_RGE,PCMP_SEQ_RGE | ? | ? | LSR_minrge,LSR_maxrge,LSR_maxsize,LSR_VALUE | L_SEQUENCE_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_SEQUENCE_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_SEQUENCE_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_SEQUENCE_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_SEQUENCE_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_SEQUENCE_RANGE)) == (Type(LSR_VALUE) == Prm(SetOf(atype(LSR_VALUE,?,?)));Type(LSR_maxsize) == Prm(btype(INTEGER,?,?));Type(LSR_maxrge) == Prm(btype(INTEGER,?,?));Type(LSR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_SEQUENCE_RANGE)) == (Type(seq_rge) == Mvl(SetOf(btype(INTEGER,LSR_minrge,LSR_maxrge)*SetOf(btype(INTEGER,?,?)*atype(LSR_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_SEQUENCE_RANGE)) == (Type(PCMP_SEQ_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(FIND_LAST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(FIND_FIRST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(REV_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(PART_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CUT_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(KEEP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(TAIL_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(CLR_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(INS_AFT_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(RMV_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(POP_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?));Type(PUSH_SEQ_RGE) == Cst(No_type,btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(LAST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(FIRST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(VAL_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_INDEX_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_FULL_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(LEN_SEQ_RGE) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(L_SEQUENCE_RANGE)) == (Type(PCMP_SEQ_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(FIND_LAST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(FIND_FIRST_SEQ_RGE) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(LSR_VALUE,?,?));Type(LAST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(FIRST_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?));Type(VAL_SEQ_RGE) == Cst(atype(LSR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_INDEX_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(IS_FULL_SEQ_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(LEN_SEQ_RGE) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
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
)
