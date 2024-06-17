Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARITHMETIC1_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARITHMETIC1_1))==(Machine(L_ARITHMETIC1));
  Level(Implementation(L_ARITHMETIC1_1))==(1);
  Upper_Level(Implementation(L_ARITHMETIC1_1))==(Machine(L_ARITHMETIC1))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARITHMETIC1_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARITHMETIC1_1))==(L_ARITHMETIC);
  Inherited_List_Includes(Implementation(L_ARITHMETIC1_1))==(L_ARITHMETIC)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARITHMETIC1_1))==(MIN,MAX,INC,DEC,EXP,SQRT)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARITHMETIC1_1))==(?);
  Context_List_Variables(Implementation(L_ARITHMETIC1_1))==(?);
  Abstract_List_Variables(Implementation(L_ARITHMETIC1_1))==(?);
  Local_List_Variables(Implementation(L_ARITHMETIC1_1))==(?);
  List_Variables(Implementation(L_ARITHMETIC1_1))==(?);
  External_List_Variables(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?);
  List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARITHMETIC1_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARITHMETIC1_1))==(btrue);
  Expanded_List_Invariant(Implementation(L_ARITHMETIC1_1))==(btrue);
  Context_List_Invariant(Implementation(L_ARITHMETIC1_1))==(btrue);
  List_Invariant(Implementation(L_ARITHMETIC1_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARITHMETIC1_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARITHMETIC1_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARITHMETIC1_1))==(btrue);
  List_Assertions(Implementation(L_ARITHMETIC1_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARITHMETIC1_1))==(skip);
  Context_List_Initialisation(Implementation(L_ARITHMETIC1_1))==(skip);
  List_Initialisation(Implementation(L_ARITHMETIC1_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(L_ARITHMETIC1_1),Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARITHMETIC1_1),Machine(L_ARITHMETIC))==(btrue);
  List_Constraints(Implementation(L_ARITHMETIC1_1))==(btrue);
  List_Context_Constraints(Implementation(L_ARITHMETIC1_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARITHMETIC1_1))==(LOG_BY_DEFAULT,LOG_BY_EXCESS,MIN,MAX,INC,DEC,EXP,SQRT);
  List_Operations(Implementation(L_ARITHMETIC1_1))==(LOG_BY_DEFAULT,LOG_BY_EXCESS,MIN,MAX,INC,DEC,EXP,SQRT)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARITHMETIC1_1),SQRT)==(pp);
  List_Input(Implementation(L_ARITHMETIC1_1),EXP)==(xx,nn);
  List_Input(Implementation(L_ARITHMETIC1_1),DEC)==(vv);
  List_Input(Implementation(L_ARITHMETIC1_1),INC)==(vv);
  List_Input(Implementation(L_ARITHMETIC1_1),MAX)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC1_1),MIN)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(vv,ww);
  List_Input(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(vv,ww)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARITHMETIC1_1),SQRT)==(nn);
  List_Output(Implementation(L_ARITHMETIC1_1),EXP)==(rr);
  List_Output(Implementation(L_ARITHMETIC1_1),DEC)==(uu);
  List_Output(Implementation(L_ARITHMETIC1_1),INC)==(uu);
  List_Output(Implementation(L_ARITHMETIC1_1),MAX)==(uu);
  List_Output(Implementation(L_ARITHMETIC1_1),MIN)==(uu);
  List_Output(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(uu,rr);
  List_Output(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(uu,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARITHMETIC1_1),SQRT)==(nn <-- SQRT(pp));
  List_Header(Implementation(L_ARITHMETIC1_1),EXP)==(rr <-- EXP(xx,nn));
  List_Header(Implementation(L_ARITHMETIC1_1),DEC)==(uu <-- DEC(vv));
  List_Header(Implementation(L_ARITHMETIC1_1),INC)==(uu <-- INC(vv));
  List_Header(Implementation(L_ARITHMETIC1_1),MAX)==(uu <-- MAX(vv,ww));
  List_Header(Implementation(L_ARITHMETIC1_1),MIN)==(uu <-- MIN(vv,ww));
  List_Header(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(uu,rr <-- LOG_BY_DEFAULT(vv,ww));
  List_Header(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(uu,bb <-- LOG_BY_EXCESS(vv,ww))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARITHMETIC1_1),SQRT)==(pp: NAT);
  List_Precondition(Implementation(L_ARITHMETIC1_1),SQRT)==(pp: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  List_Precondition(Implementation(L_ARITHMETIC1_1),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),DEC)==(vv: NAT1);
  List_Precondition(Implementation(L_ARITHMETIC1_1),DEC)==(vv: NAT1);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),INC)==(vv: NAT & vv+1: NAT);
  List_Precondition(Implementation(L_ARITHMETIC1_1),INC)==(vv: NAT & vv+1: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),MAX)==(vv: NAT & ww: NAT);
  List_Precondition(Implementation(L_ARITHMETIC1_1),MAX)==(vv: NAT & ww: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),MIN)==(vv: NAT & ww: NAT);
  List_Precondition(Implementation(L_ARITHMETIC1_1),MIN)==(vv: NAT & ww: NAT);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(vv: NAT & ww: NAT & vv>1);
  Own_Precondition(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(btrue);
  List_Precondition(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(vv: NAT & ww: NAT & vv>1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(vv: NAT & ww: NAT & vv>1 | vv<=ww ==> @zz.((vv: NAT & ww: NAT1 & vv>1 & vv<=ww | @(zz$1).(zz$1: NAT & vv**zz$1<=ww & vv**(zz$1+1)>ww ==> uu,zz:=zz$1,vv**zz$1));(zz/=ww ==> ((uu+1: INT & uu: INT & 1: INT | uu:=uu+1);bb:=FALSE) [] not(zz/=ww) ==> bb:=TRUE)) [] not(vv<=ww) ==> (ww = 1 ==> ((0: INT | uu:=0);bb:=TRUE) [] not(ww = 1) ==> (ww = 0 ==> ((0: INT | uu:=0);bb:=FALSE) [] not(ww = 0) ==> ((1: INT | uu:=1);bb:=FALSE))));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(vv: NAT & ww: NAT & vv>1 | vv<=ww ==> (vv: NAT & ww: NAT1 & vv>1 & vv<=ww | @zz.(zz: NAT & vv**zz<=ww & vv**(zz+1)>ww ==> uu,rr:=zz,vv**zz)) [] not(vv<=ww) ==> ((0: INT | uu:=0);(1: INT | rr:=1)));
  List_Substitution(Implementation(L_ARITHMETIC1_1),SQRT)==(ANY zz WHERE zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp THEN nn:=zz END);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),SQRT)==(pp: NAT | @zz.(zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp ==> nn:=zz));
  List_Substitution(Implementation(L_ARITHMETIC1_1),EXP)==(rr:=xx**nn);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT | rr:=xx**nn);
  List_Substitution(Implementation(L_ARITHMETIC1_1),DEC)==(uu:=vv-1);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),DEC)==(vv: NAT1 | uu:=vv-1);
  List_Substitution(Implementation(L_ARITHMETIC1_1),INC)==(uu:=vv+1);
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),INC)==(vv: NAT & vv+1: NAT | uu:=vv+1);
  List_Substitution(Implementation(L_ARITHMETIC1_1),MAX)==(uu:=max({vv,ww}));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),MAX)==(vv: NAT & ww: NAT | uu:=max({vv,ww}));
  List_Substitution(Implementation(L_ARITHMETIC1_1),MIN)==(uu:=min({vv,ww}));
  Expanded_List_Substitution(Implementation(L_ARITHMETIC1_1),MIN)==(vv: NAT & ww: NAT | uu:=min({vv,ww}));
  List_Substitution(Implementation(L_ARITHMETIC1_1),LOG_BY_DEFAULT)==(IF vv<=ww THEN uu,rr <-- LOG_BY_DEFAULT1(vv,ww) ELSE uu:=0;rr:=1 END);
  List_Substitution(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS)==(IF vv<=ww THEN VAR zz IN uu,zz <-- LOG_BY_DEFAULT1(vv,ww);IF zz/=ww THEN uu:=uu+1;bb:=FALSE ELSE bb:=TRUE END END ELSE IF ww = 1 THEN uu:=0;bb:=TRUE ELSIF ww = 0 THEN uu:=0;bb:=FALSE ELSE uu:=1;bb:=FALSE END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARITHMETIC1_1))==(?);
  Inherited_List_Constants(Implementation(L_ARITHMETIC1_1))==(?);
  List_Constants(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARITHMETIC1_1))==(?);
  Context_List_Defered(Implementation(L_ARITHMETIC1_1))==(?);
  Context_List_Sets(Implementation(L_ARITHMETIC1_1))==(?);
  List_Own_Enumerated(Implementation(L_ARITHMETIC1_1))==(?);
  List_Valuable_Sets(Implementation(L_ARITHMETIC1_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARITHMETIC1_1))==(?);
  Inherited_List_Defered(Implementation(L_ARITHMETIC1_1))==(?);
  Inherited_List_Sets(Implementation(L_ARITHMETIC1_1))==(?);
  List_Enumerated(Implementation(L_ARITHMETIC1_1))==(?);
  List_Defered(Implementation(L_ARITHMETIC1_1))==(?);
  List_Sets(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARITHMETIC1_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARITHMETIC1_1))==(?);
  List_HiddenConstants(Implementation(L_ARITHMETIC1_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARITHMETIC1_1))==(btrue);
  Context_List_Properties(Implementation(L_ARITHMETIC1_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARITHMETIC1_1))==(btrue);
  List_Properties(Implementation(L_ARITHMETIC1_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARITHMETIC1_1))==(aa: aa);
  List_Values(Implementation(L_ARITHMETIC1_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARITHMETIC1_1),Machine(L_ARITHMETIC))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARITHMETIC1_1))==(Type(LOG_BY_EXCESS) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LOG_BY_DEFAULT) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARITHMETIC1_1)) == (? | ? | ? | ? | LOG_BY_DEFAULT,LOG_BY_EXCESS | ? | imported(Machine(L_ARITHMETIC)) | ? | L_ARITHMETIC1_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARITHMETIC1_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARITHMETIC1_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARITHMETIC1_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARITHMETIC1_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARITHMETIC)) == (? | ? | ? | ? | MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT | ? | ? | ? | L_ARITHMETIC);
  List_Of_HiddenCst_Ids(Machine(L_ARITHMETIC)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARITHMETIC)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARITHMETIC)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARITHMETIC)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARITHMETIC1_1),LOG_BY_EXCESS, 1) == (Type(zz) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARITHMETIC1_1))==(?)
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
  TypingPredicate(Implementation(L_ARITHMETIC1_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARITHMETIC1_1),Machine(L_ARITHMETIC))==(?);
  ImportedVisVariablesList(Implementation(L_ARITHMETIC1_1),Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
