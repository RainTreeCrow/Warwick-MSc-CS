Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Numbers))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Numbers))==(Machine(Numbers));
  Level(Machine(Numbers))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Numbers)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Numbers))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Numbers))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Numbers))==(?);
  List_Includes(Machine(Numbers))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Numbers))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Numbers))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Numbers))==(?);
  Context_List_Variables(Machine(Numbers))==(?);
  Abstract_List_Variables(Machine(Numbers))==(?);
  Local_List_Variables(Machine(Numbers))==(lastchecked);
  List_Variables(Machine(Numbers))==(lastchecked);
  External_List_Variables(Machine(Numbers))==(lastchecked)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Numbers))==(?);
  Abstract_List_VisibleVariables(Machine(Numbers))==(?);
  External_List_VisibleVariables(Machine(Numbers))==(?);
  Expanded_List_VisibleVariables(Machine(Numbers))==(?);
  List_VisibleVariables(Machine(Numbers))==(?);
  Internal_List_VisibleVariables(Machine(Numbers))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Numbers))==(btrue);
  Gluing_List_Invariant(Machine(Numbers))==(btrue);
  Expanded_List_Invariant(Machine(Numbers))==(btrue);
  Abstract_List_Invariant(Machine(Numbers))==(btrue);
  Context_List_Invariant(Machine(Numbers))==(btrue);
  List_Invariant(Machine(Numbers))==(lastchecked: NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Numbers))==(btrue);
  Abstract_List_Assertions(Machine(Numbers))==(btrue);
  Context_List_Assertions(Machine(Numbers))==(btrue);
  List_Assertions(Machine(Numbers))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Numbers))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Numbers))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Numbers))==(lastchecked:=0);
  Context_List_Initialisation(Machine(Numbers))==(skip);
  List_Initialisation(Machine(Numbers))==(lastchecked:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Numbers))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Numbers))==(btrue);
  List_Constraints(Machine(Numbers))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Numbers))==(checknumber,showprevious);
  List_Operations(Machine(Numbers))==(checknumber,showprevious)
END
&
THEORY ListInputX IS
  List_Input(Machine(Numbers),checknumber)==(nn);
  List_Input(Machine(Numbers),showprevious)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Numbers),checknumber)==(oo);
  List_Output(Machine(Numbers),showprevious)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Numbers),checknumber)==(oo <-- checknumber(nn));
  List_Header(Machine(Numbers),showprevious)==(oo <-- showprevious)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Numbers),checknumber)==(nn: NAT1);
  List_Precondition(Machine(Numbers),showprevious)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Numbers),showprevious)==(btrue | oo:=lastchecked);
  Expanded_List_Substitution(Machine(Numbers),checknumber)==(nn: NAT1 | lastchecked:=nn || (!xx.(xx: 2..nn-1 => nn mod xx/=0) ==> oo:=TRUE [] not(!xx.(xx: 2..nn-1 => nn mod xx/=0)) ==> oo:=FALSE));
  List_Substitution(Machine(Numbers),checknumber)==(BEGIN lastchecked:=nn || IF !xx.(xx: 2..nn-1 => nn mod xx/=0) THEN oo:=TRUE ELSE oo:=FALSE END END);
  List_Substitution(Machine(Numbers),showprevious)==(oo:=lastchecked)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Numbers))==(?);
  Inherited_List_Constants(Machine(Numbers))==(?);
  List_Constants(Machine(Numbers))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Numbers))==(?);
  Context_List_Defered(Machine(Numbers))==(?);
  Context_List_Sets(Machine(Numbers))==(?);
  List_Valuable_Sets(Machine(Numbers))==(?);
  Inherited_List_Enumerated(Machine(Numbers))==(?);
  Inherited_List_Defered(Machine(Numbers))==(?);
  Inherited_List_Sets(Machine(Numbers))==(?);
  List_Enumerated(Machine(Numbers))==(?);
  List_Defered(Machine(Numbers))==(?);
  List_Sets(Machine(Numbers))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Numbers))==(?);
  Expanded_List_HiddenConstants(Machine(Numbers))==(?);
  List_HiddenConstants(Machine(Numbers))==(?);
  External_List_HiddenConstants(Machine(Numbers))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Numbers))==(btrue);
  Context_List_Properties(Machine(Numbers))==(btrue);
  Inherited_List_Properties(Machine(Numbers))==(btrue);
  List_Properties(Machine(Numbers))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Numbers),checknumber)==(?);
  List_ANY_Var(Machine(Numbers),showprevious)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Numbers)) == (? | ? | lastchecked | ? | checknumber,showprevious | ? | ? | ? | Numbers);
  List_Of_HiddenCst_Ids(Machine(Numbers)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Numbers)) == (?);
  List_Of_VisibleVar_Ids(Machine(Numbers)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Numbers)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Numbers)) == (Type(lastchecked) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Numbers)) == (Type(showprevious) == Cst(btype(INTEGER,?,?),No_type);Type(checknumber) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Numbers)) == (Type(showprevious) == Cst(btype(INTEGER,?,?),No_type))
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
