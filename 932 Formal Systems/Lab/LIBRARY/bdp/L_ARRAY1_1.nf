Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY1_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY1_1))==(Machine(L_ARRAY1));
  Level(Implementation(L_ARRAY1_1))==(1);
  Upper_Level(Implementation(L_ARRAY1_1))==(Machine(L_ARRAY1))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY1_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY1_1))==(BASIC_ARRAY_VAR);
  Inherited_List_Includes(Implementation(L_ARRAY1_1))==(BASIC_ARRAY_VAR)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY1_1))==(VAL_ARRAY,STR_ARRAY)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY1_1))==(BASIC_ARRAY_VAR)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY1_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY1_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY1_1))==(arr_vrb);
  Local_List_Variables(Implementation(L_ARRAY1_1))==(?);
  List_Variables(Implementation(L_ARRAY1_1))==(arr_vrb);
  External_List_Variables(Implementation(L_ARRAY1_1))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY1_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY1_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY1_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY1_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY1_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY1_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY1_1))==(arr_vrb: 0..LAU_maxidx --> LAU_VALUE);
  Expanded_List_Invariant(Implementation(L_ARRAY1_1))==(arr_vrb: 0..LAU_maxidx --> LAU_VALUE);
  Context_List_Invariant(Implementation(L_ARRAY1_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY1_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY1_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY1_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY1_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY1_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY1_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LAU_maxidx --> LAU_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Implementation(L_ARRAY1_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY1_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY1_1))==(LAU_VALUE,LAU_maxidx)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(0..LAU_maxidx,LAU_VALUE)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(0..LAU_maxidx: FIN(INTEGER) & not(0..LAU_maxidx = {}) & LAU_VALUE: FIN(INTEGER) & not(LAU_VALUE = {}));
  List_Constraints(Implementation(L_ARRAY1_1))==(LAU_maxidx: NAT1 & LAU_VALUE: FIN(INTEGER) & not(LAU_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY1_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY1_1))==(SET_ARRAY,VAL_ARRAY,STR_ARRAY);
  List_Operations(Implementation(L_ARRAY1_1))==(SET_ARRAY,VAL_ARRAY,STR_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY1_1),STR_ARRAY)==(ii,vv);
  List_Input(Implementation(L_ARRAY1_1),VAL_ARRAY)==(ii);
  List_Input(Implementation(L_ARRAY1_1),SET_ARRAY)==(ii,jj,vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY1_1),STR_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY1_1),VAL_ARRAY)==(vv);
  List_Output(Implementation(L_ARRAY1_1),SET_ARRAY)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY1_1),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Implementation(L_ARRAY1_1),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Implementation(L_ARRAY1_1),SET_ARRAY)==(SET_ARRAY(ii,jj,vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY1_1),STR_ARRAY)==(ii: 0..LAU_maxidx & vv: LAU_VALUE);
  List_Precondition(Implementation(L_ARRAY1_1),STR_ARRAY)==(ii: 0..LAU_maxidx & vv: LAU_VALUE);
  Own_Precondition(Implementation(L_ARRAY1_1),VAL_ARRAY)==(ii: 0..LAU_maxidx);
  List_Precondition(Implementation(L_ARRAY1_1),VAL_ARRAY)==(ii: 0..LAU_maxidx);
  Own_Precondition(Implementation(L_ARRAY1_1),SET_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY1_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAU_maxidx & vv: LAU_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY1_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAU_maxidx & vv: LAU_VALUE | @zz.(zz:=ii;WHILE zz<=jj DO (zz: 0..LAU_maxidx & vv: LAU_VALUE | arr_vrb:=arr_vrb<+{zz|->vv});(zz+1: INT & zz: INT & 1: INT | zz:=zz+1) INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_vrb = arr_vrb$0<+(ii..zz-1)*{vv} VARIANT jj+ii+1-zz END));
  List_Substitution(Implementation(L_ARRAY1_1),STR_ARRAY)==(arr_vrb(ii):=vv);
  Expanded_List_Substitution(Implementation(L_ARRAY1_1),STR_ARRAY)==(ii: 0..LAU_maxidx & vv: LAU_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  List_Substitution(Implementation(L_ARRAY1_1),VAL_ARRAY)==(vv:=arr_vrb(ii));
  Expanded_List_Substitution(Implementation(L_ARRAY1_1),VAL_ARRAY)==(ii: 0..LAU_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Implementation(L_ARRAY1_1),SET_ARRAY)==(VAR zz IN zz:=ii;WHILE zz<=jj DO STR_ARRAY(zz,vv);zz:=zz+1 INVARIANT zz: NAT & zz: ii..jj+1\/{ii} & arr_vrb = arr_vrb$0<+(ii..zz-1)*{vv} VARIANT jj+ii+1-zz END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY1_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY1_1))==(?);
  List_Constants(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY1_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY1_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY1_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY1_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY1_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY1_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY1_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY1_1))==(?);
  List_Enumerated(Implementation(L_ARRAY1_1))==(?);
  List_Defered(Implementation(L_ARRAY1_1))==(?);
  List_Sets(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY1_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY1_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY1_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY1_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY1_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY1_1))==(btrue);
  List_Properties(Implementation(L_ARRAY1_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY1_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY1_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(VAL_ARRAY,STR_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY1_1))==(Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAU_VALUE,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*atype(LAU_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAU_VALUE,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY1_1)) == (? | ? | ? | arr_vrb | SET_ARRAY | ? | imported(Machine(BASIC_ARRAY_VAR)) | LAU_VALUE,LAU_maxidx | L_ARRAY1_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY1_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY1_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY1_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY1_1)) == (?: ?);
  List_Of_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY | ? | ? | BAV_INDEX,BAV_VALUE | BASIC_ARRAY_VAR);
  List_Of_HiddenCst_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(BASIC_ARRAY_VAR)) == (?);
  List_Of_VisibleVar_Ids(Machine(BASIC_ARRAY_VAR)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(BASIC_ARRAY_VAR)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY1_1)) == (Type(LAU_maxidx) == Prm(btype(INTEGER,?,?));Type(LAU_VALUE) == Prm(SetOf(atype(LAU_VALUE,?,?))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY1_1),SET_ARRAY, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY1_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY1_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(arr_vrb);
  ImportedVisVariablesList(Implementation(L_ARRAY1_1),Machine(BASIC_ARRAY_VAR))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
