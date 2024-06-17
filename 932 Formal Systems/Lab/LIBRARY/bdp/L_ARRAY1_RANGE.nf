Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY1_RANGE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY1_RANGE))==(Machine(L_ARRAY1_RANGE));
  Level(Machine(L_ARRAY1_RANGE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY1_RANGE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY1_RANGE))==(?);
  List_Includes(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY1_RANGE))==(?);
  Context_List_Variables(Machine(L_ARRAY1_RANGE))==(?);
  Abstract_List_Variables(Machine(L_ARRAY1_RANGE))==(?);
  Local_List_Variables(Machine(L_ARRAY1_RANGE))==(arr_rge);
  List_Variables(Machine(L_ARRAY1_RANGE))==(arr_rge);
  External_List_Variables(Machine(L_ARRAY1_RANGE))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?);
  List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY1_RANGE))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY1_RANGE))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY1_RANGE))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY1_RANGE))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY1_RANGE))==(btrue);
  List_Invariant(Machine(L_ARRAY1_RANGE))==(arr_rge: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY1_RANGE))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY1_RANGE))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY1_RANGE))==(btrue);
  List_Assertions(Machine(L_ARRAY1_RANGE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY1_RANGE))==(@(arr_rge$0).(arr_rge$0: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Machine(L_ARRAY1_RANGE))==(skip);
  List_Initialisation(Machine(L_ARRAY1_RANGE))==(arr_rge:: LAUR_minrge..LAUR_maxrge --> (0..LAUR_maxidx --> LAUR_VALUE))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY1_RANGE))==(LAUR_minrge,LAUR_maxrge,LAUR_maxidx,LAUR_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY1_RANGE))==(btrue);
  List_Constraints(Machine(L_ARRAY1_RANGE))==(LAUR_maxidx: NAT1 & LAUR_minrge: NAT & LAUR_maxrge: NAT & LAUR_minrge<LAUR_maxrge & LAUR_VALUE: FIN(INTEGER) & not(LAUR_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY1_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE);
  List_Operations(Machine(L_ARRAY1_RANGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(range,index);
  List_Input(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(range,index,value);
  List_Input(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(dest,src);
  List_Input(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(range1,range2);
  List_Input(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(dest1,dest2,src);
  List_Input(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(range,ii,jj,vv);
  List_Input(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(dest,idx_dst,src,ii,jj);
  List_Input(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(rng2,idx2,rng1,ii,jj)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(value);
  List_Output(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(?);
  List_Output(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(?);
  List_Output(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(bb);
  List_Output(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(?);
  List_Output(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(?);
  List_Output(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(?);
  List_Output(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(idx,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2));
  List_Header(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(DUP_ARR_RGE(dest1,dest2,src));
  List_Header(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(SET_ARR_RGE(range,ii,jj,vv));
  List_Header(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(PCOP_ARR_RGE(dest,idx_dst,src,ii,jj));
  List_Header(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(idx,bb <-- PCMP_ARR_RGE(rng2,idx2,rng1,ii,jj))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx);
  List_Precondition(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx & value: LAUR_VALUE);
  List_Precondition(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge);
  List_Precondition(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(range1: LAUR_minrge..LAUR_maxrge & range2: LAUR_minrge..LAUR_maxrge);
  List_Precondition(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge);
  List_Precondition(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAUR_maxidx & vv: LAUR_VALUE);
  List_Precondition(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & idx_dst: 0..LAUR_maxidx & src: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAUR_maxidx);
  List_Precondition(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(rng2: LAUR_minrge..LAUR_maxrge & idx2: 0..LAUR_maxidx & rng1: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & ii<=jj & idx2+jj-ii: 0..LAUR_maxidx)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(rng2: LAUR_minrge..LAUR_maxrge & idx2: 0..LAUR_maxidx & rng1: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & ii<=jj & idx2+jj-ii: 0..LAUR_maxidx | @(nidx,nbb,sol).(nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) ==> idx,bb:=nidx,nbb));
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & idx_dst: 0..LAUR_maxidx & src: LAUR_minrge..LAUR_maxrge & ii: 0..LAUR_maxidx & jj: 0..LAUR_maxidx & dest/=src & jj<=MAXINT-1 & ii<=jj & idx_dst+jj-ii: 0..LAUR_maxidx | arr_rge:=arr_rge<+{dest|->(arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)))});
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAUR_maxidx & vv: LAUR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+(ii..jj)*{vv})});
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(dest1: NAT & dest2: NAT & dest2/=MAXINT & dest1..dest2 <: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge | arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(range1: LAUR_minrge..LAUR_maxrge & range2: LAUR_minrge..LAUR_maxrge | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(dest: LAUR_minrge..LAUR_maxrge & src: LAUR_minrge..LAUR_maxrge | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx & value: LAUR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  Expanded_List_Substitution(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(range: LAUR_minrge..LAUR_maxrge & index: 0..LAUR_maxidx | value:=arr_rge(range)(index));
  List_Substitution(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  List_Substitution(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  List_Substitution(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)));
  List_Substitution(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(arr_rge:=arr_rge<+(dest1..dest2)*{arr_rge(src)});
  List_Substitution(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(arr_rge(range):=arr_rge(range)<+(ii..jj)*{vv});
  List_Substitution(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(arr_rge(dest):=arr_rge(dest)<+%xx.(xx: idx_dst..idx_dst+jj-ii | arr_rge(src)(xx+ii-idx_dst)));
  List_Substitution(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==(ANY nidx,nbb,sol WHERE nidx: NAT & nbb: BOOL & sol = {xx | xx: ii..jj & arr_rge(rng1)(xx)/=arr_rge(rng2)(xx+idx2-ii)} & (sol/={} => nidx = min(sol)) & nbb = bool(sol/={}) THEN idx:=nidx || bb:=nbb END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY1_RANGE))==(?);
  Inherited_List_Constants(Machine(L_ARRAY1_RANGE))==(?);
  List_Constants(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY1_RANGE))==(?);
  Context_List_Defered(Machine(L_ARRAY1_RANGE))==(?);
  Context_List_Sets(Machine(L_ARRAY1_RANGE))==(?);
  List_Valuable_Sets(Machine(L_ARRAY1_RANGE))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY1_RANGE))==(?);
  Inherited_List_Defered(Machine(L_ARRAY1_RANGE))==(?);
  Inherited_List_Sets(Machine(L_ARRAY1_RANGE))==(?);
  List_Enumerated(Machine(L_ARRAY1_RANGE))==(?);
  List_Defered(Machine(L_ARRAY1_RANGE))==(?);
  List_Sets(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY1_RANGE))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY1_RANGE))==(?);
  List_HiddenConstants(Machine(L_ARRAY1_RANGE))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY1_RANGE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY1_RANGE))==(btrue);
  Context_List_Properties(Machine(L_ARRAY1_RANGE))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY1_RANGE))==(btrue);
  List_Properties(Machine(L_ARRAY1_RANGE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY1_RANGE),VAL_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),STR_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),COP_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),CMP_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),DUP_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),SET_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),PCOP_ARR_RGE)==(?);
  List_ANY_Var(Machine(L_ARRAY1_RANGE),PCMP_ARR_RGE)==((Var(nidx) == btype(INTEGER,?,?)),(Var(nbb) == btype(BOOL,?,?)),(Var(sol) == SetOf(btype(INTEGER,?,?))));
  List_ANY_Var(Machine(L_ARRAY1_RANGE),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY1_RANGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE,DUP_ARR_RGE,SET_ARR_RGE,PCOP_ARR_RGE,PCMP_ARR_RGE | ? | ? | LAUR_minrge,LAUR_maxrge,LAUR_maxidx,LAUR_VALUE | L_ARRAY1_RANGE);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1_RANGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1_RANGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1_RANGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1_RANGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY1_RANGE)) == (Type(LAUR_VALUE) == Prm(SetOf(atype(LAUR_VALUE,?,?)));Type(LAUR_maxidx) == Prm(btype(INTEGER,?,?));Type(LAUR_maxrge) == Prm(btype(INTEGER,?,?));Type(LAUR_minrge) == Prm(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY1_RANGE)) == (Type(arr_rge) == Mvl(SetOf(btype(INTEGER,LAUR_minrge,LAUR_maxrge)*SetOf(btype(INTEGER,0,LAUR_maxidx)*atype(LAUR_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY1_RANGE)) == (Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(PCOP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAUR_VALUE,?,?));Type(DUP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(COP_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(STR_ARR_RGE) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAUR_VALUE,?,?));Type(VAL_ARR_RGE) == Cst(atype(LAUR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(L_ARRAY1_RANGE)) == (Type(PCMP_ARR_RGE) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(VAL_ARR_RGE) == Cst(atype(LAUR_VALUE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
