Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(BASIC_ARRAY_VAR))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(BASIC_ARRAY_VAR))==(Machine(BASIC_ARRAY_VAR));
  Level(Machine(BASIC_ARRAY_VAR))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(BASIC_ARRAY_VAR)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(BASIC_ARRAY_VAR))==(?);
  List_Includes(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(BASIC_ARRAY_VAR))==(?);
  Context_List_Variables(Machine(BASIC_ARRAY_VAR))==(?);
  Abstract_List_Variables(Machine(BASIC_ARRAY_VAR))==(?);
  Local_List_Variables(Machine(BASIC_ARRAY_VAR))==(arr_vrb);
  List_Variables(Machine(BASIC_ARRAY_VAR))==(arr_vrb);
  External_List_Variables(Machine(BASIC_ARRAY_VAR))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?);
  Abstract_List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?);
  External_List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?);
  Expanded_List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?);
  List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?);
  Internal_List_VisibleVariables(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(BASIC_ARRAY_VAR))==(btrue);
  Gluing_List_Invariant(Machine(BASIC_ARRAY_VAR))==(btrue);
  Expanded_List_Invariant(Machine(BASIC_ARRAY_VAR))==(btrue);
  Abstract_List_Invariant(Machine(BASIC_ARRAY_VAR))==(btrue);
  Context_List_Invariant(Machine(BASIC_ARRAY_VAR))==(btrue);
  List_Invariant(Machine(BASIC_ARRAY_VAR))==(arr_vrb: BAV_INDEX --> BAV_VALUE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(BASIC_ARRAY_VAR))==(btrue);
  Abstract_List_Assertions(Machine(BASIC_ARRAY_VAR))==(btrue);
  Context_List_Assertions(Machine(BASIC_ARRAY_VAR))==(btrue);
  List_Assertions(Machine(BASIC_ARRAY_VAR))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(BASIC_ARRAY_VAR))==(@(arr_vrb$0).(arr_vrb$0: BAV_INDEX --> BAV_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Machine(BASIC_ARRAY_VAR))==(skip);
  List_Initialisation(Machine(BASIC_ARRAY_VAR))==(arr_vrb:: BAV_INDEX --> BAV_VALUE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(BASIC_ARRAY_VAR))==(BAV_INDEX,BAV_VALUE)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(BASIC_ARRAY_VAR))==(btrue);
  List_Constraints(Machine(BASIC_ARRAY_VAR))==(BAV_INDEX: FIN(INTEGER) & not(BAV_INDEX = {}) & BAV_VALUE: FIN(INTEGER) & not(BAV_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(BASIC_ARRAY_VAR))==(VAL_ARRAY,STR_ARRAY);
  List_Operations(Machine(BASIC_ARRAY_VAR))==(VAL_ARRAY,STR_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(ii);
  List_Input(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(ii,vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(vv);
  List_Output(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(STR_ARRAY(ii,vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(ii: BAV_INDEX);
  List_Precondition(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(ii: BAV_INDEX & vv: BAV_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(ii: BAV_INDEX & vv: BAV_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(ii: BAV_INDEX | vv:=arr_vrb(ii));
  List_Substitution(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(vv:=arr_vrb(ii));
  List_Substitution(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(arr_vrb(ii):=vv)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(BASIC_ARRAY_VAR))==(?);
  Inherited_List_Constants(Machine(BASIC_ARRAY_VAR))==(?);
  List_Constants(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(BASIC_ARRAY_VAR))==(?);
  Context_List_Defered(Machine(BASIC_ARRAY_VAR))==(?);
  Context_List_Sets(Machine(BASIC_ARRAY_VAR))==(?);
  List_Valuable_Sets(Machine(BASIC_ARRAY_VAR))==(?);
  Inherited_List_Enumerated(Machine(BASIC_ARRAY_VAR))==(?);
  Inherited_List_Defered(Machine(BASIC_ARRAY_VAR))==(?);
  Inherited_List_Sets(Machine(BASIC_ARRAY_VAR))==(?);
  List_Enumerated(Machine(BASIC_ARRAY_VAR))==(?);
  List_Defered(Machine(BASIC_ARRAY_VAR))==(?);
  List_Sets(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(BASIC_ARRAY_VAR))==(?);
  Expanded_List_HiddenConstants(Machine(BASIC_ARRAY_VAR))==(?);
  List_HiddenConstants(Machine(BASIC_ARRAY_VAR))==(?);
  External_List_HiddenConstants(Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(BASIC_ARRAY_VAR))==(btrue);
  Context_List_Properties(Machine(BASIC_ARRAY_VAR))==(btrue);
  Inherited_List_Properties(Machine(BASIC_ARRAY_VAR))==(btrue);
  List_Properties(Machine(BASIC_ARRAY_VAR))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(BASIC_ARRAY_VAR),VAL_ARRAY)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_VAR),STR_ARRAY)==(?);
  List_ANY_Var(Machine(BASIC_ARRAY_VAR),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY | ? | ? | BAV_INDEX,BAV_VALUE | BASIC_ARRAY_VAR);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_VAR)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_VAR)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(BASIC_ARRAY_VAR)) == (Type(BAV_VALUE) == Prm(SetOf(atype(BAV_VALUE,?,?)));Type(BAV_INDEX) == Prm(SetOf(atype(BAV_INDEX,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(BASIC_ARRAY_VAR)) == (Type(arr_vrb) == Mvl(SetOf(atype(BAV_INDEX,?,?)*atype(BAV_VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(BASIC_ARRAY_VAR)) == (Type(STR_ARRAY) == Cst(No_type,atype(BAV_INDEX,?,?)*atype(BAV_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(BAV_VALUE,?,?),atype(BAV_INDEX,?,?)));
  Observers(Machine(BASIC_ARRAY_VAR)) == (Type(VAL_ARRAY) == Cst(atype(BAV_VALUE,?,?),atype(BAV_INDEX,?,?)))
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
