Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARRAY1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARRAY1))==(Machine(L_ARRAY1));
  Level(Machine(L_ARRAY1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARRAY1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARRAY1))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARRAY1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARRAY1))==(?);
  List_Includes(Machine(L_ARRAY1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARRAY1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARRAY1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARRAY1))==(?);
  Context_List_Variables(Machine(L_ARRAY1))==(?);
  Abstract_List_Variables(Machine(L_ARRAY1))==(?);
  Local_List_Variables(Machine(L_ARRAY1))==(arr_vrb);
  List_Variables(Machine(L_ARRAY1))==(arr_vrb);
  External_List_Variables(Machine(L_ARRAY1))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARRAY1))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARRAY1))==(?);
  External_List_VisibleVariables(Machine(L_ARRAY1))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARRAY1))==(?);
  List_VisibleVariables(Machine(L_ARRAY1))==(?);
  Internal_List_VisibleVariables(Machine(L_ARRAY1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARRAY1))==(btrue);
  Gluing_List_Invariant(Machine(L_ARRAY1))==(btrue);
  Expanded_List_Invariant(Machine(L_ARRAY1))==(btrue);
  Abstract_List_Invariant(Machine(L_ARRAY1))==(btrue);
  Context_List_Invariant(Machine(L_ARRAY1))==(btrue);
  List_Invariant(Machine(L_ARRAY1))==(arr_vrb: 0..LAU_maxidx --> LAU_VALUE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARRAY1))==(btrue);
  Abstract_List_Assertions(Machine(L_ARRAY1))==(btrue);
  Context_List_Assertions(Machine(L_ARRAY1))==(btrue);
  List_Assertions(Machine(L_ARRAY1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARRAY1))==(@(arr_vrb$0).(arr_vrb$0: 0..LAU_maxidx --> LAU_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Machine(L_ARRAY1))==(skip);
  List_Initialisation(Machine(L_ARRAY1))==(arr_vrb:: 0..LAU_maxidx --> LAU_VALUE)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARRAY1))==(LAU_VALUE,LAU_maxidx)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARRAY1))==(btrue);
  List_Constraints(Machine(L_ARRAY1))==(LAU_maxidx: NAT1 & LAU_VALUE: FIN(INTEGER) & not(LAU_VALUE = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARRAY1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY);
  List_Operations(Machine(L_ARRAY1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARRAY1),VAL_ARRAY)==(ii);
  List_Input(Machine(L_ARRAY1),STR_ARRAY)==(ii,vv);
  List_Input(Machine(L_ARRAY1),SET_ARRAY)==(ii,jj,vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARRAY1),VAL_ARRAY)==(vv);
  List_Output(Machine(L_ARRAY1),STR_ARRAY)==(?);
  List_Output(Machine(L_ARRAY1),SET_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARRAY1),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Machine(L_ARRAY1),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Machine(L_ARRAY1),SET_ARRAY)==(SET_ARRAY(ii,jj,vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARRAY1),VAL_ARRAY)==(ii: 0..LAU_maxidx);
  List_Precondition(Machine(L_ARRAY1),STR_ARRAY)==(ii: 0..LAU_maxidx & vv: LAU_VALUE);
  List_Precondition(Machine(L_ARRAY1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAU_maxidx & vv: LAU_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARRAY1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAU_maxidx & vv: LAU_VALUE | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Machine(L_ARRAY1),STR_ARRAY)==(ii: 0..LAU_maxidx & vv: LAU_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  Expanded_List_Substitution(Machine(L_ARRAY1),VAL_ARRAY)==(ii: 0..LAU_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY1),VAL_ARRAY)==(vv:=arr_vrb(ii));
  List_Substitution(Machine(L_ARRAY1),STR_ARRAY)==(arr_vrb(ii):=vv);
  List_Substitution(Machine(L_ARRAY1),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARRAY1))==(?);
  Inherited_List_Constants(Machine(L_ARRAY1))==(?);
  List_Constants(Machine(L_ARRAY1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARRAY1))==(?);
  Context_List_Defered(Machine(L_ARRAY1))==(?);
  Context_List_Sets(Machine(L_ARRAY1))==(?);
  List_Valuable_Sets(Machine(L_ARRAY1))==(?);
  Inherited_List_Enumerated(Machine(L_ARRAY1))==(?);
  Inherited_List_Defered(Machine(L_ARRAY1))==(?);
  Inherited_List_Sets(Machine(L_ARRAY1))==(?);
  List_Enumerated(Machine(L_ARRAY1))==(?);
  List_Defered(Machine(L_ARRAY1))==(?);
  List_Sets(Machine(L_ARRAY1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARRAY1))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARRAY1))==(?);
  List_HiddenConstants(Machine(L_ARRAY1))==(?);
  External_List_HiddenConstants(Machine(L_ARRAY1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARRAY1))==(btrue);
  Context_List_Properties(Machine(L_ARRAY1))==(btrue);
  Inherited_List_Properties(Machine(L_ARRAY1))==(btrue);
  List_Properties(Machine(L_ARRAY1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARRAY1),VAL_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY1),STR_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY1),SET_ARRAY)==(?);
  List_ANY_Var(Machine(L_ARRAY1),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARRAY1)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY | ? | ? | LAU_VALUE,LAU_maxidx | L_ARRAY1);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(L_ARRAY1)) == (Type(LAU_maxidx) == Prm(btype(INTEGER,?,?));Type(LAU_VALUE) == Prm(SetOf(atype(LAU_VALUE,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(L_ARRAY1)) == (Type(arr_vrb) == Mvl(SetOf(btype(INTEGER,0,LAU_maxidx)*atype(LAU_VALUE,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARRAY1)) == (Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAU_VALUE,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*atype(LAU_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAU_VALUE,?,?),btype(INTEGER,?,?)));
  Observers(Machine(L_ARRAY1)) == (Type(VAL_ARRAY) == Cst(atype(LAU_VALUE,?,?),btype(INTEGER,?,?)))
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
