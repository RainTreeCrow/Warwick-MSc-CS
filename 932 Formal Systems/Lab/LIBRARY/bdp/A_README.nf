Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(A_README))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(A_README))==(Machine(A_README));
  Level(Machine(A_README))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(A_README)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(A_README))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(A_README))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(A_README))==(?);
  List_Includes(Machine(A_README))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(A_README))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(A_README))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(A_README))==(?);
  Context_List_Variables(Machine(A_README))==(?);
  Abstract_List_Variables(Machine(A_README))==(?);
  Local_List_Variables(Machine(A_README))==(?);
  List_Variables(Machine(A_README))==(?);
  External_List_Variables(Machine(A_README))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(A_README))==(?);
  Abstract_List_VisibleVariables(Machine(A_README))==(?);
  External_List_VisibleVariables(Machine(A_README))==(?);
  Expanded_List_VisibleVariables(Machine(A_README))==(?);
  List_VisibleVariables(Machine(A_README))==(?);
  Internal_List_VisibleVariables(Machine(A_README))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(A_README))==(btrue);
  Gluing_List_Invariant(Machine(A_README))==(btrue);
  Expanded_List_Invariant(Machine(A_README))==(btrue);
  Abstract_List_Invariant(Machine(A_README))==(btrue);
  Context_List_Invariant(Machine(A_README))==(btrue);
  List_Invariant(Machine(A_README))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(A_README))==(btrue);
  Abstract_List_Assertions(Machine(A_README))==(btrue);
  Context_List_Assertions(Machine(A_README))==(btrue);
  List_Assertions(Machine(A_README))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(A_README))==(skip);
  Context_List_Initialisation(Machine(A_README))==(skip);
  List_Initialisation(Machine(A_README))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(A_README))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(A_README))==(btrue);
  List_Constraints(Machine(A_README))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(A_README))==(?);
  List_Operations(Machine(A_README))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(A_README))==(?);
  Inherited_List_Constants(Machine(A_README))==(?);
  List_Constants(Machine(A_README))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(A_README))==(?);
  Context_List_Defered(Machine(A_README))==(?);
  Context_List_Sets(Machine(A_README))==(?);
  List_Valuable_Sets(Machine(A_README))==(?);
  Inherited_List_Enumerated(Machine(A_README))==(?);
  Inherited_List_Defered(Machine(A_README))==(?);
  Inherited_List_Sets(Machine(A_README))==(?);
  List_Enumerated(Machine(A_README))==(?);
  List_Defered(Machine(A_README))==(?);
  List_Sets(Machine(A_README))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(A_README))==(?);
  Expanded_List_HiddenConstants(Machine(A_README))==(?);
  List_HiddenConstants(Machine(A_README))==(?);
  External_List_HiddenConstants(Machine(A_README))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(A_README))==(btrue);
  Context_List_Properties(Machine(A_README))==(btrue);
  Inherited_List_Properties(Machine(A_README))==(btrue);
  List_Properties(Machine(A_README))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(A_README),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(A_README)) == (? | ? | ? | ? | ? | ? | ? | ? | A_README);
  List_Of_HiddenCst_Ids(Machine(A_README)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(A_README)) == (?);
  List_Of_VisibleVar_Ids(Machine(A_README)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(A_README)) == (?: ?)
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
