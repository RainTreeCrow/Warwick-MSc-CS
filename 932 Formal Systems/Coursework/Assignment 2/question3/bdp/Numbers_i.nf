Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Numbers_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Numbers_i))==(Machine(Numbers));
  Level(Implementation(Numbers_i))==(1);
  Upper_Level(Implementation(Numbers_i))==(Machine(Numbers))
END
&
THEORY LoadedStructureX IS
  Implementation(Numbers_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Numbers_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Numbers_i))==(?);
  Inherited_List_Includes(Implementation(Numbers_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Numbers_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Numbers_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Numbers_i))==(?);
  Context_List_Variables(Implementation(Numbers_i))==(?);
  Abstract_List_Variables(Implementation(Numbers_i))==(lastchecked);
  Local_List_Variables(Implementation(Numbers_i))==(?);
  List_Variables(Implementation(Numbers_i))==(?);
  External_List_Variables(Implementation(Numbers_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Numbers_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Numbers_i))==(?);
  External_List_VisibleVariables(Implementation(Numbers_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Numbers_i))==(?);
  List_VisibleVariables(Implementation(Numbers_i))==(lastchecked);
  Internal_List_VisibleVariables(Implementation(Numbers_i))==(lastchecked)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Numbers_i))==(btrue);
  Expanded_List_Invariant(Implementation(Numbers_i))==(btrue);
  Abstract_List_Invariant(Implementation(Numbers_i))==(lastchecked: NAT);
  Context_List_Invariant(Implementation(Numbers_i))==(btrue);
  List_Invariant(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Numbers_i))==(btrue);
  Abstract_List_Assertions(Implementation(Numbers_i))==(btrue);
  Context_List_Assertions(Implementation(Numbers_i))==(btrue);
  List_Assertions(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Numbers_i))==(0: INT | lastchecked:=0);
  Context_List_Initialisation(Implementation(Numbers_i))==(skip);
  List_Initialisation(Implementation(Numbers_i))==(lastchecked:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Numbers_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Numbers_i))==(btrue);
  List_Context_Constraints(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Numbers_i))==(checknumber,showprevious);
  List_Operations(Implementation(Numbers_i))==(checknumber,showprevious)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Numbers_i),checknumber)==(nn);
  List_Input(Implementation(Numbers_i),showprevious)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Numbers_i),checknumber)==(oo);
  List_Output(Implementation(Numbers_i),showprevious)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Numbers_i),checknumber)==(oo <-- checknumber(nn));
  List_Header(Implementation(Numbers_i),showprevious)==(oo <-- showprevious)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Numbers_i),checknumber)==(btrue);
  List_Precondition(Implementation(Numbers_i),checknumber)==(nn: NAT1);
  Own_Precondition(Implementation(Numbers_i),showprevious)==(btrue);
  List_Precondition(Implementation(Numbers_i),showprevious)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Numbers_i),showprevious)==(btrue & lastchecked: INT | oo:=lastchecked);
  Expanded_List_Substitution(Implementation(Numbers_i),checknumber)==(nn: NAT1 | (nn: INT | lastchecked:=nn);(nn = 1 ==> oo:=TRUE [] not(nn = 1) ==> @(xx,ff,rr).(xx:=2;ff:=FALSE;WHILE xx/=nn & ff = FALSE DO (nn mod xx: NAT & nn: NAT & xx: NAT1 | rr:=nn mod xx);(rr = 0 ==> ff:=TRUE [] not(rr = 0) ==> skip);(xx+1: INT & xx: INT & 1: INT | xx:=xx+1) INVARIANT 2<=xx & xx<=nn & (ff = FALSE => !yy.(yy: 2..xx-1 => nn mod yy/=0)) & (ff = TRUE => nn mod (xx-1) = 0) VARIANT nn-xx END;(ff = TRUE ==> oo:=FALSE [] not(ff = TRUE) ==> oo:=TRUE))));
  List_Substitution(Implementation(Numbers_i),checknumber)==(lastchecked:=nn;IF nn = 1 THEN oo:=TRUE ELSE VAR xx,ff,rr IN xx:=2;ff:=FALSE;WHILE xx/=nn & ff = FALSE DO rr:=nn mod xx;IF rr = 0 THEN ff:=TRUE END;xx:=xx+1 INVARIANT 2<=xx & xx<=nn & (ff = FALSE => !yy.(yy: 2..xx-1 => nn mod yy/=0)) & (ff = TRUE => nn mod (xx-1) = 0) VARIANT nn-xx END;IF ff = TRUE THEN oo:=FALSE ELSE oo:=TRUE END END END);
  List_Substitution(Implementation(Numbers_i),showprevious)==(oo:=lastchecked)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Numbers_i))==(?);
  Inherited_List_Constants(Implementation(Numbers_i))==(?);
  List_Constants(Implementation(Numbers_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Numbers_i))==(?);
  Context_List_Defered(Implementation(Numbers_i))==(?);
  Context_List_Sets(Implementation(Numbers_i))==(?);
  List_Own_Enumerated(Implementation(Numbers_i))==(?);
  List_Valuable_Sets(Implementation(Numbers_i))==(?);
  Inherited_List_Enumerated(Implementation(Numbers_i))==(?);
  Inherited_List_Defered(Implementation(Numbers_i))==(?);
  Inherited_List_Sets(Implementation(Numbers_i))==(?);
  List_Enumerated(Implementation(Numbers_i))==(?);
  List_Defered(Implementation(Numbers_i))==(?);
  List_Sets(Implementation(Numbers_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Numbers_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Numbers_i))==(?);
  List_HiddenConstants(Implementation(Numbers_i))==(?);
  External_List_HiddenConstants(Implementation(Numbers_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Numbers_i))==(btrue);
  Context_List_Properties(Implementation(Numbers_i))==(btrue);
  Inherited_List_Properties(Implementation(Numbers_i))==(btrue);
  List_Properties(Implementation(Numbers_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Numbers_i))==(aa: aa);
  List_Values(Implementation(Numbers_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Numbers_i))==(Type(lastchecked) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Numbers_i))==(Type(showprevious) == Cst(btype(INTEGER,?,?),No_type);Type(checknumber) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Numbers_i)) == (? | ? | ? | ? | checknumber,showprevious | ? | ? | ? | Numbers_i);
  List_Of_HiddenCst_Ids(Implementation(Numbers_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Numbers_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Numbers_i)) == (lastchecked | ?);
  List_Of_Ids_SeenBNU(Implementation(Numbers_i)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Numbers_i)) == (Type(lastchecked) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Numbers_i),checknumber, 1) == (Type(xx) == Lvl(btype(INTEGER,?,?));Type(ff) == Lvl(btype(BOOL,?,?));Type(rr) == Lvl(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Numbers_i))==(?)
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
  TypingPredicate(Implementation(Numbers_i))==(lastchecked: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
