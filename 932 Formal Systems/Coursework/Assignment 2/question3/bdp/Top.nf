Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Top))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Top))==(Machine(Top));
  Level(Machine(Top))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Top)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Top))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Top))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Top))==(?);
  List_Includes(Machine(Top))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Top))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Top))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Top))==(?);
  Context_List_Variables(Machine(Top))==(?);
  Abstract_List_Variables(Machine(Top))==(?);
  Local_List_Variables(Machine(Top))==(?);
  List_Variables(Machine(Top))==(?);
  External_List_Variables(Machine(Top))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Top))==(?);
  Abstract_List_VisibleVariables(Machine(Top))==(?);
  External_List_VisibleVariables(Machine(Top))==(?);
  Expanded_List_VisibleVariables(Machine(Top))==(?);
  List_VisibleVariables(Machine(Top))==(?);
  Internal_List_VisibleVariables(Machine(Top))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Top))==(btrue);
  Gluing_List_Invariant(Machine(Top))==(btrue);
  Expanded_List_Invariant(Machine(Top))==(btrue);
  Abstract_List_Invariant(Machine(Top))==(btrue);
  Context_List_Invariant(Machine(Top))==(btrue);
  List_Invariant(Machine(Top))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Top))==(btrue);
  Abstract_List_Assertions(Machine(Top))==(btrue);
  Context_List_Assertions(Machine(Top))==(btrue);
  List_Assertions(Machine(Top))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Top))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Top))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Top))==(skip);
  Context_List_Initialisation(Machine(Top))==(skip);
  List_Initialisation(Machine(Top))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Top))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Top))==(btrue);
  List_Constraints(Machine(Top))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Top))==(main);
  List_Operations(Machine(Top))==(main)
END
&
THEORY ListInputX IS
  List_Input(Machine(Top),main)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Top),main)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Top),main)==(main)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Top),main)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Top),main)==(btrue | skip);
  List_Substitution(Machine(Top),main)==(skip)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Top))==(?);
  Inherited_List_Constants(Machine(Top))==(?);
  List_Constants(Machine(Top))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Top))==(?);
  Context_List_Defered(Machine(Top))==(?);
  Context_List_Sets(Machine(Top))==(?);
  List_Valuable_Sets(Machine(Top))==(?);
  Inherited_List_Enumerated(Machine(Top))==(?);
  Inherited_List_Defered(Machine(Top))==(?);
  Inherited_List_Sets(Machine(Top))==(?);
  List_Enumerated(Machine(Top))==(?);
  List_Defered(Machine(Top))==(?);
  List_Sets(Machine(Top))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Top))==(?);
  Expanded_List_HiddenConstants(Machine(Top))==(?);
  List_HiddenConstants(Machine(Top))==(?);
  External_List_HiddenConstants(Machine(Top))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Top))==(btrue);
  Context_List_Properties(Machine(Top))==(btrue);
  Inherited_List_Properties(Machine(Top))==(btrue);
  List_Properties(Machine(Top))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Top),main)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Top)) == (? | ? | ? | ? | main | ? | ? | ? | Top);
  List_Of_HiddenCst_Ids(Machine(Top)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Top)) == (?);
  List_Of_VisibleVar_Ids(Machine(Top)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Top)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Top)) == (Type(main) == Cst(No_type,No_type));
  Observers(Machine(Top)) == (Type(main) == Cst(No_type,No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
