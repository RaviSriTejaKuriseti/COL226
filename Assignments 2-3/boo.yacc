(*User *)
%%
%name Boo

%term
 AND  | OR | XOR  | NOT | EQUALS |  
 IMPLIES  |IF  | ELSE | THEN  | FI | 
 EQUALITY | RPAREN | LPAREN |
 PLUS | MINUS | TIMES  | NEGATE| LESSTHAN | GREATERTHAN  |
 LET | IN | END  | COLON | FN | FUN | ARROW | IMPLIESARROW | NAME of string |
 TERM |CONST of bool| ID of string | INT  | BOOL  | NUM of int| EOF  

  

 %nonterm START of AST.exp list|program of AST.exp list| DECL of AST.decl | EXP of AST.exp | TY of AST.vartype



%pos int

(*optional declarations *)


%eop EOF
%noshift EOF

%nodefault

(* %header  *)
%nonassoc IMPLIESARROW
%right IMPLIES
%right IF THEN ELSE
%left AND XOR EQUALITY OR GREATERTHAN LESSTHAN
%nonassoc EQUALS
%left MINUS
%left PLUS
%left TIMES
%left NOT
%left NEGATE
%right ARROW


%start START

%verbose

%keyword AND XOR EQUALS IMPLIES IF THEN ELSE FI OR NOT PLUS MINUS TIMES NEGATE LET IN END GREATERTHAN LESSTHAN EQUALITY


%%
START:program(program)
program:EXP ([EXP])
        |EXP TERM program([EXP]@program)
       

DECL: ID EQUALITY EXP (AST.ValDecl(ID, EXP))

TY:INT(AST.INT)
  |BOOL(AST.BOOL)
  |LPAREN TY RPAREN(TY)
  |TY ARROW TY(AST.ARROW(TY1,TY2))
  




  EXP:CONST (AST.BoolExp(CONST))
  | NUM(AST.NumExp(NUM))
  | ID (AST.VarExp(ID))      
  | LPAREN EXP RPAREN  (AST.BracketsExp(AST.LPAREN,AST.RPAREN,EXP))
  | NOT EXP  (AST.BoolNegateExp(AST.NOT,EXP))      
  | EXP AND EXP  (AST.BoolBinExp(AST.And,EXP1,EXP2))
  | EXP OR EXP  (AST.BoolBinExp(AST.Or,EXP1,EXP2))
  | EXP XOR EXP (AST.BoolBinExp(AST.Xor,EXP1,EXP2))
  | EXP EQUALS EXP (AST.BoolBinExp(AST.Eq,EXP1,EXP2))
  | EXP IMPLIES EXP (AST.BoolBinExp(AST.Implies,EXP1,EXP2))
  | IF EXP THEN EXP ELSE EXP FI (AST.ConditionalExp(AST.IF,EXP1,AST.THEN,EXP2,AST.ELSE,EXP3,AST.FI))
  | LET DECL IN EXP END (AST.LetExp(DECL, EXP))
  | EXP PLUS EXP (AST.BinExp(AST.Add, EXP1,  EXP2))
  | EXP MINUS EXP (AST.BinExp(AST.Sub,  EXP1,  EXP2))
  | EXP TIMES  EXP (AST.BinExp(AST.Mul,  EXP1, EXP2))
  | EXP GREATERTHAN EXP (AST.BoolBinExp(AST.Greaterthan,EXP1,EXP2))
  | EXP LESSTHAN  EXP (AST.BoolBinExp(AST.Lessthan,EXP1,EXP2))
  | NEGATE EXP (AST.NegateExp(AST.Negate,EXP))
  | LPAREN EXP EXP RPAREN(AST.AppExp(EXP1,EXP2))
  | FN  LPAREN ID COLON TY RPAREN COLON TY IMPLIESARROW EXP (AST.Fn(ID,TY1,TY2,EXP))
  | FUN ID LPAREN ID COLON TY RPAREN COLON TY IMPLIESARROW EXP (AST.Fun(ID1,ID2,TY1,TY2,EXP))
  





  
  
 
  

 
 
