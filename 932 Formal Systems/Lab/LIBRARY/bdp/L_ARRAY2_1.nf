Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(L_ARRAY2_1))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(L_ARRAY2_1))==(Machine(L_ARRAY2));
  Level(Implementation(L_ARRAY2_1))==(1);
  Upper_Level(Implementation(L_ARRAY2_1))==(Machine(L_ARRAY2))
END
&
THEORY LoadedStructureX IS
  Implementation(L_ARRAY2_1)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(L_ARRAY2_1))==(L_ARRAY1);
  Inherited_List_Includes(Implementation(L_ARRAY2_1))==(L_ARRAY1)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(L_ARRAY2_1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(L_ARRAY2_1))==(L_ARRAY1)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(L_ARRAY2_1))==(?);
  Context_List_Variables(Implementation(L_ARRAY2_1))==(?);
  Abstract_List_Variables(Implementation(L_ARRAY2_1))==(arr_vrb);
  Local_List_Variables(Implementation(L_ARRAY2_1))==(?);
  List_Variables(Implementation(L_ARRAY2_1))==(arr_vrb);
  External_List_Variables(Implementation(L_ARRAY2_1))==(arr_vrb)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(L_ARRAY2_1))==(?);
  Abstract_List_VisibleVariables(Implementation(L_ARRAY2_1))==(?);
  External_List_VisibleVariables(Implementation(L_ARRAY2_1))==(?);
  Expanded_List_VisibleVariables(Implementation(L_ARRAY2_1))==(?);
  List_VisibleVariables(Implementation(L_ARRAY2_1))==(?);
  Internal_List_VisibleVariables(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(L_ARRAY2_1))==(btrue);
  Abstract_List_Invariant(Implementation(L_ARRAY2_1))==(arr_vrb: 0..LAD_maxidx --> LAD_VALUE);
  Expanded_List_Invariant(Implementation(L_ARRAY2_1))==(arr_vrb: 0..LAD_maxidx --> LAD_VALUE);
  Context_List_Invariant(Implementation(L_ARRAY2_1))==(btrue);
  List_Invariant(Implementation(L_ARRAY2_1))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Implementation(L_ARRAY2_1))==(btrue);
  Expanded_List_Assertions(Implementation(L_ARRAY2_1))==(btrue);
  Context_List_Assertions(Implementation(L_ARRAY2_1))==(btrue);
  List_Assertions(Implementation(L_ARRAY2_1))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(L_ARRAY2_1))==(@(arr_vrb$0).(arr_vrb$0: 0..LAD_maxidx --> LAD_VALUE ==> arr_vrb:=arr_vrb$0));
  Context_List_Initialisation(Implementation(L_ARRAY2_1))==(skip);
  List_Initialisation(Implementation(L_ARRAY2_1))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(L_ARRAY2_1))==(LAD_VALUE,LAD_maxidx)
END
&
THEORY ListInstanciatedParametersX IS
  Precond_Instanciated_Parameters(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(btrue);
  List_Instanciated_Parameters(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(LAD_VALUE,LAD_maxidx)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(LAD_maxidx: NAT1 & LAD_VALUE: FIN(INTEGER) & not(LAD_VALUE = {}));
  List_Constraints(Implementation(L_ARRAY2_1))==(LAD_maxidx: NAT1 & LAD_VALUE: FIN(INTEGER) & not(LAD_VALUE = {}));
  List_Context_Constraints(Implementation(L_ARRAY2_1))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(L_ARRAY2_1))==(SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY);
  List_Operations(Implementation(L_ARRAY2_1))==(SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY,VAL_ARRAY,STR_ARRAY,SET_ARRAY)
END
&
THEORY ListInputX IS
  List_Input(Implementation(L_ARRAY2_1),SET_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY2_1),STR_ARRAY)==(ii,vv);
  List_Input(Implementation(L_ARRAY2_1),VAL_ARRAY)==(ii);
  List_Input(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(ii,jj);
  List_Input(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(ii,jj,nn);
  List_Input(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(ii,jj,vv);
  List_Input(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(ii,jj,vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(L_ARRAY2_1),SET_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY2_1),STR_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY2_1),VAL_ARRAY)==(vv);
  List_Output(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(?);
  List_Output(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb);
  List_Output(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(L_ARRAY2_1),SET_ARRAY)==(SET_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY2_1),STR_ARRAY)==(STR_ARRAY(ii,vv));
  List_Header(Implementation(L_ARRAY2_1),VAL_ARRAY)==(vv <-- VAL_ARRAY(ii));
  List_Header(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(SWAP_ARRAY(ii,jj));
  List_Header(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(RIGHT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(LEFT_SHIFT_ARRAY(ii,jj,nn));
  List_Header(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(rr,bb <-- SEARCH_MAX_EQL_ARRAY(ii,jj,vv));
  List_Header(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(rr,bb <-- SEARCH_MIN_EQL_ARRAY(ii,jj,vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(L_ARRAY2_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAD_maxidx & vv: LAD_VALUE);
  List_Precondition(Implementation(L_ARRAY2_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAD_maxidx & vv: LAD_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_1),STR_ARRAY)==(ii: 0..LAD_maxidx & vv: LAD_VALUE);
  List_Precondition(Implementation(L_ARRAY2_1),STR_ARRAY)==(ii: 0..LAD_maxidx & vv: LAD_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_1),VAL_ARRAY)==(ii: 0..LAD_maxidx);
  List_Precondition(Implementation(L_ARRAY2_1),VAL_ARRAY)==(ii: 0..LAD_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(ii: 0..LAD_maxidx & jj: 0..LAD_maxidx);
  Own_Precondition(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & nn: 0..LAD_maxidx & jj+nn: 0..LAD_maxidx & ii<=jj);
  Own_Precondition(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & jj<=MAXINT-1 & ii: 0..LAD_maxidx & ii<=jj & nn: NAT & nn<=ii);
  Own_Precondition(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE);
  Own_Precondition(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(btrue);
  List_Precondition(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE | @ss.((ii: INT | rr:=ii);ss:=0;bb:=FALSE;WHILE ss = 0 DO @ww.((rr: 0..LAD_maxidx | ww:=arr_vrb(rr));(ww = vv ==> ((1: INT | ss:=1);bb:=TRUE) [] not(ww = vv) ==> (rr = jj ==> (1: INT | ss:=1) [] not(rr = jj) ==> (rr+1: INT & rr: INT & 1: INT | rr:=rr+1)))) INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (ii..rr-1<|arr_vrb)~[{vv}] = {} & not(rr-1 = jj) & bb = FALSE) & (ss = 1 => (ii..rr-1<|arr_vrb)~[{vv}] = {} & bb = bool(not((ii..jj<|arr_vrb)~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_vrb(rr) = vv) VARIANT 1+jj-rr-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & ii<=jj & vv: LAD_VALUE | @ss.((jj: INT | rr:=jj);ss:=0;bb:=FALSE;WHILE ss = 0 DO @ww.((rr: 0..LAD_maxidx | ww:=arr_vrb(rr));(ww = vv ==> ((1: INT | ss:=1);bb:=TRUE) [] not(ww = vv) ==> (rr = ii ==> (1: INT | ss:=1) [] not(rr = ii) ==> (rr-1: INT & rr: INT & 1: INT | rr:=rr-1)))) INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (rr+1..jj<|arr_vrb)~[{vv}] = {} & not(rr+1 = ii) & bb = FALSE) & (ss = 1 => (rr+1..jj<|arr_vrb)~[{vv}] = {} & bb = bool(not((ii..jj<|arr_vrb)~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_vrb(rr) = vv) VARIANT 1+rr-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & jj<=MAXINT-1 & ii: 0..LAD_maxidx & ii<=jj & nn: NAT & nn<=ii | @kk.(kk:=ii;WHILE kk<=jj DO @(ll,vv).((kk: 0..LAD_maxidx | vv:=arr_vrb(kk));(kk-nn: INT & kk: INT & nn: INT | ll:=kk-nn);(ll: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+{ll|->vv});(kk+1: INT & kk: INT & 1: INT | kk:=kk+1)) INVARIANT kk: ii..jj+1 & arr_vrb = arr_vrb$0<+%xx.(xx: 0..LAD_maxidx & xx+nn: ii..kk-1 | arr_vrb$0(xx+nn)) VARIANT jj+1-kk END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(jj: 0..LAD_maxidx & ii: 0..LAD_maxidx & nn: 0..LAD_maxidx & jj+nn: 0..LAD_maxidx & ii<=jj | @(kk,ss).(kk:=jj;ss:=0;WHILE ss = 0 DO @(ll,vv).((kk: 0..LAD_maxidx | vv:=arr_vrb(kk));(kk+nn: INT & kk: INT & nn: INT | ll:=kk+nn);(ll: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+{ll|->vv});(kk = ii ==> (1: INT | ss:=1) [] not(kk = ii) ==> (kk-1: INT & kk: INT & 1: INT | kk:=kk-1))) INVARIANT kk: ii..jj & ss: NATURAL & ss<=1 & (ss = 0 => arr_vrb = arr_vrb$0<+%xx.(xx: kk+1+nn..jj+nn | arr_vrb$0(xx-nn))) & (ss = 1 => arr_vrb = arr_vrb$0<+%xx.(xx: ii+nn..jj+nn | arr_vrb$0(xx-nn))) VARIANT kk+1-ss END));
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(ii: 0..LAD_maxidx & jj: 0..LAD_maxidx | @(vv,ww).((ii: 0..LAD_maxidx | vv:=arr_vrb(ii));(jj: 0..LAD_maxidx | ww:=arr_vrb(jj));(ii: 0..LAD_maxidx & ww: LAD_VALUE | arr_vrb:=arr_vrb<+{ii|->ww});(jj: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+{jj|->vv})));
  List_Substitution(Implementation(L_ARRAY2_1),SET_ARRAY)==(arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),SET_ARRAY)==(ii: NAT & jj: NAT & jj/=MAXINT & ii..jj <: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+(ii..jj)*{vv});
  List_Substitution(Implementation(L_ARRAY2_1),STR_ARRAY)==(arr_vrb(ii):=vv);
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),STR_ARRAY)==(ii: 0..LAD_maxidx & vv: LAD_VALUE | arr_vrb:=arr_vrb<+{ii|->vv});
  List_Substitution(Implementation(L_ARRAY2_1),VAL_ARRAY)==(vv:=arr_vrb(ii));
  Expanded_List_Substitution(Implementation(L_ARRAY2_1),VAL_ARRAY)==(ii: 0..LAD_maxidx | vv:=arr_vrb(ii));
  List_Substitution(Implementation(L_ARRAY2_1),SWAP_ARRAY)==(VAR vv,ww IN vv <-- VAL_ARRAY(ii);ww <-- VAL_ARRAY(jj);STR_ARRAY(ii,ww);STR_ARRAY(jj,vv) END);
  List_Substitution(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY)==(VAR kk,ss IN kk:=jj;ss:=0;WHILE ss = 0 DO VAR ll,vv IN vv <-- VAL_ARRAY(kk);ll:=kk+nn;STR_ARRAY(ll,vv);IF kk = ii THEN ss:=1 ELSE kk:=kk-1 END END INVARIANT kk: ii..jj & ss: NATURAL & ss<=1 & (ss = 0 => arr_vrb = arr_vrb$0<+%xx.(xx: kk+1+nn..jj+nn | arr_vrb$0(xx-nn))) & (ss = 1 => arr_vrb = arr_vrb$0<+%xx.(xx: ii+nn..jj+nn | arr_vrb$0(xx-nn))) VARIANT kk+1-ss END END);
  List_Substitution(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY)==(VAR kk IN kk:=ii;WHILE kk<=jj DO VAR ll,vv IN vv <-- VAL_ARRAY(kk);ll:=kk-nn;STR_ARRAY(ll,vv);kk:=kk+1 END INVARIANT kk: ii..jj+1 & arr_vrb = arr_vrb$0<+%xx.(xx: 0..LAD_maxidx & xx+nn: ii..kk-1 | arr_vrb$0(xx+nn)) VARIANT jj+1-kk END END);
  List_Substitution(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY)==(VAR ss IN rr:=jj;ss:=0;bb:=FALSE;WHILE ss = 0 DO VAR ww IN ww <-- VAL_ARRAY(rr);IF ww = vv THEN ss:=1;bb:=TRUE ELSIF rr = ii THEN ss:=1 ELSE rr:=rr-1 END END INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (rr+1..jj<|arr_vrb)~[{vv}] = {} & not(rr+1 = ii) & bb = FALSE) & (ss = 1 => (rr+1..jj<|arr_vrb)~[{vv}] = {} & bb = bool(not((ii..jj<|arr_vrb)~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_vrb(rr) = vv) VARIANT 1+rr-ss END END);
  List_Substitution(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY)==(VAR ss IN rr:=ii;ss:=0;bb:=FALSE;WHILE ss = 0 DO VAR ww IN ww <-- VAL_ARRAY(rr);IF ww = vv THEN ss:=1;bb:=TRUE ELSIF rr = jj THEN ss:=1 ELSE rr:=rr+1 END END INVARIANT rr: NATURAL & ii<=rr & rr<=jj & ss: NATURAL & ss<=1 & bb: BOOL & (ss = 0 => (ii..rr-1<|arr_vrb)~[{vv}] = {} & not(rr-1 = jj) & bb = FALSE) & (ss = 1 => (ii..rr-1<|arr_vrb)~[{vv}] = {} & bb = bool(not((ii..jj<|arr_vrb)~[{vv}] = {}))) & (ss = 1 & bb = TRUE => arr_vrb(rr) = vv) VARIANT 1+jj-rr-ss END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(L_ARRAY2_1))==(?);
  Inherited_List_Constants(Implementation(L_ARRAY2_1))==(?);
  List_Constants(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(L_ARRAY2_1))==(?);
  Context_List_Defered(Implementation(L_ARRAY2_1))==(?);
  Context_List_Sets(Implementation(L_ARRAY2_1))==(?);
  List_Own_Enumerated(Implementation(L_ARRAY2_1))==(?);
  List_Valuable_Sets(Implementation(L_ARRAY2_1))==(?);
  Inherited_List_Enumerated(Implementation(L_ARRAY2_1))==(?);
  Inherited_List_Defered(Implementation(L_ARRAY2_1))==(?);
  Inherited_List_Sets(Implementation(L_ARRAY2_1))==(?);
  List_Enumerated(Implementation(L_ARRAY2_1))==(?);
  List_Defered(Implementation(L_ARRAY2_1))==(?);
  List_Sets(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(L_ARRAY2_1))==(?);
  Expanded_List_HiddenConstants(Implementation(L_ARRAY2_1))==(?);
  List_HiddenConstants(Implementation(L_ARRAY2_1))==(?);
  External_List_HiddenConstants(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(L_ARRAY2_1))==(btrue);
  Context_List_Properties(Implementation(L_ARRAY2_1))==(btrue);
  Inherited_List_Properties(Implementation(L_ARRAY2_1))==(btrue);
  List_Properties(Implementation(L_ARRAY2_1))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(L_ARRAY2_1))==(aa: aa);
  List_Values(Implementation(L_ARRAY2_1))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(VAL_ARRAY,STR_ARRAY,SET_ARRAY)
END
&
THEORY InheritedEnvX IS
  Operations(Implementation(L_ARRAY2_1))==(Type(SEARCH_MIN_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(SEARCH_MAX_EQL_ARRAY) == Cst(btype(INTEGER,?,?)*btype(BOOL,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(LEFT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(RIGHT_SHIFT_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SWAP_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(SET_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(STR_ARRAY) == Cst(No_type,btype(INTEGER,?,?)*atype(LAD_VALUE,?,?));Type(VAL_ARRAY) == Cst(atype(LAD_VALUE,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(L_ARRAY2_1)) == (? | ? | ? | arr_vrb | SWAP_ARRAY,RIGHT_SHIFT_ARRAY,LEFT_SHIFT_ARRAY,SEARCH_MAX_EQL_ARRAY,SEARCH_MIN_EQL_ARRAY | ? | imported(Machine(L_ARRAY1)) | LAD_VALUE,LAD_maxidx | L_ARRAY2_1);
  List_Of_HiddenCst_Ids(Implementation(L_ARRAY2_1)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(L_ARRAY2_1)) == (?);
  List_Of_VisibleVar_Ids(Implementation(L_ARRAY2_1)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(L_ARRAY2_1)) == (?: ?);
  List_Of_Ids(Machine(L_ARRAY1)) == (? | ? | arr_vrb | ? | VAL_ARRAY,STR_ARRAY,SET_ARRAY | ? | ? | LAU_VALUE,LAU_maxidx | L_ARRAY1);
  List_Of_HiddenCst_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(L_ARRAY1)) == (?);
  List_Of_VisibleVar_Ids(Machine(L_ARRAY1)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(L_ARRAY1)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Implementation(L_ARRAY2_1)) == (Type(LAD_maxidx) == Prm(btype(INTEGER,?,?));Type(LAD_VALUE) == Prm(SetOf(atype(LAD_VALUE,?,?))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(L_ARRAY2_1),SWAP_ARRAY, 1) == (Type(vv) == Lvl(atype(LAD_VALUE,?,?));Type(ww) == Lvl(atype(LAD_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY, 2) == (Type(ll) == Lvl(btype(INTEGER,?,?));Type(vv) == Lvl(atype(LAD_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),RIGHT_SHIFT_ARRAY, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?));Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY, 2) == (Type(ll) == Lvl(btype(INTEGER,?,?));Type(vv) == Lvl(atype(LAD_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),LEFT_SHIFT_ARRAY, 1) == (Type(kk) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY, 2) == (Type(ww) == Lvl(atype(LAD_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),SEARCH_MAX_EQL_ARRAY, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY, 2) == (Type(ww) == Lvl(atype(LAD_VALUE,?,?)));
  Variables_Loc(Implementation(L_ARRAY2_1),SEARCH_MIN_EQL_ARRAY, 1) == (Type(ss) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(L_ARRAY2_1))==(?)
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
  TypingPredicate(Implementation(L_ARRAY2_1))==(btrue)
END
&
THEORY ImportedVariablesListX IS
  ImportedVariablesList(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(arr_vrb);
  ImportedVisVariablesList(Implementation(L_ARRAY2_1),Machine(L_ARRAY1))==(?)
END
&
THEORY ListLocalOpInvariantX END
)
