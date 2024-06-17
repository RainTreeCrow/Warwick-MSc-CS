Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_SEQUENCE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_SEQUENCE))==(Machine(L_SEQUENCE));
  Level(Machine(L_SEQUENCE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_SEQUENCE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_SEQUENCE))==(?);
  List_Includes(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_SEQUENCE))==(?);
  Context_List_Variables(Machine(L_SEQUENCE))==(?);
  Abstract_List_Variables(Machine(L_SEQUENCE))==(?);
  Local_List_Variables(Machine(L_SEQUENCE))==(seq_vrb);
  List_Variables(Machine(L_SEQUENCE))==(seq_vrb);
  External_List_Variables(Machine(L_SEQUENCE))==(seq_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_SEQUENCE))==(?);
  Abstract_List_VisibleVariables(Machine(L_SEQUENCE))==(?);
  External_List_VisibleVariables(Machine(L_SEQUENCE))==(?);
  Expanded_List_VisibleVariables(Machine(L_SEQUENCE))==(?);
  List_VisibleVariables(Machine(L_SEQUENCE))==(?);
  Internal_List_VisibleVariables(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_SEQUENCE))==(btrue);
  Gluing_List_Invariant(Machine(L_SEQUENCE))==(btrue);
  Expanded_List_Invariant(Machine(L_SEQUENCE))==(btrue);
  Abstract_List_Invariant(Machine(L_SEQUENCE))==(btrue);
  Context_List_Invariant(Machine(L_SEQUENCE))==(btrue);
  List_Invariant(Machine(L_SEQUENCE))==(seq_vrb: seq(LS_VALUE) & size(seq_vrb)<=LS_maxsize)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_SEQUENCE))==(btrue);
  Abstract_List_Assertions(Machine(L_SEQUENCE))==(btrue);
  Context_List_Assertions(Machine(L_SEQUENCE))==(btrue);
  List_Assertions(Machine(L_SEQUENCE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_SEQUENCE))==(seq_vrb:=<>);
  Context_List_Initialisation(Machine(L_SEQUENCE))==(skip);
  List_Initialisation(Machine(L_SEQUENCE))==(seq_vrb:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_SEQUENCE))==(LS_maxsize,LS_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_SEQUENCE))==(btrue);
  List_Constraints(Machine(L_SEQUENCE))==(LS_maxsize: 1..MAXINT-1 & LS_VALUE: FIN(INTEGER) & not(LS_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_SEQUENCE))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ);
  List_Operations(Machine(L_SEQUENCE))==(LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_SEQUENCE),LEN_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),IS_FULL_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(ii);
  List_Input(Machine(L_SEQUENCE),VAL_SEQ)==(ii);
  List_Input(Machine(L_SEQUENCE),FIRST_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),LAST_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),PUSH_SEQ)==(vv);
  List_Input(Machine(L_SEQUENCE),POP_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),STR_SEQ)==(ii,vv);
  List_Input(Machine(L_SEQUENCE),RMV_SEQ)==(ii);
  List_Input(Machine(L_SEQUENCE),INS_AFT_SEQ)==(ii,vv);
  List_Input(Machine(L_SEQUENCE),CLR_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),TAIL_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),KEEP_SEQ)==(nn);
  List_Input(Machine(L_SEQUENCE),CUT_SEQ)==(nn);
  List_Input(Machine(L_SEQUENCE),PART_SEQ)==(ii,jj);
  List_Input(Machine(L_SEQUENCE),REV_SEQ)==(?);
  List_Input(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(vv);
  List_Input(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_SEQUENCE),LEN_SEQ)==(nn);
  List_Output(Machine(L_SEQUENCE),IS_FULL_SEQ)==(bb);
  List_Output(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(bb);
  List_Output(Machine(L_SEQUENCE),VAL_SEQ)==(vv);
  List_Output(Machine(L_SEQUENCE),FIRST_SEQ)==(vv);
  List_Output(Machine(L_SEQUENCE),LAST_SEQ)==(vv);
  List_Output(Machine(L_SEQUENCE),PUSH_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),POP_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),STR_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),RMV_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),INS_AFT_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),CLR_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),TAIL_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),KEEP_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),CUT_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),PART_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),REV_SEQ)==(?);
  List_Output(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(bb,ii);
  List_Output(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(bb,ii)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_SEQUENCE),LEN_SEQ)==(nn <-- LEN_SEQ);
  List_Header(Machine(L_SEQUENCE),IS_FULL_SEQ)==(bb <-- IS_FULL_SEQ);
  List_Header(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(bb <-- IS_INDEX_SEQ(ii));
  List_Header(Machine(L_SEQUENCE),VAL_SEQ)==(vv <-- VAL_SEQ(ii));
  List_Header(Machine(L_SEQUENCE),FIRST_SEQ)==(vv <-- FIRST_SEQ);
  List_Header(Machine(L_SEQUENCE),LAST_SEQ)==(vv <-- LAST_SEQ);
  List_Header(Machine(L_SEQUENCE),PUSH_SEQ)==(PUSH_SEQ(vv));
  List_Header(Machine(L_SEQUENCE),POP_SEQ)==(POP_SEQ);
  List_Header(Machine(L_SEQUENCE),STR_SEQ)==(STR_SEQ(ii,vv));
  List_Header(Machine(L_SEQUENCE),RMV_SEQ)==(RMV_SEQ(ii));
  List_Header(Machine(L_SEQUENCE),INS_AFT_SEQ)==(INS_AFT_SEQ(ii,vv));
  List_Header(Machine(L_SEQUENCE),CLR_SEQ)==(CLR_SEQ);
  List_Header(Machine(L_SEQUENCE),TAIL_SEQ)==(TAIL_SEQ);
  List_Header(Machine(L_SEQUENCE),KEEP_SEQ)==(KEEP_SEQ(nn));
  List_Header(Machine(L_SEQUENCE),CUT_SEQ)==(CUT_SEQ(nn));
  List_Header(Machine(L_SEQUENCE),PART_SEQ)==(PART_SEQ(ii,jj));
  List_Header(Machine(L_SEQUENCE),REV_SEQ)==(REV_SEQ);
  List_Header(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(bb,ii <-- FIND_FIRST_SEQ(vv));
  List_Header(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(bb,ii <-- FIND_LAST_SEQ(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_SEQUENCE),LEN_SEQ)==(btrue);
  List_Precondition(Machine(L_SEQUENCE),IS_FULL_SEQ)==(btrue);
  List_Precondition(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(ii: NAT);
  List_Precondition(Machine(L_SEQUENCE),VAL_SEQ)==(ii: NAT & ii: 1..size(seq_vrb));
  List_Precondition(Machine(L_SEQUENCE),FIRST_SEQ)==(size(seq_vrb)/=0);
  List_Precondition(Machine(L_SEQUENCE),LAST_SEQ)==(size(seq_vrb)/=0);
  List_Precondition(Machine(L_SEQUENCE),PUSH_SEQ)==(vv: LS_VALUE & size(seq_vrb)/=LS_maxsize);
  List_Precondition(Machine(L_SEQUENCE),POP_SEQ)==(size(seq_vrb)/=0);
  List_Precondition(Machine(L_SEQUENCE),STR_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) & vv: LS_VALUE);
  List_Precondition(Machine(L_SEQUENCE),RMV_SEQ)==(ii: NAT & ii: 1..size(seq_vrb));
  List_Precondition(Machine(L_SEQUENCE),INS_AFT_SEQ)==(ii: NAT & ii: 0..size(seq_vrb) & vv: LS_VALUE & size(seq_vrb)/=LS_maxsize);
  List_Precondition(Machine(L_SEQUENCE),CLR_SEQ)==(btrue);
  List_Precondition(Machine(L_SEQUENCE),TAIL_SEQ)==(size(seq_vrb)/=0);
  List_Precondition(Machine(L_SEQUENCE),KEEP_SEQ)==(nn: NAT);
  List_Precondition(Machine(L_SEQUENCE),CUT_SEQ)==(nn: NAT);
  List_Precondition(Machine(L_SEQUENCE),PART_SEQ)==(ii: NAT1 & jj: NAT1 & ii<=jj);
  List_Precondition(Machine(L_SEQUENCE),REV_SEQ)==(btrue);
  List_Precondition(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(vv: LS_VALUE);
  List_Precondition(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(vv: LS_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(vv: LS_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = seq_vrb~[{vv}] & (sol/={} => nii = max(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nii,nbb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(vv: LS_VALUE | @(nii,nbb,sol).(nii: NAT & nbb: BOOL & sol = seq_vrb~[{vv}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) ==> ii,bb:=nii,nbb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),REV_SEQ)==(btrue | seq_vrb:=rev(seq_vrb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),PART_SEQ)==(ii: NAT1 & jj: NAT1 & ii<=jj | @nseq.(nseq: seq(LS_VALUE) & nseq = %uu.(uu: NATURAL & uu+ii-1: ii..jj/\dom(seq_vrb) | seq_vrb(uu+ii-1)) ==> seq_vrb:=nseq));
  Expanded_List_Substitution(Machine(L_SEQUENCE),CUT_SEQ)==(nn: NAT | seq_vrb:=seq_vrb\|/nn);
  Expanded_List_Substitution(Machine(L_SEQUENCE),KEEP_SEQ)==(nn: NAT | seq_vrb:=seq_vrb/|\min({size(seq_vrb),nn}));
  Expanded_List_Substitution(Machine(L_SEQUENCE),TAIL_SEQ)==(size(seq_vrb)/=0 | seq_vrb:=tail(seq_vrb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),CLR_SEQ)==(btrue | seq_vrb:=<>);
  Expanded_List_Substitution(Machine(L_SEQUENCE),INS_AFT_SEQ)==(ii: NAT & ii: 0..size(seq_vrb) & vv: LS_VALUE & size(seq_vrb)/=LS_maxsize | seq_vrb:=seq_vrb/|\ii^[vv]^(seq_vrb\|/ii));
  Expanded_List_Substitution(Machine(L_SEQUENCE),RMV_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) | seq_vrb:=seq_vrb/|\ii-1^(seq_vrb\|/ii));
  Expanded_List_Substitution(Machine(L_SEQUENCE),STR_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) & vv: LS_VALUE | seq_vrb:=seq_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(L_SEQUENCE),POP_SEQ)==(size(seq_vrb)/=0 | seq_vrb:=front(seq_vrb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),PUSH_SEQ)==(vv: LS_VALUE & size(seq_vrb)/=LS_maxsize | seq_vrb:=seq_vrb<-vv);
  Expanded_List_Substitution(Machine(L_SEQUENCE),LAST_SEQ)==(size(seq_vrb)/=0 | vv:=last(seq_vrb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),FIRST_SEQ)==(size(seq_vrb)/=0 | vv:=first(seq_vrb));
  Expanded_List_Substitution(Machine(L_SEQUENCE),VAL_SEQ)==(ii: NAT & ii: 1..size(seq_vrb) | vv:=seq_vrb(ii));
  Expanded_List_Substitution(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(ii: NAT | bb:=bool(ii: 1..size(seq_vrb)));
  Expanded_List_Substitution(Machine(L_SEQUENCE),IS_FULL_SEQ)==(btrue | bb:=bool(size(seq_vrb) = LS_maxsize));
  Expanded_List_Substitution(Machine(L_SEQUENCE),LEN_SEQ)==(btrue | nn:=size(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),LEN_SEQ)==(nn:=size(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),IS_FULL_SEQ)==(bb:=bool(size(seq_vrb) = LS_maxsize));
  List_Substitution(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(bb:=bool(ii: 1..size(seq_vrb)));
  List_Substitution(Machine(L_SEQUENCE),VAL_SEQ)==(vv:=seq_vrb(ii));
  List_Substitution(Machine(L_SEQUENCE),FIRST_SEQ)==(vv:=first(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),LAST_SEQ)==(vv:=last(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),PUSH_SEQ)==(seq_vrb:=seq_vrb<-vv);
  List_Substitution(Machine(L_SEQUENCE),POP_SEQ)==(seq_vrb:=front(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),STR_SEQ)==(seq_vrb(ii):=vv);
  List_Substitution(Machine(L_SEQUENCE),RMV_SEQ)==(seq_vrb:=seq_vrb/|\ii-1^(seq_vrb\|/ii));
  List_Substitution(Machine(L_SEQUENCE),INS_AFT_SEQ)==(seq_vrb:=seq_vrb/|\ii^[vv]^(seq_vrb\|/ii));
  List_Substitution(Machine(L_SEQUENCE),CLR_SEQ)==(seq_vrb:=<>);
  List_Substitution(Machine(L_SEQUENCE),TAIL_SEQ)==(seq_vrb:=tail(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),KEEP_SEQ)==(seq_vrb:=seq_vrb/|\min({size(seq_vrb),nn}));
  List_Substitution(Machine(L_SEQUENCE),CUT_SEQ)==(seq_vrb:=seq_vrb\|/nn);
  List_Substitution(Machine(L_SEQUENCE),PART_SEQ)==(ANY nseq WHERE nseq: seq(LS_VALUE) & nseq = %uu.(uu: NATURAL & uu+ii-1: ii..jj/\dom(seq_vrb) | seq_vrb(uu+ii-1)) THEN seq_vrb:=nseq END);
  List_Substitution(Machine(L_SEQUENCE),REV_SEQ)==(seq_vrb:=rev(seq_vrb));
  List_Substitution(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==(ANY nii,nbb,sol WHERE nii: NAT & nbb: BOOL & sol = seq_vrb~[{vv}] & (sol/={} => nii = min(sol)) & nbb = bool(sol/={}) THEN ii:=nii || bb:=nbb END);
  List_Substitution(Machine(L_SEQUENCE),FIND_LAST_SEQ)==(ANY nii,nbb,sol WHERE nii: NAT & nbb: BOOL & sol = seq_vrb~[{vv}] & (sol/={} => nii = max(sol)) & nbb = bool(sol/={}) THEN ii:=nii || bb:=nbb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_SEQUENCE))==(?);
  Inherited_List_Constants(Machine(L_SEQUENCE))==(?);
  List_Constants(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_SEQUENCE))==(?);
  Context_List_Defered(Machine(L_SEQUENCE))==(?);
  Context_List_Sets(Machine(L_SEQUENCE))==(?);
  List_Valuable_Sets(Machine(L_SEQUENCE))==(?);
  Inherited_List_Enumerated(Machine(L_SEQUENCE))==(?);
  Inherited_List_Defered(Machine(L_SEQUENCE))==(?);
  Inherited_List_Sets(Machine(L_SEQUENCE))==(?);
  List_Enumerated(Machine(L_SEQUENCE))==(?);
  List_Defered(Machine(L_SEQUENCE))==(?);
  List_Sets(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_SEQUENCE))==(?);
  Expanded_List_HiddenConstants(Machine(L_SEQUENCE))==(?);
  List_HiddenConstants(Machine(L_SEQUENCE))==(?);
  External_List_HiddenConstants(Machine(L_SEQUENCE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_SEQUENCE))==(btrue);
  Context_List_Properties(Machine(L_SEQUENCE))==(btrue);
  Inherited_List_Properties(Machine(L_SEQUENCE))==(btrue);
  List_Properties(Machine(L_SEQUENCE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_SEQUENCE),LEN_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),IS_FULL_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),IS_INDEX_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),VAL_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),FIRST_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),LAST_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),PUSH_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),POP_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),STR_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),RMV_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),INS_AFT_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),CLR_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),TAIL_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),KEEP_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),CUT_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),PART_SEQ)==(Var(nseq) == SetOf(btype(INTEGER,?,?)*atype(LS_VALUE,?,?)));
  List_ANY_Var(Machine(L_SEQUENCE),REV_SEQ)==(?);
  List_ANY_Var(Machine(L_SEQUENCE),FIND_FIRST_SEQ)==((Var(nii) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_SEQUENCE),FIND_LAST_SEQ)==((Var(nii) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_SEQUENCE),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_SEQUENCE)) == (? | ? | seq_vrb | ? | LEN_SEQ,IS_FULL_SEQ,IS_INDEX_SEQ,VAL_SEQ,FIRST_SEQ,LAST_SEQ,PUSH_SEQ,POP_SEQ,STR_SEQ,RMV_SEQ,INS_AFT_SEQ,CLR_SEQ,TAIL_SEQ,KEEP_SEQ,CUT_SEQ,PART_SEQ,REV_SEQ,FIND_FIRST_SEQ,FIND_LAST_SEQ | ? | ? | LS_maxsize,LS_VALUE | L_SEQUENCE);
  List_Of_HiddenCst_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_SEQUENCE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_SEQUENCE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_SEQUENCE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_SEQUENCE)) == (Type(LS_VALUE) == Prm(SetOf(atype(LS_VALUE,?,?)));Type(LS_maxsize) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_SEQUENCE)) == (Type(seq_vrb) == Mvl(SetOf(btype(INTEGER,?,?)*atype(LS_VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_SEQUENCE)) == (Type(FIND_LAST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(FIND_FIRST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(REV_SEQ) == Cst(No_type,No_type);Type(PART_SEQ) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CUT_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(KEEP_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(TAIL_SEQ) == Cst(No_type,No_type);Type(CLR_SEQ) == Cst(No_type,No_type);Type(INS_AFT_SEQ) == Cst(No_type,btype(INTEGER,?,?)*atype(LS_VALUE,?,?));Type(RMV_SEQ) == Cst(No_type,btype(INTEGER,?,?));Type(STR_SEQ) == Cst(No_type,btype(INTEGER,?,?)*atype(LS_VALUE,?,?));Type(POP_SEQ) == Cst(No_type,No_type);Type(PUSH_SEQ) == Cst(No_type,atype(LS_VALUE,?,?));Type(LAST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(FIRST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(VAL_SEQ) == Cst(atype(LS_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SEQ) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SEQ) == Cst(btype(BOOL,?,?),No_type);Type(LEN_SEQ) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(L_SEQUENCE)) == (Type(FIND_LAST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(FIND_FIRST_SEQ) == Cst(btype(BOOL,?,?)*btype(INTEGER,?,?),atype(LS_VALUE,?,?));Type(LAST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(FIRST_SEQ) == Cst(atype(LS_VALUE,?,?),No_type);Type(VAL_SEQ) == Cst(atype(LS_VALUE,?,?),btype(INTEGER,?,?));Type(IS_INDEX_SEQ) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(IS_FULL_SEQ) == Cst(btype(BOOL,?,?),No_type);Type(LEN_SEQ) == Cst(btype(INTEGER,?,?),No_type))
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
