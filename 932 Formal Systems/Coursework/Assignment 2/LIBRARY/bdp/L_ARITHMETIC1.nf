Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(L_ARITHMETIC1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(L_ARITHMETIC1))==(Machine(L_ARITHMETIC1));
  Level(Machine(L_ARITHMETIC1))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(L_ARITHMETIC1)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(L_ARITHMETIC1))==(?);
  List_Includes(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(L_ARITHMETIC1))==(?);
  Context_List_Variables(Machine(L_ARITHMETIC1))==(?);
  Abstract_List_Variables(Machine(L_ARITHMETIC1))==(?);
  Local_List_Variables(Machine(L_ARITHMETIC1))==(?);
  List_Variables(Machine(L_ARITHMETIC1))==(?);
  External_List_Variables(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(L_ARITHMETIC1))==(?);
  Abstract_List_VisibleVariables(Machine(L_ARITHMETIC1))==(?);
  External_List_VisibleVariables(Machine(L_ARITHMETIC1))==(?);
  Expanded_List_VisibleVariables(Machine(L_ARITHMETIC1))==(?);
  List_VisibleVariables(Machine(L_ARITHMETIC1))==(?);
  Internal_List_VisibleVariables(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(L_ARITHMETIC1))==(btrue);
  Gluing_List_Invariant(Machine(L_ARITHMETIC1))==(btrue);
  Expanded_List_Invariant(Machine(L_ARITHMETIC1))==(btrue);
  Abstract_List_Invariant(Machine(L_ARITHMETIC1))==(btrue);
  Context_List_Invariant(Machine(L_ARITHMETIC1))==(btrue);
  List_Invariant(Machine(L_ARITHMETIC1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(L_ARITHMETIC1))==(btrue);
  Abstract_List_Assertions(Machine(L_ARITHMETIC1))==(btrue);
  Context_List_Assertions(Machine(L_ARITHMETIC1))==(btrue);
  List_Assertions(Machine(L_ARITHMETIC1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(L_ARITHMETIC1))==(skip);
  Context_List_Initialisation(Machine(L_ARITHMETIC1))==(skip);
  List_Initialisation(Machine(L_ARITHMETIC1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(L_ARITHMETIC1))==(btrue);
  List_Constraints(Machine(L_ARITHMETIC1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(L_ARITHMETIC1))==(MIN,MAX,INC,DEC,EXP,SQRT,LOG_BY_DEFAULT,LOG_BY_EXCESS);
  List_Operations(Machine(L_ARITHMETIC1))==(MIN,MAX,INC,DEC,EXP,SQRT,LOG_BY_DEFAULT,LOG_BY_EXCESS)
END
&
THEORY ListInputX IS
  List_Input(Machine(L_ARITHMETIC1),MIN)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC1),MAX)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC1),INC)==(vv);
  List_Input(Machine(L_ARITHMETIC1),DEC)==(vv);
  List_Input(Machine(L_ARITHMETIC1),EXP)==(xx,nn);
  List_Input(Machine(L_ARITHMETIC1),SQRT)==(pp);
  List_Input(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(vv,ww);
  List_Input(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(vv,ww)
END
&
THEORY ListOutputX IS
  List_Output(Machine(L_ARITHMETIC1),MIN)==(uu);
  List_Output(Machine(L_ARITHMETIC1),MAX)==(uu);
  List_Output(Machine(L_ARITHMETIC1),INC)==(uu);
  List_Output(Machine(L_ARITHMETIC1),DEC)==(uu);
  List_Output(Machine(L_ARITHMETIC1),EXP)==(rr);
  List_Output(Machine(L_ARITHMETIC1),SQRT)==(nn);
  List_Output(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(uu,rr);
  List_Output(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(uu,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(L_ARITHMETIC1),MIN)==(uu <-- MIN(vv,ww));
  List_Header(Machine(L_ARITHMETIC1),MAX)==(uu <-- MAX(vv,ww));
  List_Header(Machine(L_ARITHMETIC1),INC)==(uu <-- INC(vv));
  List_Header(Machine(L_ARITHMETIC1),DEC)==(uu <-- DEC(vv));
  List_Header(Machine(L_ARITHMETIC1),EXP)==(rr <-- EXP(xx,nn));
  List_Header(Machine(L_ARITHMETIC1),SQRT)==(nn <-- SQRT(pp));
  List_Header(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(uu,rr <-- LOG_BY_DEFAULT(vv,ww));
  List_Header(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(uu,bb <-- LOG_BY_EXCESS(vv,ww))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(L_ARITHMETIC1),MIN)==(vv: NAT & ww: NAT);
  List_Precondition(Machine(L_ARITHMETIC1),MAX)==(vv: NAT & ww: NAT);
  List_Precondition(Machine(L_ARITHMETIC1),INC)==(vv: NAT & vv+1: NAT);
  List_Precondition(Machine(L_ARITHMETIC1),DEC)==(vv: NAT1);
  List_Precondition(Machine(L_ARITHMETIC1),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT);
  List_Precondition(Machine(L_ARITHMETIC1),SQRT)==(pp: NAT);
  List_Precondition(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(vv: NAT & ww: NAT & vv>1);
  List_Precondition(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(vv: NAT & ww: NAT & vv>1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(vv: NAT & ww: NAT & vv>1 | uu,bb:=min({xx | xx: NATURAL & ww<=vv**xx}),bool(ww = vv**min({xx | xx: NATURAL & ww<=vv**xx})));
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(vv: NAT & ww: NAT & vv>1 | uu,rr:=min({xx | xx: NATURAL & ww<vv**(xx+1)}),vv**min({xx | xx: NATURAL & ww<vv**(xx+1)}));
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),SQRT)==(pp: NAT | @zz.(zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp ==> nn:=zz));
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),EXP)==(xx: NAT & nn: NAT & not(xx = 0 & nn = 0) & xx**nn: NAT | rr:=xx**nn);
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),DEC)==(vv: NAT1 | uu:=vv-1);
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),INC)==(vv: NAT & vv+1: NAT | uu:=vv+1);
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),MAX)==(vv: NAT & ww: NAT | uu:=max({vv,ww}));
  Expanded_List_Substitution(Machine(L_ARITHMETIC1),MIN)==(vv: NAT & ww: NAT | uu:=min({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC1),MIN)==(uu:=min({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC1),MAX)==(uu:=max({vv,ww}));
  List_Substitution(Machine(L_ARITHMETIC1),INC)==(uu:=vv+1);
  List_Substitution(Machine(L_ARITHMETIC1),DEC)==(uu:=vv-1);
  List_Substitution(Machine(L_ARITHMETIC1),EXP)==(rr:=xx**nn);
  List_Substitution(Machine(L_ARITHMETIC1),SQRT)==(ANY zz WHERE zz: NAT & zz*zz<=pp & (zz+1)*(zz+1)>pp THEN nn:=zz END);
  List_Substitution(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(uu:=min({xx | xx: NATURAL & ww<vv**(xx+1)}) || rr:=vv**min({xx | xx: NATURAL & ww<vv**(xx+1)}));
  List_Substitution(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(uu:=min({xx | xx: NATURAL & ww<=vv**xx}) || bb:=bool(ww = vv**min({xx | xx: NATURAL & ww<=vv**xx})))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(L_ARITHMETIC1))==(?);
  Inherited_List_Constants(Machine(L_ARITHMETIC1))==(?);
  List_Constants(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(L_ARITHMETIC1))==(?);
  Context_List_Defered(Machine(L_ARITHMETIC1))==(?);
  Context_List_Sets(Machine(L_ARITHMETIC1))==(?);
  List_Valuable_Sets(Machine(L_ARITHMETIC1))==(?);
  Inherited_List_Enumerated(Machine(L_ARITHMETIC1))==(?);
  Inherited_List_Defered(Machine(L_ARITHMETIC1))==(?);
  Inherited_List_Sets(Machine(L_ARITHMETIC1))==(?);
  List_Enumerated(Machine(L_ARITHMETIC1))==(?);
  List_Defered(Machine(L_ARITHMETIC1))==(?);
  List_Sets(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(L_ARITHMETIC1))==(?);
  Expanded_List_HiddenConstants(Machine(L_ARITHMETIC1))==(?);
  List_HiddenConstants(Machine(L_ARITHMETIC1))==(?);
  External_List_HiddenConstants(Machine(L_ARITHMETIC1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(L_ARITHMETIC1))==(btrue);
  Context_List_Properties(Machine(L_ARITHMETIC1))==(btrue);
  Inherited_List_Properties(Machine(L_ARITHMETIC1))==(btrue);
  List_Properties(Machine(L_ARITHMETIC1))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(L_ARITHMETIC1),MIN)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),MAX)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),INC)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),DEC)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),EXP)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),SQRT)==(Var(zz) == btype(INTEGER,?,?));
  List_ANY_Var(Machine(L_ARITHMETIC1),LOG_BY_DEFAULT)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),LOG_BY_EXCESS)==(?);
  List_ANY_Var(Machine(L_ARITHMETIC1),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(L_ARITHMETIC1)) == (? | ? | ? | ? | MIN,MAX,INC,DEC,EXP,SQRT,LOG_BY_DEFAULT,LOG_BY_EXCESS | ? | ? | ? | L_ARITHMETIC1);
  List_Of_HiddenCst_Ids(Machine(L_ARITHMETIC1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARITHMETIC1)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARITHMETIC1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARITHMETIC1)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(L_ARITHMETIC1)) == (Type(LOG_BY_EXCESS) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LOG_BY_DEFAULT) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(L_ARITHMETIC1)) == (Type(LOG_BY_EXCESS) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(LOG_BY_DEFAULT) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SQRT) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(EXP) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(DEC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(INC) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(MAX) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MIN) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
