Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Buffer))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Buffer))==(Machine(Buffer));
  Level(Machine(Buffer))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Buffer)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Buffer))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Buffer))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Buffer))==(?);
  List_Includes(Machine(Buffer))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Buffer))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Buffer))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Buffer))==(?);
  Context_List_Variables(Machine(Buffer))==(?);
  Abstract_List_Variables(Machine(Buffer))==(?);
  Local_List_Variables(Machine(Buffer))==(buff);
  List_Variables(Machine(Buffer))==(buff);
  External_List_Variables(Machine(Buffer))==(buff)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Buffer))==(?);
  Abstract_List_VisibleVariables(Machine(Buffer))==(?);
  External_List_VisibleVariables(Machine(Buffer))==(?);
  Expanded_List_VisibleVariables(Machine(Buffer))==(?);
  List_VisibleVariables(Machine(Buffer))==(?);
  Internal_List_VisibleVariables(Machine(Buffer))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Buffer))==(btrue);
  Gluing_List_Invariant(Machine(Buffer))==(btrue);
  Expanded_List_Invariant(Machine(Buffer))==(btrue);
  Abstract_List_Invariant(Machine(Buffer))==(btrue);
  Context_List_Invariant(Machine(Buffer))==(btrue);
  List_Invariant(Machine(Buffer))==(buff: seq(ELEM) & size(buff)<=qlen)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Buffer))==(btrue);
  Abstract_List_Assertions(Machine(Buffer))==(btrue);
  Context_List_Assertions(Machine(Buffer))==(btrue);
  List_Assertions(Machine(Buffer))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Buffer))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Buffer))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Buffer))==(buff:=<>);
  Context_List_Initialisation(Machine(Buffer))==(skip);
  List_Initialisation(Machine(Buffer))==(buff:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Buffer))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Buffer))==(btrue);
  List_Constraints(Machine(Buffer))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Buffer))==(add,remove,emptyquery,fullquery,contentsquery);
  List_Operations(Machine(Buffer))==(add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(Buffer),add)==(xx);
  List_Input(Machine(Buffer),remove)==(?);
  List_Input(Machine(Buffer),emptyquery)==(?);
  List_Input(Machine(Buffer),fullquery)==(?);
  List_Input(Machine(Buffer),contentsquery)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Buffer),add)==(?);
  List_Output(Machine(Buffer),remove)==(ee);
  List_Output(Machine(Buffer),emptyquery)==(rr);
  List_Output(Machine(Buffer),fullquery)==(rr);
  List_Output(Machine(Buffer),contentsquery)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Buffer),add)==(add(xx));
  List_Header(Machine(Buffer),remove)==(ee <-- remove);
  List_Header(Machine(Buffer),emptyquery)==(rr <-- emptyquery);
  List_Header(Machine(Buffer),fullquery)==(rr <-- fullquery);
  List_Header(Machine(Buffer),contentsquery)==(oo <-- contentsquery)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Buffer),add)==(xx: ELEM & size(buff)<qlen);
  List_Precondition(Machine(Buffer),remove)==(buff/=<>);
  List_Precondition(Machine(Buffer),emptyquery)==(btrue);
  List_Precondition(Machine(Buffer),fullquery)==(btrue);
  List_Precondition(Machine(Buffer),contentsquery)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Buffer),contentsquery)==(btrue | oo:=size(buff));
  Expanded_List_Substitution(Machine(Buffer),fullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  Expanded_List_Substitution(Machine(Buffer),emptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  Expanded_List_Substitution(Machine(Buffer),remove)==(buff/=<> | ee,buff:=first(buff),tail(buff));
  Expanded_List_Substitution(Machine(Buffer),add)==(xx: ELEM & size(buff)<qlen | buff:=buff<-xx);
  List_Substitution(Machine(Buffer),add)==(buff:=buff<-xx);
  List_Substitution(Machine(Buffer),remove)==(ee:=first(buff) || buff:=tail(buff));
  List_Substitution(Machine(Buffer),emptyquery)==(IF buff = <> THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Machine(Buffer),fullquery)==(IF size(buff) = qlen THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Machine(Buffer),contentsquery)==(oo:=size(buff))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Buffer))==(?);
  Inherited_List_Constants(Machine(Buffer))==(?);
  List_Constants(Machine(Buffer))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Buffer),RESP)==({yes,no});
  Context_List_Enumerated(Machine(Buffer))==(?);
  Context_List_Defered(Machine(Buffer))==(?);
  Context_List_Sets(Machine(Buffer))==(?);
  List_Valuable_Sets(Machine(Buffer))==(?);
  Inherited_List_Enumerated(Machine(Buffer))==(?);
  Inherited_List_Defered(Machine(Buffer))==(?);
  Inherited_List_Sets(Machine(Buffer))==(?);
  List_Enumerated(Machine(Buffer))==(RESP);
  List_Defered(Machine(Buffer))==(?);
  List_Sets(Machine(Buffer))==(RESP)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Buffer))==(?);
  Expanded_List_HiddenConstants(Machine(Buffer))==(?);
  List_HiddenConstants(Machine(Buffer))==(?);
  External_List_HiddenConstants(Machine(Buffer))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Buffer))==(btrue);
  Context_List_Properties(Machine(Buffer))==(btrue);
  Inherited_List_Properties(Machine(Buffer))==(btrue);
  List_Properties(Machine(Buffer))==(RESP: FIN(INTEGER) & not(RESP = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Buffer),add)==(?);
  List_ANY_Var(Machine(Buffer),remove)==(?);
  List_ANY_Var(Machine(Buffer),emptyquery)==(?);
  List_ANY_Var(Machine(Buffer),fullquery)==(?);
  List_ANY_Var(Machine(Buffer),contentsquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Buffer)) == (RESP,yes,no | ? | buff | ? | add,remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer);
  List_Of_HiddenCst_Ids(Machine(Buffer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Buffer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Buffer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Buffer)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Buffer)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Buffer)) == (Type(RESP) == Cst(SetOf(etype(RESP,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Buffer)) == (Type(yes) == Cst(etype(RESP,0,1));Type(no) == Cst(etype(RESP,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Buffer)) == (Type(buff) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Buffer)) == (Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(remove) == Cst(atype(ELEM,?,?),No_type);Type(add) == Cst(No_type,atype(ELEM,?,?)));
  Observers(Machine(Buffer)) == (Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type))
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
