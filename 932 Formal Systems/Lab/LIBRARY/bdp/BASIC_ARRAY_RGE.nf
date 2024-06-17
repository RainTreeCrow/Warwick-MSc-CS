Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_ARRAY_RGE))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_ARRAY_RGE))==(Machine(BASIC_ARRAY_RGE));
  Level(Machine(BASIC_ARRAY_RGE))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_ARRAY_RGE)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_ARRAY_RGE))==(?);
  List_Includes(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_ARRAY_RGE))==(?);
  Context_List_Variables(Machine(BASIC_ARRAY_RGE))==(?);
  Abstract_List_Variables(Machine(BASIC_ARRAY_RGE))==(?);
  Local_List_Variables(Machine(BASIC_ARRAY_RGE))==(arr_rge);
  List_Variables(Machine(BASIC_ARRAY_RGE))==(arr_rge);
  External_List_Variables(Machine(BASIC_ARRAY_RGE))==(arr_rge)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?);
  External_List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?);
  List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_ARRAY_RGE))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_ARRAY_RGE))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_ARRAY_RGE))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_ARRAY_RGE))==(btrue);
  Context_List_Invariant(Machine(BASIC_ARRAY_RGE))==(btrue);
  List_Invariant(Machine(BASIC_ARRAY_RGE))==(arr_rge: BAR_RANGE --> (BAR_INDEX --> BAR_VALUE))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_ARRAY_RGE))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_ARRAY_RGE))==(btrue);
  Context_List_Assertions(Machine(BASIC_ARRAY_RGE))==(btrue);
  List_Assertions(Machine(BASIC_ARRAY_RGE))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_ARRAY_RGE))==(@(arr_rge$0).(arr_rge$0: BAR_RANGE --> (BAR_INDEX --> BAR_VALUE) ==> arr_rge:=arr_rge$0));
  Context_List_Initialisation(Machine(BASIC_ARRAY_RGE))==(skip);
  List_Initialisation(Machine(BASIC_ARRAY_RGE))==(arr_rge:: BAR_RANGE --> (BAR_INDEX --> BAR_VALUE))
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_ARRAY_RGE))==(BAR_INDEX,BAR_VALUE,BAR_RANGE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_ARRAY_RGE))==(btrue);
  List_Constraints(Machine(BASIC_ARRAY_RGE))==(BAR_INDEX: FIN(INTEGER) & not(BAR_INDEX = {}) & BAR_VALUE: FIN(INTEGER) & not(BAR_VALUE = {}) & BAR_RANGE: FIN(INTEGER) & not(BAR_RANGE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_ARRAY_RGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE);
  List_Operations(Machine(BASIC_ARRAY_RGE))==(VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(range,index);
  List_Input(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(range,index,value);
  List_Input(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(dest,src);
  List_Input(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(range1,range2)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(value);
  List_Output(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(?);
  List_Output(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(?);
  List_Output(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(value <-- VAL_ARR_RGE(range,index));
  List_Header(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(STR_ARR_RGE(range,index,value));
  List_Header(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(COP_ARR_RGE(dest,src));
  List_Header(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(bb <-- CMP_ARR_RGE(range1,range2))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(range: BAR_RANGE & index: BAR_INDEX);
  List_Precondition(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(range: BAR_RANGE & index: BAR_INDEX & value: BAR_VALUE);
  List_Precondition(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(dest: BAR_RANGE & src: BAR_RANGE);
  List_Precondition(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(range1: BAR_RANGE & range2: BAR_RANGE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(range1: BAR_RANGE & range2: BAR_RANGE | bb:=bool(arr_rge(range1) = arr_rge(range2)));
  Expanded_List_Substitution(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(dest: BAR_RANGE & src: BAR_RANGE | arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  Expanded_List_Substitution(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(range: BAR_RANGE & index: BAR_INDEX & value: BAR_VALUE | arr_rge:=arr_rge<+{range|->(arr_rge(range)<+{index|->value})});
  Expanded_List_Substitution(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(range: BAR_RANGE & index: BAR_INDEX | value:=arr_rge(range)(index));
  List_Substitution(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(value:=arr_rge(range)(index));
  List_Substitution(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(arr_rge(range)(index):=value);
  List_Substitution(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(arr_rge:=arr_rge<+{dest|->arr_rge(src)});
  List_Substitution(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(bb:=bool(arr_rge(range1) = arr_rge(range2)))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_ARRAY_RGE))==(?);
  Inherited_List_Constants(Machine(BASIC_ARRAY_RGE))==(?);
  List_Constants(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(BASIC_ARRAY_RGE))==(?);
  Context_List_Defered(Machine(BASIC_ARRAY_RGE))==(?);
  Context_List_Sets(Machine(BASIC_ARRAY_RGE))==(?);
  List_Valuable_Sets(Machine(BASIC_ARRAY_RGE))==(?);
  Inherited_List_Enumerated(Machine(BASIC_ARRAY_RGE))==(?);
  Inherited_List_Defered(Machine(BASIC_ARRAY_RGE))==(?);
  Inherited_List_Sets(Machine(BASIC_ARRAY_RGE))==(?);
  List_Enumerated(Machine(BASIC_ARRAY_RGE))==(?);
  List_Defered(Machine(BASIC_ARRAY_RGE))==(?);
  List_Sets(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_ARRAY_RGE))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_ARRAY_RGE))==(?);
  List_HiddenConstants(Machine(BASIC_ARRAY_RGE))==(?);
  External_List_HiddenConstants(Machine(BASIC_ARRAY_RGE))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_ARRAY_RGE))==(btrue);
  Context_List_Properties(Machine(BASIC_ARRAY_RGE))==(btrue);
  Inherited_List_Properties(Machine(BASIC_ARRAY_RGE))==(btrue);
  List_Properties(Machine(BASIC_ARRAY_RGE))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_ARRAY_RGE),VAL_ARR_RGE)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_RGE),STR_ARR_RGE)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_RGE),COP_ARR_RGE)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_RGE),CMP_ARR_RGE)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_RGE),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ? | arr_rge | ? | VAL_ARR_RGE,STR_ARR_RGE,COP_ARR_RGE,CMP_ARR_RGE | ? | ? | BAR_INDEX,BAR_VALUE,BAR_RANGE | BASIC_ARRAY_RGE);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_RGE)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_RGE)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_RGE)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(BASIC_ARRAY_RGE)) == (Type(BAR_RANGE) == Prm(SetOf(atype(BAR_RANGE,?,?)));Type(BAR_VALUE) == Prm(SetOf(atype(BAR_VALUE,?,?)));Type(BAR_INDEX) == Prm(SetOf(atype(BAR_INDEX,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BASIC_ARRAY_RGE)) == (Type(arr_rge) == Mvl(SetOf(atype(BAR_RANGE,?,?)*SetOf(atype(BAR_INDEX,?,?)*atype(BAR_VALUE,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_ARRAY_RGE)) == (Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),atype(BAR_RANGE,?,?)*atype(BAR_RANGE,?,?));Type(COP_ARR_RGE) == Cst(No_type,atype(BAR_RANGE,?,?)*atype(BAR_RANGE,?,?));Type(STR_ARR_RGE) == Cst(No_type,atype(BAR_RANGE,?,?)*atype(BAR_INDEX,?,?)*atype(BAR_VALUE,?,?));Type(VAL_ARR_RGE) == Cst(atype(BAR_VALUE,?,?),atype(BAR_RANGE,?,?)*atype(BAR_INDEX,?,?)));
  Observers(Machine(BASIC_ARRAY_RGE)) == (Type(CMP_ARR_RGE) == Cst(btype(BOOL,?,?),atype(BAR_RANGE,?,?)*atype(BAR_RANGE,?,?));Type(VAL_ARR_RGE) == Cst(atype(BAR_VALUE,?,?),atype(BAR_RANGE,?,?)*atype(BAR_INDEX,?,?)))
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
