Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARITHMETIC))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARITHMETIC))==(Machine(L_ARITHMETIC));
  Level(Machine(L_ARITHMETIC))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARITHMETIC)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARITHMETIC))==(?);
  List_Includes(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARITHMETIC))==(?);
  Context_List_Variables(Machine(L_ARITHMETIC))==(?);
  Abstract_List_Variables(Machine(L_ARITHMETIC))==(?);
  Local_List_Variables(Machine(L_ARITHMETIC))==(?);
  List_Variables(Machine(L_ARITHMETIC))==(?);
  External_List_Variables(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARITHMETIC))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARITHMETIC))==(?);
  External_List_VisibleVariables(Machine(L_ARITHMETIC))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARITHMETIC))==(?);
  List_VisibleVariables(Machine(L_ARITHMETIC))==(?);
  Internal_List_VisibleVariables(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARITHMETIC))==(btrue);
  Gluing_List_Invariant(Machine(L_ARITHMETIC))==(btrue);
  Expanded_List_Invariant(Machine(L_ARITHMETIC))==(btrue);
  Abstract_List_Invariant(Machine(L_ARITHMETIC))==(btrue);
  Context_List_Invariant(Machine(L_ARITHMETIC))==(btrue);
  List_Invariant(Machine(L_ARITHMETIC))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARITHMETIC))==(btrue);
  Abstract_List_Assertions(Machine(L_ARITHMETIC))==(btrue);
  Context_List_Assertions(Machine(L_ARITHMETIC))==(btrue);
  List_Assertions(Machine(L_ARITHMETIC))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARITHMETIC))==(skip);
  Context_List_Initialisation(Machine(L_ARITHMETIC))==(skip);
  List_Initialisation(Machine(L_ARITHMETIC))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARITHMETIC))==(btrue);
  List_Constraints(Machine(L_ARITHMETIC))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARITHMETIC))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT);
  List_Operations(Machine(L_ARITHMETIC))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARITHMETIC),MIN)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC),MAX)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC),INC)==(vv);
  List_Input(Machine(L_ARITHMETIC),DEC)==(vv);
  List_Input(Machine(L_ARITHMETIC),EXP)==(xx,nn);
  List_Input(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC),SQRT)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARITHMETIC),MIN)==(uu);
  List_Output(Machine(L_ARITHMETIC),MAX)==(uu);
  List_Output(Machine(L_ARITHMETIC),INC)==(uu);
  List_Output(Machine(L_ARITHMETIC),DEC)==(uu);
  List_Output(Machine(L_ARITHMETIC),EXP)==(rr);
  List_Output(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(uu,rr);
  List_Output(Machine(L_ARITHMETIC),SQRT)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARITHMETIC),MIN)==(uu <-- MIN(vv,ww));
  List_Header(Machine(L_ARITHMETIC),MAX)==(uu <-- MAX(vv,ww));
  List_Header(Machine(L_ARITHMETIC),INC)==(uu <-- INC(vv));
  List_Header(Machine(L_ARITHMETIC),DEC)==(uu <-- DEC(vv));
  List_Header(Machine(L_ARITHMETIC),EXP)==(rr <-- EXP(xx,nn));
  List_Header(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(uu,rr <-- LOG_BY_DEFAULT1(vv,ww));
  List_Header(Machine(L_ARITHMETIC),SQRT)==(nn <-- SQRT(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARITHMETIC),MIN)==(vv: NAT & ww: NAT);
  List_Precondition(Machine(L_ARITHMETIC),MAX)==(vv: NAT & ww: NAT);
  List_Precondition(Machine(L_ARITHMETIC),INC)==(vv: NAT & vv+1: NAT);
  List_Precondition(Machine(L_ARITHMETIC),DEC)==(vv: NAT1);
  List_Precondition(Machine(L_ARITHMETIC),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  List_Precondition(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww);
  List_Precondition(Machine(L_ARITHMETIC),SQRT)==(pp: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARITHMETIC),SQRT)==(pp: NAT | @zz.(zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp ==> nn:=zz));
  Expanded_List_Substitution(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww | @zz.(zz: NAT & vv**zz<=ww & vv**(zz+1)>ww ==> uu,rr:=zz,vv**zz));
  Expanded_List_Substitution(Machine(L_ARITHMETIC),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT | rr:=xx**nn);
  Expanded_List_Substitution(Machine(L_ARITHMETIC),DEC)==(vv: NAT1 | uu:=vv-1);
  Expanded_List_Substitution(Machine(L_ARITHMETIC),INC)==(vv: NAT & vv+1: NAT | uu:=vv+1);
  Expanded_List_Substitution(Machine(L_ARITHMETIC),MAX)==(vv: NAT & ww: NAT | uu:=max({vv,ww}));
  Expanded_List_Substitution(Machine(L_ARITHMETIC),MIN)==(vv: NAT & ww: NAT | uu:=min({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC),MIN)==(uu:=min({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC),MAX)==(uu:=max({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC),INC)==(uu:=vv+1);
  List_Substitution(Machine(L_ARITHMETIC),DEC)==(uu:=vv-1);
  List_Substitution(Machine(L_ARITHMETIC),EXP)==(rr:=xx**nn);
  List_Substitution(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(ANY zz WHERE zz: NAT & vv**zz<=ww & vv**(zz+1)>ww THEN uu:=zz || rr:=vv**zz END);
  List_Substitution(Machine(L_ARITHMETIC),SQRT)==(ANY zz WHERE zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp THEN nn:=zz END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARITHMETIC))==(?);
  Inherited_List_Constants(Machine(L_ARITHMETIC))==(?);
  List_Constants(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARITHMETIC))==(?);
  Context_List_Defered(Machine(L_ARITHMETIC))==(?);
  Context_List_Sets(Machine(L_ARITHMETIC))==(?);
  List_Valuable_Sets(Machine(L_ARITHMETIC))==(?);
  Inherited_List_Enumerated(Machine(L_ARITHMETIC))==(?);
  Inherited_List_Defered(Machine(L_ARITHMETIC))==(?);
  Inherited_List_Sets(Machine(L_ARITHMETIC))==(?);
  List_Enumerated(Machine(L_ARITHMETIC))==(?);
  List_Defered(Machine(L_ARITHMETIC))==(?);
  List_Sets(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARITHMETIC))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARITHMETIC))==(?);
  List_HiddenConstants(Machine(L_ARITHMETIC))==(?);
  External_List_HiddenConstants(Machine(L_ARITHMETIC))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARITHMETIC))==(btrue);
  Context_List_Properties(Machine(L_ARITHMETIC))==(btrue);
  Inherited_List_Properties(Machine(L_ARITHMETIC))==(btrue);
  List_Properties(Machine(L_ARITHMETIC))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARITHMETIC),MIN)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC),MAX)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC),INC)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC),DEC)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC),EXP)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC),LOG_BY_DEFAULT1)==(Var(zz) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(L_ARITHMETIC),SQRT)==(Var(zz) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(L_ARITHMETIC),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARITHMETIC)) == (? | ? | ? | ? | MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT | ? | ? | ? | L_ARITHMETIC);
  List_Of_HiddenCst_Ids(Machine(L_ARITHMETIC)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARITHMETIC)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARITHMETIC)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARITHMETIC)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARITHMETIC)) == (Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(LOG_BY_DEFAULT1) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(L_ARITHMETIC)) == (Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(LOG_BY_DEFAULT1) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
