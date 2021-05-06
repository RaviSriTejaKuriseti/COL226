structure AST =
struct

type id = string

datatype binop = Add | Sub | Mul  
datatype boolbinop=Eq | Or | And | Xor | Implies | Greaterthan | Lessthan
datatype unop = Negate
datatype boolunop=NOT
datatype cond=IF|THEN|ELSE|FI
datatype brack=LPAREN|RPAREN
datatype term=TERM
datatype empty=Epsilon
datatype vartype=INT|BOOL| ARROW of vartype*vartype



datatype decl = ValDecl of id * exp

and exp = NumExp of int
    	| BoolExp of bool
    	| VarExp of id
		| BinExp of binop*exp*exp
		| BoolBinExp of boolbinop*exp*exp
		| LetExp of decl*exp
        | NegateExp of unop*exp
        | BoolNegateExp of boolunop*exp
		| ConditionalExp of cond*exp*cond*exp*cond*exp*cond
		| BracketsExp of brack*brack*exp
		| AppExp of exp*exp
		| Fn of id*vartype*vartype*exp
		| Fun of id*id*vartype*vartype*exp




	 
	 
and statement= STATEMENT of exp*term

and program=EMPTYPROGRAM | PROGRAM of statement*program
	          

and start=BEGIN of program



datatype value = IntVal of int
	       	   | BoolVal of bool
	       	   | StringVal of string
	       	   | FnVal of id*exp*(id * value) list ref
	       	   | Unit of unit

	       	   
type environment = (id * value) list

fun envAdd (var:id, v:value, env:environment ref) =
   (env:= (var,v)::(!env); env)

fun envLookup (var:id, env:environment ref) =
    case List.find(fn (x, _) => x = var) (!env) of
				       SOME (x, v)   => v
				    |   NONE => raise Fail "Environment lookup error"


				    							    
end


