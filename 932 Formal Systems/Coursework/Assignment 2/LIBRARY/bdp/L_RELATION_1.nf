Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_RELATION_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_RELATION_1))==(Machine(L_RELATION));
  Level(Implementation(L_RELATION_1))==(1);
  Upper_Level(Implementation(L_RELATION_1))==(Machine(L_RELATION))
END
&
THEORY LoadedStructureX IS
  Implementation(L_RELATION_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_RELATION_1))==(theDomain.L_ARRAY1,theCodomain.L_ARRAY1);
  Inherited_List_Includes(Implementation(L_RELATION_1))==(theCodomain.L_ARRAY1,theDomain.L_ARRAY1)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_RELATION_1))==(?);
  Context_List_Variables(Implementation(L_RELATION_1))==(?);
  Abstract_List_Variables(Implementation(L_RELATION_1))==(theRelation);
  Local_List_Variables(Implementation(L_RELATION_1))==(?);
  List_Variables(Implementation(L_RELATION_1))==(theDomainarr_vrb,theCodomainarr_vrb);
  External_List_Variables(Implementation(L_RELATION_1))==(theDomain.arr_vrb,theCodomain.arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_RELATION_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_RELATION_1))==(?);
  External_List_VisibleVariables(Implementation(L_RELATION_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_RELATION_1))==(?);
  List_VisibleVariables(Implementation(L_RELATION_1))==(nb_2tupple);
  Internal_List_VisibleVariables(Implementation(L_RELATION_1))==(nb_2tupple)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_RELATION_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_RELATION_1))==(theRelation: DOMAIN_SET <-> RANGE_SET & card(theRelation)<=max_nb_2tupple);
  Expanded_List_Invariant(Implementation(L_RELATION_1))==(theDomainarr_vrb: 0..max_nb_2tupple-1 --> DOMAIN_SET & theCodomainarr_vrb: 0..max_nb_2tupple-1 --> RANGE_SET);
  Context_List_Invariant(Implementation(L_RELATION_1))==(btrue);
  List_Invariant(Implementation(L_RELATION_1))==(nb_2tupple: NAT & nb_2tupple = card(theRelation) & theRelation = ran(0..nb_2tupple-1<|(theDomainarr_vrb><theCodomainarr_vrb)))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_RELATION_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_RELATION_1))==(btrue);
  Context_List_Assertions(Implementation(L_RELATION_1))==(btrue);
  List_Assertions(Implementation(L_RELATION_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_RELATION_1))==(@(arr_vrb$0).(arr_vrb$0: 0..max_nb_2tupple-1 --> DOMAIN_SET ==> theDomainarr_vrb:=arr_vrb$0);@(arr_vrb$0).(arr_vrb$0: 0..max_nb_2tupple-1 --> RANGE_SET ==> theCodomainarr_vrb:=arr_vrb$0);(0: INT | nb_2tupple:=0));
  Context_List_Initialisation(Implementation(L_RELATION_1))==(skip);
  List_Initialisation(Implementation(L_RELATION_1))==(nb_2tupple:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_RELATION_1))==(DOMAIN_SET,RANGE_SET,max_nb_2tupple)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_RELATION_1),Machine(theCodomain.L_ARRAY1))==(max_nb_2tupple-1: INT & max_nb_2tupple: INT & 1: INT);
  Precond_Instanciated_Parameters(Implementation(L_RELATION_1),Machine(theDomain.L_ARRAY1))==(max_nb_2tupple-1: INT & max_nb_2tupple: INT & 1: INT);
  List_Instanciated_Parameters(Implementation(L_RELATION_1),Machine(theDomain.L_ARRAY1))==(DOMAIN_SET,max_nb_2tupple-1);
  List_Instanciated_Parameters(Implementation(L_RELATION_1),Machine(theCodomain.L_ARRAY1))==(RANGE_SET,max_nb_2tupple-1)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_RELATION_1),Machine(theCodomain.L_ARRAY1))==(max_nb_2tupple-1: NAT1 & RANGE_SET: FIN(INTEGER) & not(RANGE_SET = {}));
  List_Constraints(Implementation(L_RELATION_1))==(max_nb_2tupple: NAT1 & max_nb_2tupple>1 & DOMAIN_SET: FIN(INTEGER) & not(DOMAIN_SET = {}) & RANGE_SET: FIN(INTEGER) & not(RANGE_SET = {}));
  List_Context_Constraints(Implementation(L_RELATION_1))==(btrue);
  List_Constraints(Implementation(L_RELATION_1),Machine(theDomain.L_ARRAY1))==(max_nb_2tupple-1: NAT1 & DOMAIN_SET: FIN(INTEGER) & not(DOMAIN_SET = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_RELATION_1))==(op_reset,op_isFullRelation,op_add,op_cardinal,op_belongsTo,op_remove);
  List_Operations(Implementation(L_RELATION_1))==(op_reset,op_isFullRelation,op_add,op_cardinal,op_belongsTo,op_remove)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_RELATION_1),op_reset)==(?);
  List_Input(Implementation(L_RELATION_1),op_isFullRelation)==(?);
  List_Input(Implementation(L_RELATION_1),op_add)==(a_elem1,a_elem2);
  List_Input(Implementation(L_RELATION_1),op_cardinal)==(?);
  List_Input(Implementation(L_RELATION_1),op_belongsTo)==(a_elem1,a_elem2);
  List_Input(Implementation(L_RELATION_1),op_remove)==(a_elem1,a_elem2)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_RELATION_1),op_reset)==(?);
  List_Output(Implementation(L_RELATION_1),op_isFullRelation)==(r_bb);
  List_Output(Implementation(L_RELATION_1),op_add)==(?);
  List_Output(Implementation(L_RELATION_1),op_cardinal)==(r_nn);
  List_Output(Implementation(L_RELATION_1),op_belongsTo)==(r_bb);
  List_Output(Implementation(L_RELATION_1),op_remove)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_RELATION_1),op_reset)==(op_reset);
  List_Header(Implementation(L_RELATION_1),op_isFullRelation)==(r_bb <-- op_isFullRelation);
  List_Header(Implementation(L_RELATION_1),op_add)==(op_add(a_elem1,a_elem2));
  List_Header(Implementation(L_RELATION_1),op_cardinal)==(r_nn <-- op_cardinal);
  List_Header(Implementation(L_RELATION_1),op_belongsTo)==(r_bb <-- op_belongsTo(a_elem1,a_elem2));
  List_Header(Implementation(L_RELATION_1),op_remove)==(op_remove(a_elem1,a_elem2))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_RELATION_1),op_reset)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_reset)==(btrue);
  Own_Precondition(Implementation(L_RELATION_1),op_isFullRelation)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_isFullRelation)==(btrue);
  Own_Precondition(Implementation(L_RELATION_1),op_add)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_add)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET & card(theRelation)<max_nb_2tupple & a_elem1|->a_elem2/:theRelation);
  Own_Precondition(Implementation(L_RELATION_1),op_cardinal)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_cardinal)==(btrue);
  Own_Precondition(Implementation(L_RELATION_1),op_belongsTo)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_belongsTo)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET);
  Own_Precondition(Implementation(L_RELATION_1),op_remove)==(btrue);
  List_Precondition(Implementation(L_RELATION_1),op_remove)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_remove)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET | @(index,theRightIndex).(index:=0;theRightIndex:=nb_2tupple;WHILE index<nb_2tupple DO @(element1,element2).((index: 0..max_nb_2tupple-1 | element1:=theDomainarr_vrb(index));(index: 0..max_nb_2tupple-1 | element2:=theCodomainarr_vrb(index));(element1 = a_elem1 & element2 = a_elem2 ==> ((index: INT | theRightIndex:=index);(nb_2tupple: INT | index:=nb_2tupple)) [] not(element1 = a_elem1 & element2 = a_elem2) ==> (index+1: INT & index: INT & 1: INT | index:=index+1))) INVARIANT index: 0..nb_2tupple & theRightIndex: 0..nb_2tupple & (index/=nb_2tupple => theRightIndex = nb_2tupple & a_elem1|->a_elem2/:ran(0..index-1<|(theDomainarr_vrb><theCodomainarr_vrb))) & (index = nb_2tupple & theRightIndex/=nb_2tupple => a_elem1|->a_elem2: theRelation) & (index = nb_2tupple & theRightIndex/=nb_2tupple => theDomainarr_vrb(theRightIndex) = a_elem1 & theCodomainarr_vrb(theRightIndex) = a_elem2) & (index = nb_2tupple & theRightIndex = nb_2tupple => a_elem1|->a_elem2/:theRelation) VARIANT nb_2tupple-index END;(theRightIndex/=nb_2tupple ==> (@(swap1,swap2).((nb_2tupple-1: INT & nb_2tupple: INT & 1: INT & nb_2tupple-1: 0..max_nb_2tupple-1 | swap1:=theDomainarr_vrb(nb_2tupple-1));(nb_2tupple-1: INT & nb_2tupple: INT & 1: INT & nb_2tupple-1: 0..max_nb_2tupple-1 | swap2:=theCodomainarr_vrb(nb_2tupple-1));(theRightIndex: 0..max_nb_2tupple-1 & swap1: DOMAIN_SET | theDomainarr_vrb:=theDomainarr_vrb<+{theRightIndex|->swap1});(theRightIndex: 0..max_nb_2tupple-1 & swap2: RANGE_SET | theCodomainarr_vrb:=theCodomainarr_vrb<+{theRightIndex|->swap2}));(nb_2tupple-1: INT & nb_2tupple: INT & 1: INT | nb_2tupple:=nb_2tupple-1)) [] not(theRightIndex/=nb_2tupple) ==> skip)));
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_belongsTo)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET | @(index,theRightIndex).(index:=0;theRightIndex:=nb_2tupple;WHILE index<nb_2tupple DO @(element1,element2).((index: 0..max_nb_2tupple-1 | element1:=theDomainarr_vrb(index));(index: 0..max_nb_2tupple-1 | element2:=theCodomainarr_vrb(index));(element1 = a_elem1 & element2 = a_elem2 ==> ((index: INT | theRightIndex:=index);(nb_2tupple: INT | index:=nb_2tupple)) [] not(element1 = a_elem1 & element2 = a_elem2) ==> (index+1: INT & index: INT & 1: INT | index:=index+1))) INVARIANT index: 0..nb_2tupple & theRightIndex: 0..nb_2tupple & (index/=nb_2tupple => theRightIndex = nb_2tupple & a_elem1|->a_elem2/:ran(0..index-1<|(theDomainarr_vrb><theCodomainarr_vrb))) & (index = nb_2tupple & theRightIndex/=nb_2tupple => a_elem1|->a_elem2: theRelation) & (index = nb_2tupple & theRightIndex = nb_2tupple => a_elem1|->a_elem2/:theRelation) VARIANT nb_2tupple-index END;r_bb:=bool(theRightIndex/=nb_2tupple)));
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_cardinal)==(btrue & nb_2tupple: INT | r_nn:=nb_2tupple);
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_add)==(a_elem1: DOMAIN_SET & a_elem2: RANGE_SET & card(theRelation)<max_nb_2tupple & a_elem1|->a_elem2/:theRelation | (nb_2tupple: 0..max_nb_2tupple-1 & a_elem1: DOMAIN_SET | theDomainarr_vrb:=theDomainarr_vrb<+{nb_2tupple|->a_elem1});(nb_2tupple: 0..max_nb_2tupple-1 & a_elem2: RANGE_SET | theCodomainarr_vrb:=theCodomainarr_vrb<+{nb_2tupple|->a_elem2});(nb_2tupple+1: INT & nb_2tupple: INT & 1: INT | nb_2tupple:=nb_2tupple+1));
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_isFullRelation)==(btrue | r_bb:=bool(nb_2tupple = max_nb_2tupple));
  Expanded_List_Substitution(Implementation(L_RELATION_1),op_reset)==(btrue & 0: INT | nb_2tupple:=0);
  List_Substitution(Implementation(L_RELATION_1),op_reset)==(nb_2tupple:=0);
  List_Substitution(Implementation(L_RELATION_1),op_isFullRelation)==(r_bb:=bool(nb_2tupple = max_nb_2tupple));
  List_Substitution(Implementation(L_RELATION_1),op_add)==((theDomain.STR_ARRAY)(nb_2tupple,a_elem1);(theCodomain.STR_ARRAY)(nb_2tupple,a_elem2);nb_2tupple:=nb_2tupple+1);
  List_Substitution(Implementation(L_RELATION_1),op_cardinal)==(r_nn:=nb_2tupple);
  List_Substitution(Implementation(L_RELATION_1),op_belongsTo)==(VAR index,theRightIndex IN index:=0;theRightIndex:=nb_2tupple;WHILE index<nb_2tupple DO VAR element1,element2 IN element1 <-- (theDomain.VAL_ARRAY)(index);element2 <-- (theCodomain.VAL_ARRAY)(index);IF element1 = a_elem1 & element2 = a_elem2 THEN theRightIndex:=index;index:=nb_2tupple ELSE index:=index+1 END END INVARIANT index: 0..nb_2tupple & theRightIndex: 0..nb_2tupple & (index/=nb_2tupple => theRightIndex = nb_2tupple & a_elem1|->a_elem2/:ran(0..index-1<|(theDomain.arr_vrb><theCodomain.arr_vrb))) & (index = nb_2tupple & theRightIndex/=nb_2tupple => a_elem1|->a_elem2: theRelation) & (index = nb_2tupple & theRightIndex = nb_2tupple => a_elem1|->a_elem2/:theRelation) VARIANT nb_2tupple-index END;r_bb:=bool(theRightIndex/=nb_2tupple) END);
  List_Substitution(Implementation(L_RELATION_1),op_remove)==(VAR index,theRightIndex IN index:=0;theRightIndex:=nb_2tupple;WHILE index<nb_2tupple DO VAR element1,element2 IN element1 <-- (theDomain.VAL_ARRAY)(index);element2 <-- (theCodomain.VAL_ARRAY)(index);IF element1 = a_elem1 & element2 = a_elem2 THEN theRightIndex:=index;index:=nb_2tupple ELSE index:=index+1 END END INVARIANT index: 0..nb_2tupple & theRightIndex: 0..nb_2tupple & (index/=nb_2tupple => theRightIndex = nb_2tupple & a_elem1|->a_elem2/:ran(0..index-1<|(theDomain.arr_vrb><theCodomain.arr_vrb))) & (index = nb_2tupple & theRightIndex/=nb_2tupple => a_elem1|->a_elem2: theRelation) & (index = nb_2tupple & theRightIndex/=nb_2tupple => (theDomain.arr_vrb)(theRightIndex) = a_elem1 & (theCodomain.arr_vrb)(theRightIndex) = a_elem2) & (index = nb_2tupple & theRightIndex = nb_2tupple => a_elem1|->a_elem2/:theRelation) VARIANT nb_2tupple-index END;IF theRightIndex/=nb_2tupple THEN VAR swap1,swap2 IN swap1 <-- (theDomain.VAL_ARRAY)(nb_2tupple-1);swap2 <-- (theCodomain.VAL_ARRAY)(nb_2tupple-1);(theDomain.STR_ARRAY)(theRightIndex,swap1);(theCodomain.STR_ARRAY)(theRightIndex,swap2) END;nb_2tupple:=nb_2tupple-1 END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_RELATION_1))==(?);
  Inherited_List_Constants(Implementation(L_RELATION_1))==(?);
  List_Constants(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_RELATION_1))==(?);
  Context_List_Defered(Implementation(L_RELATION_1))==(?);
  Context_List_Sets(Implementation(L_RELATION_1))==(?);
  List_Own_Enumerated(Implementation(L_RELATION_1))==(?);
  List_Valuable_Sets(Implementation(L_RELATION_1))==(?);
  Inherited_List_Enumerated(Implementation(L_RELATION_1))==(?);
  Inherited_List_Defered(Implementation(L_RELATION_1))==(?);
  Inherited_List_Sets(Implementation(L_RELATION_1))==(?);
  List_Enumerated(Implementation(L_RELATION_1))==(?);
  List_Defered(Implementation(L_RELATION_1))==(?);
  List_Sets(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_RELATION_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_RELATION_1))==(?);
  List_HiddenConstants(Implementation(L_RELATION_1))==(?);
  External_List_HiddenConstants(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_RELATION_1))==(btrue);
  Context_List_Properties(Implementation(L_RELATION_1))==(btrue);
  Inherited_List_Properties(Implementation(L_RELATION_1))==(btrue);
  List_Properties(Implementation(L_RELATION_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_RELATION_1))==(aa: aa);
  List_Values(Implementation(L_RELATION_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_RELATION_1),Machine(L_ARRAY1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(L_RELATION_1))==(Type(nb_2tupple) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(L_RELATION_1))==(Type(op_belongsTo) == Cst(btype(BOOL,?,?),atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_cardinal) == Cst(btype(INTEGER,?,?),No_type);Type(op_remove) == Cst(No_type,atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_add) == Cst(No_type,atype(DOMAIN_SET,?,?)*atype(RANGE_SET,?,?));Type(op_isFullRelation) == Cst(btype(BOOL,?,?),No_type);Type(op_reset) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_RELATION_1)) == (? | ? | ? | theCodomainarr_vrb,theDomainarr_vrb | op_reset,op_isFullRelation,op_add,op_cardinal,op_belongsTo,op_remove | ? | imported(Machine(theDomain.L_ARRAY1)),imported(Machine(theCodomain.L_ARRAY1)) | DOMAIN_SET,RANGE_SET,max_nb_2tupple | L_RELATION_1);
  List_Of_HiddenCst_Ids(Implementation(L_RELATION_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_RELATION_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_RELATION_1)) == (nb_2tupple | ?);
  List_Of_Ids_SeenBNU(Implementation(L_RELATION_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY1)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY | ? | ? | LAU_VALUE,LAU_maxidx | L_ARRAY1);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_RELATION_1)) == (Type(max_nb_2tupple) == Prm(btype(INTEGER,?,?));Type(RANGE_SET) == Prm(SetOf(atype(RANGE_SET,?,?)));Type(DOMAIN_SET) == Prm(SetOf(atype(DOMAIN_SET,?,?))))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(L_RELATION_1)) == (Type(nb_2tupple) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_RELATION_1),op_belongsTo, 2) == (Type(element1) == Lvl(atype(DOMAIN_SET,?,?));Type(element2) == Lvl(atype(RANGE_SET,?,?)));
  Variables_Loc(Implementation(L_RELATION_1),op_belongsTo, 1) == (Type(index) == Lvl(btype(INTEGER,?,?));Type(theRightIndex) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_RELATION_1),op_remove, 2) == (Type(element1) == Lvl(atype(DOMAIN_SET,?,?));Type(element2) == Lvl(atype(RANGE_SET,?,?)));
  Variables_Loc(Implementation(L_RELATION_1),op_remove, 3) == (Type(swap1) == Lvl(atype(DOMAIN_SET,?,?));Type(swap2) == Lvl(atype(RANGE_SET,?,?)));
  Variables_Loc(Implementation(L_RELATION_1),op_remove, 1) == (Type(index) == Lvl(btype(INTEGER,?,?));Type(theRightIndex) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_RELATION_1))==(?)
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
  TypingPredicate(Implementation(L_RELATION_1))==(nb_2tupple: INTEGER)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_RELATION_1),Machine(theDomain.L_ARRAY1))==(theDomain.arr_vrb);
  ImportedVisVariablesList(Implementation(L_RELATION_1),Machine(theDomain.L_ARRAY1))==(?);
  ImportedVariablesList(Implementation(L_RELATION_1),Machine(theCodomain.L_ARRAY1))==(theCodomain.arr_vrb);
  ImportedVisVariablesList(Implementation(L_RELATION_1),Machine(theCodomain.L_ARRAY1))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
