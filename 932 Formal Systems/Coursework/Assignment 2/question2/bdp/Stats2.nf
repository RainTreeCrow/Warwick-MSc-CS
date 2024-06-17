Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Stats2))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Stats2))==(Machine(Stats2));
  Level(Machine(Stats2))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Stats2)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Stats2))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Stats2))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Stats2))==(?);
  List_Includes(Machine(Stats2))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Stats2))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Stats2))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Stats2))==(?);
  Context_List_Variables(Machine(Stats2))==(?);
  Abstract_List_Variables(Machine(Stats2))==(?);
  Local_List_Variables(Machine(Stats2))==(record);
  List_Variables(Machine(Stats2))==(record);
  External_List_Variables(Machine(Stats2))==(record)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Stats2))==(?);
  Abstract_List_VisibleVariables(Machine(Stats2))==(?);
  External_List_VisibleVariables(Machine(Stats2))==(?);
  Expanded_List_VisibleVariables(Machine(Stats2))==(?);
  List_VisibleVariables(Machine(Stats2))==(?);
  Internal_List_VisibleVariables(Machine(Stats2))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Stats2))==(btrue);
  Gluing_List_Invariant(Machine(Stats2))==(btrue);
  Expanded_List_Invariant(Machine(Stats2))==(btrue);
  Abstract_List_Invariant(Machine(Stats2))==(btrue);
  Context_List_Invariant(Machine(Stats2))==(btrue);
  List_Invariant(Machine(Stats2))==(record: seq(0..10) & size(record)<=maxlen)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Stats2))==(btrue);
  Abstract_List_Assertions(Machine(Stats2))==(btrue);
  Context_List_Assertions(Machine(Stats2))==(btrue);
  List_Assertions(Machine(Stats2))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Stats2))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Stats2))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Stats2))==(record:=<>);
  Context_List_Initialisation(Machine(Stats2))==(skip);
  List_Initialisation(Machine(Stats2))==(record:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Stats2))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Stats2))==(btrue);
  List_Constraints(Machine(Stats2))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Stats2))==(tested,querytot,queryreg,querypc,querymean,querymedian);
  List_Operations(Machine(Stats2))==(tested,querytot,queryreg,querypc,querymean,querymedian)
END
&
THEORY ListInputX IS
  List_Input(Machine(Stats2),tested)==(nn);
  List_Input(Machine(Stats2),querytot)==(?);
  List_Input(Machine(Stats2),queryreg)==(nn);
  List_Input(Machine(Stats2),querypc)==(nn);
  List_Input(Machine(Stats2),querymean)==(?);
  List_Input(Machine(Stats2),querymedian)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Stats2),tested)==(?);
  List_Output(Machine(Stats2),querytot)==(oo);
  List_Output(Machine(Stats2),queryreg)==(oo);
  List_Output(Machine(Stats2),querypc)==(oo);
  List_Output(Machine(Stats2),querymean)==(oo);
  List_Output(Machine(Stats2),querymedian)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Stats2),tested)==(tested(nn));
  List_Header(Machine(Stats2),querytot)==(oo <-- querytot);
  List_Header(Machine(Stats2),queryreg)==(oo <-- queryreg(nn));
  List_Header(Machine(Stats2),querypc)==(oo <-- querypc(nn));
  List_Header(Machine(Stats2),querymean)==(oo <-- querymean);
  List_Header(Machine(Stats2),querymedian)==(oo <-- querymedian)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Stats2),tested)==(nn: 0..10 & size(record)<maxlen);
  List_Precondition(Machine(Stats2),querytot)==(btrue);
  List_Precondition(Machine(Stats2),queryreg)==(nn: 0..10);
  List_Precondition(Machine(Stats2),querypc)==(nn: 0..10 & size(record)/=0);
  List_Precondition(Machine(Stats2),querymean)==(size(record)/=0);
  List_Precondition(Machine(Stats2),querymedian)==(size(record)/=0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Stats2),querymedian)==(size(record)/=0 | @rr.(rr: seq(0..10) & size(rr) = size(record) & !nn.(nn: 0..10 => card(rr|>{nn}) = card(record|>{nn})) & !(ii,jj).(ii: 1..card(rr) & jj: 1..card(rr) & ii<=jj => rr(ii)<=rr(jj)) ==> (size(record) mod 2 = 1 ==> oo:=rr((size(record)+1)/2) [] not(size(record) mod 2 = 1) ==> oo:=(rr(size(record)/2)+rr(size(record)/2+1))/2)));
  Expanded_List_Substitution(Machine(Stats2),querymean)==(size(record)/=0 | oo:=SIGMA(ii).(ii: dom(record) | record(ii))/size(record));
  Expanded_List_Substitution(Machine(Stats2),querypc)==(nn: 0..10 & size(record)/=0 | oo:=card(record|>{nn})/size(record));
  Expanded_List_Substitution(Machine(Stats2),queryreg)==(nn: 0..10 | oo:=card(record|>{nn}));
  Expanded_List_Substitution(Machine(Stats2),querytot)==(btrue | oo:=size(record));
  Expanded_List_Substitution(Machine(Stats2),tested)==(nn: 0..10 & size(record)<maxlen | record:=record<-nn);
  List_Substitution(Machine(Stats2),tested)==(record:=record<-nn);
  List_Substitution(Machine(Stats2),querytot)==(oo:=size(record));
  List_Substitution(Machine(Stats2),queryreg)==(oo:=card(record|>{nn}));
  List_Substitution(Machine(Stats2),querypc)==(oo:=card(record|>{nn})/size(record));
  List_Substitution(Machine(Stats2),querymean)==(oo:=SIGMA(ii).(ii: dom(record) | record(ii))/size(record));
  List_Substitution(Machine(Stats2),querymedian)==(ANY rr WHERE rr: seq(0..10) & size(rr) = size(record) & !nn.(nn: 0..10 => card(rr|>{nn}) = card(record|>{nn})) & !(ii,jj).(ii: 1..card(rr) & jj: 1..card(rr) & ii<=jj => rr(ii)<=rr(jj)) THEN IF size(record) mod 2 = 1 THEN oo:=rr((size(record)+1)/2) ELSE oo:=(rr(size(record)/2)+rr(size(record)/2+1))/2 END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Stats2))==(maxlen);
  Inherited_List_Constants(Machine(Stats2))==(?);
  List_Constants(Machine(Stats2))==(maxlen)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Stats2))==(?);
  Context_List_Defered(Machine(Stats2))==(?);
  Context_List_Sets(Machine(Stats2))==(?);
  List_Valuable_Sets(Machine(Stats2))==(?);
  Inherited_List_Enumerated(Machine(Stats2))==(?);
  Inherited_List_Defered(Machine(Stats2))==(?);
  Inherited_List_Sets(Machine(Stats2))==(?);
  List_Enumerated(Machine(Stats2))==(?);
  List_Defered(Machine(Stats2))==(?);
  List_Sets(Machine(Stats2))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Stats2))==(?);
  Expanded_List_HiddenConstants(Machine(Stats2))==(?);
  List_HiddenConstants(Machine(Stats2))==(?);
  External_List_HiddenConstants(Machine(Stats2))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Stats2))==(btrue);
  Context_List_Properties(Machine(Stats2))==(btrue);
  Inherited_List_Properties(Machine(Stats2))==(btrue);
  List_Properties(Machine(Stats2))==(maxlen: NAT1)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Stats2),tested)==(?);
  List_ANY_Var(Machine(Stats2),querytot)==(?);
  List_ANY_Var(Machine(Stats2),queryreg)==(?);
  List_ANY_Var(Machine(Stats2),querypc)==(?);
  List_ANY_Var(Machine(Stats2),querymean)==(?);
  List_ANY_Var(Machine(Stats2),querymedian)==(Var(rr) == SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Stats2)) == (maxlen | ? | record | ? | tested,querytot,queryreg,querypc,querymean,querymedian | ? | ? | ? | Stats2);
  List_Of_HiddenCst_Ids(Machine(Stats2)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Stats2)) == (maxlen);
  List_Of_VisibleVar_Ids(Machine(Stats2)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Stats2)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Stats2)) == (Type(maxlen) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Stats2)) == (Type(record) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Stats2)) == (Type(querymedian) == Cst(btype(INTEGER,?,?),No_type);Type(querymean) == Cst(btype(INTEGER,?,?),No_type);Type(querypc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(queryreg) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(querytot) == Cst(btype(INTEGER,?,?),No_type);Type(tested) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Stats2)) == (Type(querymedian) == Cst(btype(INTEGER,?,?),No_type);Type(querymean) == Cst(btype(INTEGER,?,?),No_type);Type(querypc) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(queryreg) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(querytot) == Cst(btype(INTEGER,?,?),No_type))
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
