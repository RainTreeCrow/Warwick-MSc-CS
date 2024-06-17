Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_PFNC))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_PFNC))==(Machine(L_PFNC));
  Level(Machine(L_PFNC))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_PFNC)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_PFNC))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_PFNC))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_PFNC))==(?);
  List_Includes(Machine(L_PFNC))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_PFNC))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_PFNC))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_PFNC))==(?);
  Context_List_Variables(Machine(L_PFNC))==(?);
  Abstract_List_Variables(Machine(L_PFNC))==(?);
  Local_List_Variables(Machine(L_PFNC))==(pfnc_vrb);
  List_Variables(Machine(L_PFNC))==(pfnc_vrb);
  External_List_Variables(Machine(L_PFNC))==(pfnc_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_PFNC))==(?);
  Abstract_List_VisibleVariables(Machine(L_PFNC))==(?);
  External_List_VisibleVariables(Machine(L_PFNC))==(?);
  Expanded_List_VisibleVariables(Machine(L_PFNC))==(?);
  List_VisibleVariables(Machine(L_PFNC))==(?);
  Internal_List_VisibleVariables(Machine(L_PFNC))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_PFNC))==(btrue);
  Gluing_List_Invariant(Machine(L_PFNC))==(btrue);
  Expanded_List_Invariant(Machine(L_PFNC))==(btrue);
  Abstract_List_Invariant(Machine(L_PFNC))==(btrue);
  Context_List_Invariant(Machine(L_PFNC))==(btrue);
  List_Invariant(Machine(L_PFNC))==(pfnc_vrb: 0..LPF_maxidx +-> LPF_minval..LPF_maxval)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_PFNC))==(btrue);
  Abstract_List_Assertions(Machine(L_PFNC))==(btrue);
  Context_List_Assertions(Machine(L_PFNC))==(btrue);
  List_Assertions(Machine(L_PFNC))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_PFNC))==(pfnc_vrb:={});
  Context_List_Initialisation(Machine(L_PFNC))==(skip);
  List_Initialisation(Machine(L_PFNC))==(pfnc_vrb:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_PFNC))==(LPF_minval,LPF_maxval,LPF_maxidx)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_PFNC))==(btrue);
  List_Constraints(Machine(L_PFNC))==(LPF_minval: NAT & LPF_maxval: NAT & LPF_minval<=LPF_maxval & LPF_maxval/=MAXINT & LPF_maxidx: NAT1 & LPF_maxidx/=MAXINT)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_PFNC))==(VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC);
  List_Operations(Machine(L_PFNC))==(VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_PFNC),VAL_PFNC)==(ii);
  List_Input(Machine(L_PFNC),STR_PFNC)==(ii,vv);
  List_Input(Machine(L_PFNC),XST_PFNC)==(ii);
  List_Input(Machine(L_PFNC),RMV_PFNC)==(ii);
  List_Input(Machine(L_PFNC),SET_PFNC)==(ii,jj,vv);
  List_Input(Machine(L_PFNC),SWAP_PFNC)==(ii,jj);
  List_Input(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(ii,jj,nn);
  List_Input(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(ii,jj,nn);
  List_Input(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(ii,jj,vv);
  List_Input(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(ii,jj,vv);
  List_Input(Machine(L_PFNC),REVERSE_PFNC)==(ii,jj);
  List_Input(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_PFNC),VAL_PFNC)==(vv);
  List_Output(Machine(L_PFNC),STR_PFNC)==(?);
  List_Output(Machine(L_PFNC),XST_PFNC)==(bb);
  List_Output(Machine(L_PFNC),RMV_PFNC)==(?);
  List_Output(Machine(L_PFNC),SET_PFNC)==(?);
  List_Output(Machine(L_PFNC),SWAP_PFNC)==(?);
  List_Output(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(?);
  List_Output(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(?);
  List_Output(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(rr,bb);
  List_Output(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(rr,bb);
  List_Output(Machine(L_PFNC),REVERSE_PFNC)==(?);
  List_Output(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_PFNC),VAL_PFNC)==(vv <-- VAL_PFNC(ii));
  List_Header(Machine(L_PFNC),STR_PFNC)==(STR_PFNC(ii,vv));
  List_Header(Machine(L_PFNC),XST_PFNC)==(bb <-- XST_PFNC(ii));
  List_Header(Machine(L_PFNC),RMV_PFNC)==(RMV_PFNC(ii));
  List_Header(Machine(L_PFNC),SET_PFNC)==(SET_PFNC(ii,jj,vv));
  List_Header(Machine(L_PFNC),SWAP_PFNC)==(SWAP_PFNC(ii,jj));
  List_Header(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(RIGHT_SHIFT_PFNC(ii,jj,nn));
  List_Header(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(LEFT_SHIFT_PFNC(ii,jj,nn));
  List_Header(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(rr,bb <-- SEARCH_MAX_EQL_PFNC(ii,jj,vv));
  List_Header(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(rr,bb <-- SEARCH_MIN_EQL_PFNC(ii,jj,vv));
  List_Header(Machine(L_PFNC),REVERSE_PFNC)==(REVERSE_PFNC(ii,jj));
  List_Header(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(ASCENDING_SORT_PFNC(ii,jj))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_PFNC),VAL_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb));
  List_Precondition(Machine(L_PFNC),STR_PFNC)==(ii: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval);
  List_Precondition(Machine(L_PFNC),XST_PFNC)==(ii: 0..LPF_maxidx);
  List_Precondition(Machine(L_PFNC),RMV_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb));
  List_Precondition(Machine(L_PFNC),SET_PFNC)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval);
  List_Precondition(Machine(L_PFNC),SWAP_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & jj: 0..LPF_maxidx & jj: dom(pfnc_vrb));
  List_Precondition(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(jj: NAT & ii: NAT & nn: NAT & jj+nn: 0..LPF_maxidx & ii<=jj & ii..jj <: dom(pfnc_vrb));
  List_Precondition(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(jj: NAT & ii: NAT & ii<=jj & ii..jj <: dom(pfnc_vrb) & nn: NAT & nn<=ii);
  List_Precondition(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval);
  List_Precondition(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval);
  List_Precondition(Machine(L_PFNC),REVERSE_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb));
  List_Precondition(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb) | @(ff,bb).(ff: ii..jj >->> ii..jj & bb: 0..LPF_maxidx +-> LPF_minval..LPF_maxval & bb = (ff;pfnc_vrb) & !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1)) ==> pfnc_vrb:=pfnc_vrb<+bb));
  Expanded_List_Substitution(Machine(L_PFNC),REVERSE_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii..jj <: dom(pfnc_vrb) | pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii..jj | pfnc_vrb(jj+ii-xx)));
  Expanded_List_Substitution(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|pfnc_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(jj: 0..LPF_maxidx & ii: 0..LPF_maxidx & ii<=jj & vv: LPF_minval..LPF_maxval | @(nrr,nbb,sol).(nrr: NAT & nbb: BOOL & sol = (ii..jj<|pfnc_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) ==> rr,bb:=nrr,nbb));
  Expanded_List_Substitution(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(jj: NAT & ii: NAT & ii<=jj & ii..jj <: dom(pfnc_vrb) & nn: NAT & nn<=ii | pfnc_vrb:=pfnc_vrb<+%xx.(xx: 0..LPF_maxidx & xx+nn: ii..jj | pfnc_vrb(xx+nn)));
  Expanded_List_Substitution(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(jj: NAT & ii: NAT & nn: NAT & jj+nn: 0..LPF_maxidx & ii<=jj & ii..jj <: dom(pfnc_vrb) | pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii+nn..jj+nn | pfnc_vrb(xx-nn)));
  Expanded_List_Substitution(Machine(L_PFNC),SWAP_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) & jj: 0..LPF_maxidx & jj: dom(pfnc_vrb) | pfnc_vrb:=pfnc_vrb<+{ii|->pfnc_vrb(jj),jj|->pfnc_vrb(ii)});
  Expanded_List_Substitution(Machine(L_PFNC),SET_PFNC)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval | pfnc_vrb:=pfnc_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Machine(L_PFNC),RMV_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) | pfnc_vrb:={ii}<<|pfnc_vrb);
  Expanded_List_Substitution(Machine(L_PFNC),XST_PFNC)==(ii: 0..LPF_maxidx | bb:=bool(ii: dom(pfnc_vrb)));
  Expanded_List_Substitution(Machine(L_PFNC),STR_PFNC)==(ii: 0..LPF_maxidx & vv: LPF_minval..LPF_maxval | pfnc_vrb:=pfnc_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(L_PFNC),VAL_PFNC)==(ii: 0..LPF_maxidx & ii: dom(pfnc_vrb) | vv:=pfnc_vrb(ii));
  List_Substitution(Machine(L_PFNC),VAL_PFNC)==(vv:=pfnc_vrb(ii));
  List_Substitution(Machine(L_PFNC),STR_PFNC)==(pfnc_vrb(ii):=vv);
  List_Substitution(Machine(L_PFNC),XST_PFNC)==(bb:=bool(ii: dom(pfnc_vrb)));
  List_Substitution(Machine(L_PFNC),RMV_PFNC)==(pfnc_vrb:={ii}<<|pfnc_vrb);
  List_Substitution(Machine(L_PFNC),SET_PFNC)==(pfnc_vrb:=pfnc_vrb<+(ii..jj)*{vv});
  List_Substitution(Machine(L_PFNC),SWAP_PFNC)==(pfnc_vrb:=pfnc_vrb<+{ii|->pfnc_vrb(jj),jj|->pfnc_vrb(ii)});
  List_Substitution(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii+nn..jj+nn | pfnc_vrb(xx-nn)));
  List_Substitution(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(pfnc_vrb:=pfnc_vrb<+%xx.(xx: 0..LPF_maxidx & xx+nn: ii..jj | pfnc_vrb(xx+nn)));
  List_Substitution(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|pfnc_vrb)~[{vv}] & (sol/={} => nrr = max(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  List_Substitution(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==(ANY nrr,nbb,sol WHERE nrr: NAT & nbb: BOOL & sol = (ii..jj<|pfnc_vrb)~[{vv}] & (sol/={} => nrr = min(sol)) & nbb = bool(sol/={}) THEN rr:=nrr || bb:=nbb END);
  List_Substitution(Machine(L_PFNC),REVERSE_PFNC)==(pfnc_vrb:=pfnc_vrb<+%xx.(xx: ii..jj | pfnc_vrb(jj+ii-xx)));
  List_Substitution(Machine(L_PFNC),ASCENDING_SORT_PFNC)==(ANY ff,bb WHERE ff: ii..jj >->> ii..jj & bb: 0..LPF_maxidx +-> LPF_minval..LPF_maxval & bb = (ff;pfnc_vrb) & !uu.(uu: ii..jj-1 => bb(uu)<=bb(uu+1)) THEN pfnc_vrb:=pfnc_vrb<+bb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_PFNC))==(?);
  Inherited_List_Constants(Machine(L_PFNC))==(?);
  List_Constants(Machine(L_PFNC))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_PFNC))==(?);
  Context_List_Defered(Machine(L_PFNC))==(?);
  Context_List_Sets(Machine(L_PFNC))==(?);
  List_Valuable_Sets(Machine(L_PFNC))==(?);
  Inherited_List_Enumerated(Machine(L_PFNC))==(?);
  Inherited_List_Defered(Machine(L_PFNC))==(?);
  Inherited_List_Sets(Machine(L_PFNC))==(?);
  List_Enumerated(Machine(L_PFNC))==(?);
  List_Defered(Machine(L_PFNC))==(?);
  List_Sets(Machine(L_PFNC))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_PFNC))==(?);
  Expanded_List_HiddenConstants(Machine(L_PFNC))==(?);
  List_HiddenConstants(Machine(L_PFNC))==(?);
  External_List_HiddenConstants(Machine(L_PFNC))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_PFNC))==(btrue);
  Context_List_Properties(Machine(L_PFNC))==(btrue);
  Inherited_List_Properties(Machine(L_PFNC))==(btrue);
  List_Properties(Machine(L_PFNC))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_PFNC),VAL_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),STR_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),XST_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),RMV_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),SET_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),SWAP_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),RIGHT_SHIFT_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),LEFT_SHIFT_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),SEARCH_MAX_EQL_PFNC)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_PFNC),SEARCH_MIN_EQL_PFNC)==((Var(nrr) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_PFNC),REVERSE_PFNC)==(?);
  List_ANY_Var(Machine(L_PFNC),ASCENDING_SORT_PFNC)==((Var(ff) == SetOf(btype(INTEGER,ii,jj)*btype(INTEGER,ii,jj))),(Var(bb) == SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_PFNC),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_PFNC)) == (? | ? | pfnc_vrb | ? | VAL_PFNC,STR_PFNC,XST_PFNC,RMV_PFNC,SET_PFNC,SWAP_PFNC,RIGHT_SHIFT_PFNC,LEFT_SHIFT_PFNC,SEARCH_MAX_EQL_PFNC,SEARCH_MIN_EQL_PFNC,REVERSE_PFNC,ASCENDING_SORT_PFNC | ? | ? | LPF_minval,LPF_maxval,LPF_maxidx | L_PFNC);
  List_Of_HiddenCst_Ids(Machine(L_PFNC)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_PFNC)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_PFNC)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_PFNC)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_PFNC)) == (Type(LPF_maxidx) == Prm(btype(INTEGER,?,?));Type(LPF_maxval) == Prm(btype(INTEGER,?,?));Type(LPF_minval) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_PFNC)) == (Type(pfnc_vrb) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_PFNC)) == (Type(ASCENDING_SORT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(REVERSE_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MIN_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LEFT_SHIFT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RMV_PFNC) == Cst(No_type,btype(INTEGER,?,?));Type(XST_PFNC) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(STR_PFNC) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_PFNC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)));
  Observers(Machine(L_PFNC)) == (Type(SEARCH_MIN_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SEARCH_MAX_EQL_PFNC) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(XST_PFNC) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(VAL_PFNC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)))
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
