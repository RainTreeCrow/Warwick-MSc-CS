Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(L_ARITHMETIC_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(L_ARITHMETIC_1))==(Machine(L_ARITHMETIC));
  Level(Refinement(L_ARITHMETIC_1))==(1);
  Upper_Level(Refinement(L_ARITHMETIC_1))==(Machine(L_ARITHMETIC))
END
&
THEORY LoadedStructureX IS
  Refinement(L_ARITHMETIC_1)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(L_ARITHMETIC_1))==(?);
  List_Includes(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(L_ARITHMETIC_1))==(?);
  Context_List_Variables(Refinement(L_ARITHMETIC_1))==(?);
  Abstract_List_Variables(Refinement(L_ARITHMETIC_1))==(?);
  Local_List_Variables(Refinement(L_ARITHMETIC_1))==(?);
  List_Variables(Refinement(L_ARITHMETIC_1))==(?);
  External_List_Variables(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?);
  Abstract_List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?);
  External_List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?);
  Expanded_List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?);
  List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?);
  Internal_List_VisibleVariables(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(L_ARITHMETIC_1))==(btrue);
  Expanded_List_Invariant(Refinement(L_ARITHMETIC_1))==(btrue);
  Abstract_List_Invariant(Refinement(L_ARITHMETIC_1))==(btrue);
  Context_List_Invariant(Refinement(L_ARITHMETIC_1))==(btrue);
  List_Invariant(Refinement(L_ARITHMETIC_1))==(btrue)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(L_ARITHMETIC_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(L_ARITHMETIC_1))==(btrue);
  Abstract_List_Assertions(Refinement(L_ARITHMETIC_1))==(btrue);
  Context_List_Assertions(Refinement(L_ARITHMETIC_1))==(btrue);
  List_Assertions(Refinement(L_ARITHMETIC_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(L_ARITHMETIC_1))==(skip);
  Context_List_Initialisation(Refinement(L_ARITHMETIC_1))==(skip);
  List_Initialisation(Refinement(L_ARITHMETIC_1))==(skip)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(L_ARITHMETIC_1))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT);
  List_Operations(Refinement(L_ARITHMETIC_1))==(MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT)
END
&
THEORY ListInputX IS
  List_Input(Refinement(L_ARITHMETIC_1),MIN)==(vv,ww);
  List_Input(Refinement(L_ARITHMETIC_1),MAX)==(vv,ww);
  List_Input(Refinement(L_ARITHMETIC_1),INC)==(vv);
  List_Input(Refinement(L_ARITHMETIC_1),DEC)==(vv);
  List_Input(Refinement(L_ARITHMETIC_1),EXP)==(xx,nn);
  List_Input(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(vv,ww);
  List_Input(Refinement(L_ARITHMETIC_1),SQRT)==(pp)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(L_ARITHMETIC_1),MIN)==(uu);
  List_Output(Refinement(L_ARITHMETIC_1),MAX)==(uu);
  List_Output(Refinement(L_ARITHMETIC_1),INC)==(uu);
  List_Output(Refinement(L_ARITHMETIC_1),DEC)==(uu);
  List_Output(Refinement(L_ARITHMETIC_1),EXP)==(rr);
  List_Output(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(uu,rr);
  List_Output(Refinement(L_ARITHMETIC_1),SQRT)==(nn)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(L_ARITHMETIC_1),MIN)==(uu <-- MIN(vv,ww));
  List_Header(Refinement(L_ARITHMETIC_1),MAX)==(uu <-- MAX(vv,ww));
  List_Header(Refinement(L_ARITHMETIC_1),INC)==(uu <-- INC(vv));
  List_Header(Refinement(L_ARITHMETIC_1),DEC)==(uu <-- DEC(vv));
  List_Header(Refinement(L_ARITHMETIC_1),EXP)==(rr <-- EXP(xx,nn));
  List_Header(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(uu,rr <-- LOG_BY_DEFAULT1(vv,ww));
  List_Header(Refinement(L_ARITHMETIC_1),SQRT)==(nn <-- SQRT(pp))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(L_ARITHMETIC_1),MIN)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),MIN)==(vv: NAT & ww: NAT);
  Own_Precondition(Refinement(L_ARITHMETIC_1),MAX)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),MAX)==(vv: NAT & ww: NAT);
  Own_Precondition(Refinement(L_ARITHMETIC_1),INC)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),INC)==(vv: NAT & vv+1: NAT);
  Own_Precondition(Refinement(L_ARITHMETIC_1),DEC)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),DEC)==(vv: NAT1);
  Own_Precondition(Refinement(L_ARITHMETIC_1),EXP)==(xx**nn = PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)));
  List_Precondition(Refinement(L_ARITHMETIC_1),EXP)==(xx**nn = PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)) & xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  Own_Precondition(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww);
  Own_Precondition(Refinement(L_ARITHMETIC_1),SQRT)==(btrue);
  List_Precondition(Refinement(L_ARITHMETIC_1),SQRT)==(pp: NAT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),SQRT)==(pp: NAT | @zz.(zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp ==> nn:=zz));
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(vv: NAT & ww: NAT1 & vv>1 & vv<=ww | @zz.(zz: NAT & vv**zz<=ww & vv**(zz+1)>ww ==> uu,rr:=zz,vv**zz));
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),EXP)==(xx**nn = PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)) & xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT | rr:=PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)));
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),DEC)==(vv: NAT1 | uu:=vv-1);
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),INC)==(vv: NAT & vv+1: NAT | uu:=vv+1);
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),MAX)==(vv: NAT & ww: NAT | uu:=max({vv,ww}));
  Expanded_List_Substitution(Refinement(L_ARITHMETIC_1),MIN)==(vv: NAT & ww: NAT | uu:=min({vv,ww}));
  List_Substitution(Refinement(L_ARITHMETIC_1),MIN)==(uu:=min({vv,ww}));
  List_Substitution(Refinement(L_ARITHMETIC_1),MAX)==(uu:=max({vv,ww}));
  List_Substitution(Refinement(L_ARITHMETIC_1),INC)==(uu:=vv+1);
  List_Substitution(Refinement(L_ARITHMETIC_1),DEC)==(uu:=vv-1);
  List_Substitution(Refinement(L_ARITHMETIC_1),EXP)==(rr:=PI(uu).(uu: NATURAL & nn/2**uu mod 2 = 1 | xx**(2**uu)));
  List_Substitution(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(ANY zz WHERE zz: NAT & vv**zz<=ww & vv**(zz+1)>ww THEN uu:=zz || rr:=vv**zz END);
  List_Substitution(Refinement(L_ARITHMETIC_1),SQRT)==(ANY zz WHERE zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp THEN nn:=zz END)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(L_ARITHMETIC_1))==(btrue);
  List_Context_Constraints(Refinement(L_ARITHMETIC_1))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(L_ARITHMETIC_1))==(?);
  Inherited_List_Constants(Refinement(L_ARITHMETIC_1))==(?);
  List_Constants(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Refinement(L_ARITHMETIC_1))==(?);
  Context_List_Defered(Refinement(L_ARITHMETIC_1))==(?);
  Context_List_Sets(Refinement(L_ARITHMETIC_1))==(?);
  List_Valuable_Sets(Refinement(L_ARITHMETIC_1))==(?);
  Inherited_List_Enumerated(Refinement(L_ARITHMETIC_1))==(?);
  Inherited_List_Defered(Refinement(L_ARITHMETIC_1))==(?);
  Inherited_List_Sets(Refinement(L_ARITHMETIC_1))==(?);
  List_Enumerated(Refinement(L_ARITHMETIC_1))==(?);
  List_Defered(Refinement(L_ARITHMETIC_1))==(?);
  List_Sets(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(L_ARITHMETIC_1))==(?);
  Expanded_List_HiddenConstants(Refinement(L_ARITHMETIC_1))==(?);
  List_HiddenConstants(Refinement(L_ARITHMETIC_1))==(?);
  External_List_HiddenConstants(Refinement(L_ARITHMETIC_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(L_ARITHMETIC_1))==(btrue);
  Context_List_Properties(Refinement(L_ARITHMETIC_1))==(btrue);
  Inherited_List_Properties(Refinement(L_ARITHMETIC_1))==(btrue);
  List_Properties(Refinement(L_ARITHMETIC_1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(L_ARITHMETIC_1),MIN)==(?);
  List_ANY_Var(Refinement(L_ARITHMETIC_1),MAX)==(?);
  List_ANY_Var(Refinement(L_ARITHMETIC_1),INC)==(?);
  List_ANY_Var(Refinement(L_ARITHMETIC_1),DEC)==(?);
  List_ANY_Var(Refinement(L_ARITHMETIC_1),EXP)==(?);
  List_ANY_Var(Refinement(L_ARITHMETIC_1),LOG_BY_DEFAULT1)==(Var(zz) == btype(INTEGER,?,?));
  List_ANY_Var(Refinement(L_ARITHMETIC_1),SQRT)==(Var(zz) == btype(INTEGER,?,?));
  List_ANY_Var(Refinement(L_ARITHMETIC_1),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(L_ARITHMETIC_1)) == (? | ? | ? | ? | MIN,MAX,INC,DEC,EXP,LOG_BY_DEFAULT1,SQRT | ? | ? | ? | L_ARITHMETIC_1);
  List_Of_HiddenCst_Ids(Refinement(L_ARITHMETIC_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(L_ARITHMETIC_1)) == (?);
  List_Of_VisibleVar_Ids(Refinement(L_ARITHMETIC_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(L_ARITHMETIC_1)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(L_ARITHMETIC_1)) == (Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(LOG_BY_DEFAULT1) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
