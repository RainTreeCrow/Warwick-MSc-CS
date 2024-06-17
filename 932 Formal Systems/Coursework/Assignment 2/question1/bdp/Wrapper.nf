Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Wrapper))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Wrapper))==(Machine(Wrapper));
  Level(Machine(Wrapper))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Wrapper)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Wrapper))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Wrapper))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Wrapper))==(Buffer);
  List_Includes(Machine(Wrapper))==(Buffer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Wrapper))==(add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Wrapper))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Wrapper))==(?);
  Context_List_Variables(Machine(Wrapper))==(?);
  Abstract_List_Variables(Machine(Wrapper))==(?);
  Local_List_Variables(Machine(Wrapper))==(?);
  List_Variables(Machine(Wrapper))==(buff);
  External_List_Variables(Machine(Wrapper))==(buff)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Wrapper))==(?);
  Abstract_List_VisibleVariables(Machine(Wrapper))==(?);
  External_List_VisibleVariables(Machine(Wrapper))==(?);
  Expanded_List_VisibleVariables(Machine(Wrapper))==(?);
  List_VisibleVariables(Machine(Wrapper))==(?);
  Internal_List_VisibleVariables(Machine(Wrapper))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Wrapper))==(btrue);
  Gluing_List_Invariant(Machine(Wrapper))==(btrue);
  Abstract_List_Invariant(Machine(Wrapper))==(btrue);
  Expanded_List_Invariant(Machine(Wrapper))==(buff: seq(ELEM) & size(buff)<=qlen);
  Context_List_Invariant(Machine(Wrapper))==(btrue);
  List_Invariant(Machine(Wrapper))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Wrapper))==(btrue);
  Expanded_List_Assertions(Machine(Wrapper))==(btrue);
  Context_List_Assertions(Machine(Wrapper))==(btrue);
  List_Assertions(Machine(Wrapper))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Wrapper))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Wrapper))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Wrapper))==(buff:=<>);
  Context_List_Initialisation(Machine(Wrapper))==(skip);
  List_Initialisation(Machine(Wrapper))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Wrapper))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Wrapper),Machine(Buffer))==(qlen,ELEM)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Wrapper),Machine(Buffer))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Context_Constraints(Machine(Wrapper))==(btrue);
  List_Constraints(Machine(Wrapper))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Wrapper))==(wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery,add,remove,emptyquery,fullquery,contentsquery);
  List_Operations(Machine(Wrapper))==(wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery,add,remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(Wrapper),contentsquery)==(?);
  List_Input(Machine(Wrapper),fullquery)==(?);
  List_Input(Machine(Wrapper),emptyquery)==(?);
  List_Input(Machine(Wrapper),remove)==(?);
  List_Input(Machine(Wrapper),add)==(xx);
  List_Input(Machine(Wrapper),wrapadd)==(xx);
  List_Input(Machine(Wrapper),wrapremove)==(?);
  List_Input(Machine(Wrapper),wrapemptyquery)==(?);
  List_Input(Machine(Wrapper),wrapfullquery)==(?);
  List_Input(Machine(Wrapper),wrapcontentsquery)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Wrapper),contentsquery)==(oo);
  List_Output(Machine(Wrapper),fullquery)==(rr);
  List_Output(Machine(Wrapper),emptyquery)==(rr);
  List_Output(Machine(Wrapper),remove)==(ee);
  List_Output(Machine(Wrapper),add)==(?);
  List_Output(Machine(Wrapper),wrapadd)==(mm);
  List_Output(Machine(Wrapper),wrapremove)==(mm,ee);
  List_Output(Machine(Wrapper),wrapemptyquery)==(rr);
  List_Output(Machine(Wrapper),wrapfullquery)==(rr);
  List_Output(Machine(Wrapper),wrapcontentsquery)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Wrapper),contentsquery)==(oo <-- contentsquery);
  List_Header(Machine(Wrapper),fullquery)==(rr <-- fullquery);
  List_Header(Machine(Wrapper),emptyquery)==(rr <-- emptyquery);
  List_Header(Machine(Wrapper),remove)==(ee <-- remove);
  List_Header(Machine(Wrapper),add)==(add(xx));
  List_Header(Machine(Wrapper),wrapadd)==(mm <-- wrapadd(xx));
  List_Header(Machine(Wrapper),wrapremove)==(mm,ee <-- wrapremove);
  List_Header(Machine(Wrapper),wrapemptyquery)==(rr <-- wrapemptyquery);
  List_Header(Machine(Wrapper),wrapfullquery)==(rr <-- wrapfullquery);
  List_Header(Machine(Wrapper),wrapcontentsquery)==(oo <-- wrapcontentsquery)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Wrapper),contentsquery)==(btrue);
  List_Precondition(Machine(Wrapper),contentsquery)==(btrue);
  Own_Precondition(Machine(Wrapper),fullquery)==(btrue);
  List_Precondition(Machine(Wrapper),fullquery)==(btrue);
  Own_Precondition(Machine(Wrapper),emptyquery)==(btrue);
  List_Precondition(Machine(Wrapper),emptyquery)==(btrue);
  Own_Precondition(Machine(Wrapper),remove)==(buff/=<>);
  List_Precondition(Machine(Wrapper),remove)==(buff/=<>);
  Own_Precondition(Machine(Wrapper),add)==(xx: ELEM & size(buff)<qlen);
  List_Precondition(Machine(Wrapper),add)==(xx: ELEM & size(buff)<qlen);
  List_Precondition(Machine(Wrapper),wrapadd)==(xx: ELEM);
  List_Precondition(Machine(Wrapper),wrapremove)==(btrue);
  List_Precondition(Machine(Wrapper),wrapemptyquery)==(btrue);
  List_Precondition(Machine(Wrapper),wrapfullquery)==(btrue);
  List_Precondition(Machine(Wrapper),wrapcontentsquery)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Wrapper),wrapcontentsquery)==(btrue | oo:=size(buff));
  Expanded_List_Substitution(Machine(Wrapper),wrapfullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  Expanded_List_Substitution(Machine(Wrapper),wrapemptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  Expanded_List_Substitution(Machine(Wrapper),wrapremove)==(btrue | @(mm$0).(mm$0: MSG ==> mm:=mm$0) || @(ee$0).(ee$0: ELEM ==> ee:=ee$0));
  Expanded_List_Substitution(Machine(Wrapper),wrapadd)==(xx: ELEM | @(mm$0).(mm$0: MSG ==> mm:=mm$0));
  List_Substitution(Machine(Wrapper),contentsquery)==(oo:=size(buff));
  Expanded_List_Substitution(Machine(Wrapper),contentsquery)==(btrue | oo:=size(buff));
  List_Substitution(Machine(Wrapper),fullquery)==(IF size(buff) = qlen THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Machine(Wrapper),fullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  List_Substitution(Machine(Wrapper),emptyquery)==(IF buff = <> THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Machine(Wrapper),emptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  List_Substitution(Machine(Wrapper),remove)==(ee:=first(buff) || buff:=tail(buff));
  Expanded_List_Substitution(Machine(Wrapper),remove)==(buff/=<> | ee,buff:=first(buff),tail(buff));
  List_Substitution(Machine(Wrapper),add)==(buff:=buff<-xx);
  Expanded_List_Substitution(Machine(Wrapper),add)==(xx: ELEM & size(buff)<qlen | buff:=buff<-xx);
  List_Substitution(Machine(Wrapper),wrapadd)==(mm:: MSG);
  List_Substitution(Machine(Wrapper),wrapremove)==(mm:: MSG || ee:: ELEM);
  List_Substitution(Machine(Wrapper),wrapemptyquery)==(rr <-- emptyquery);
  List_Substitution(Machine(Wrapper),wrapfullquery)==(rr <-- fullquery);
  List_Substitution(Machine(Wrapper),wrapcontentsquery)==(oo <-- contentsquery)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Wrapper))==(?);
  Inherited_List_Constants(Machine(Wrapper))==(?);
  List_Constants(Machine(Wrapper))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Wrapper),RESP)==({yes,no});
  Context_List_Enumerated(Machine(Wrapper))==(?);
  Context_List_Defered(Machine(Wrapper))==(?);
  Context_List_Sets(Machine(Wrapper))==(?);
  List_Valuable_Sets(Machine(Wrapper))==(?);
  Inherited_List_Enumerated(Machine(Wrapper))==(RESP);
  Inherited_List_Defered(Machine(Wrapper))==(?);
  Inherited_List_Sets(Machine(Wrapper))==(RESP);
  List_Enumerated(Machine(Wrapper))==(MSG);
  List_Defered(Machine(Wrapper))==(?);
  List_Sets(Machine(Wrapper))==(MSG);
  Set_Definition(Machine(Wrapper),MSG)==({success,emptybuffer,fullbuffer})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Wrapper))==(?);
  Expanded_List_HiddenConstants(Machine(Wrapper))==(?);
  List_HiddenConstants(Machine(Wrapper))==(?);
  External_List_HiddenConstants(Machine(Wrapper))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Wrapper))==(btrue);
  Context_List_Properties(Machine(Wrapper))==(btrue);
  Inherited_List_Properties(Machine(Wrapper))==(RESP: FIN(INTEGER) & not(RESP = {}));
  List_Properties(Machine(Wrapper))==(MSG: FIN(INTEGER) & not(MSG = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Wrapper),contentsquery)==(?);
  List_ANY_Var(Machine(Wrapper),fullquery)==(?);
  List_ANY_Var(Machine(Wrapper),emptyquery)==(?);
  List_ANY_Var(Machine(Wrapper),remove)==(?);
  List_ANY_Var(Machine(Wrapper),add)==(?);
  List_ANY_Var(Machine(Wrapper),wrapadd)==(?);
  List_ANY_Var(Machine(Wrapper),wrapremove)==(?);
  List_ANY_Var(Machine(Wrapper),wrapemptyquery)==(?);
  List_ANY_Var(Machine(Wrapper),wrapfullquery)==(?);
  List_ANY_Var(Machine(Wrapper),wrapcontentsquery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Wrapper)) == (MSG,success,emptybuffer,fullbuffer | RESP,yes,no | ? | V,buff | wrapadd,wrapremove,wrapemptyquery,wrapfullquery,wrapcontentsquery | add,remove,emptyquery,fullquery,contentsquery | included(Machine(Buffer)) | qlen,ELEM | Wrapper);
  List_Of_HiddenCst_Ids(Machine(Wrapper)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Wrapper)) == (?);
  List_Of_VisibleVar_Ids(Machine(Wrapper)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Wrapper)) == (?: ?);
  List_Of_Ids(Machine(Buffer)) == (RESP,yes,no | ? | buff | ? | add,remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer);
  List_Of_HiddenCst_Ids(Machine(Buffer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Buffer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Buffer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Buffer)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Wrapper)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Wrapper)) == (Type(RESP) == Cst(SetOf(etype(RESP,0,1)));Type(MSG) == Cst(SetOf(etype(MSG,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Wrapper)) == (Type(no) == Cst(etype(RESP,0,1));Type(yes) == Cst(etype(RESP,0,1));Type(success) == Cst(etype(MSG,0,2));Type(emptybuffer) == Cst(etype(MSG,0,2));Type(fullbuffer) == Cst(etype(MSG,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Wrapper)) == (Type(buff) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Wrapper)) == (Type(add) == Cst(No_type,atype(ELEM,?,?));Type(remove) == Cst(atype(ELEM,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapcontentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapfullquery) == Cst(etype(RESP,?,?),No_type);Type(wrapemptyquery) == Cst(etype(RESP,?,?),No_type);Type(wrapremove) == Cst(etype(MSG,?,?)*atype(ELEM,?,?),No_type);Type(wrapadd) == Cst(etype(MSG,?,?),atype(ELEM,?,?)));
  Observers(Machine(Wrapper)) == (Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapcontentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrapfullquery) == Cst(etype(RESP,?,?),No_type);Type(wrapemptyquery) == Cst(etype(RESP,?,?),No_type);Type(wrapremove) == Cst(etype(MSG,?,?)*atype(ELEM,?,?),No_type);Type(wrapadd) == Cst(etype(MSG,?,?),atype(ELEM,?,?)))
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
