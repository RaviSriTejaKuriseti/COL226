structure TYPECHECKER  =
struct
open AST

(*val brokenTypes = Fail "Error in type-checking!"*)
exception brokenTypes
type typeenvironment = (id*vartype) list

val envref = ref []:(id*vartype) list ref 

fun typecheck(e:exp,env:typeenvironment ref):vartype=
	case e of
		NumExp i => INT
	  | BoolExp s => BOOL
	  | VarExp x => typeenvLookup (x,env)
	  | BinExp (b, e1, e2)    => evaltypeBinExp(b, e1, e2, env)
      | BoolBinExp (b, e1, e2)    => evaltypeBoolBinExp(b, e1, e2, env)
      | NegateExp (u,e1)      => evaltypeNegateExp(u,e1,env)
      | BoolNegateExp (u,e1)      => evaltypeBoolNegateExp(u,e1,env)
      | ConditionalExp (a,e1,b,e2,c,e3,d) => evaltypeCondExp(a,e1,b,e2,c,e3,d,env)
      | BracketsExp(u,v,e1) => evaltypeBrackExp(u,v,e1,env) 
      | LetExp(ValDecl(x, e1), e2)  =>let val v1 = typecheck (e1, env)	in typecheck(e2, typeenvAdd (x, v1, env)) end
      | Fn(s,v1,v2,e)=> ARROW(v1,typecheck(e,typeenvAdd(s,v1,env)))
      | Fun(s1,s2,v1,v2,e)=>let val Z=evaltypeFun(s1,s2,v1,v2,e,env) in  typeenvLookup(s1,typeenvAdd(s2,v1,typeenvAdd(s1,Z,env))) end
      | AppExp(e1,e2) => evaltypeAppExp(e1,e2,env)

      and

    

  	evaltypeFun(s1:id,s2:id,v1:vartype,v2:vartype,e:exp,env:typeenvironment ref)=
  	case v1 of 
  		ARROW(a,b) => if b=v2 then ARROW(v1,v2) else raise brokenTypes
  		| _  => raise brokenTypes
  	
  	and

      evaltypeAppExp(e1:exp,e2:exp,env:typeenvironment ref)= 
      case e1 of
      	VarExp v =>(case typeenvLookup (v,env) of 
      	ARROW(v11:vartype,v22:vartype)=> if v11=typecheck(e2,env) then v22 else raise brokenTypes 
      	| _ => raise brokenTypes)
      	| _=> raise brokenTypes

      	
	and

    typeenvAdd (var:id, v1:vartype, env:typeenvironment ref) =
   (env := (var,v1)::(!env); env)

    and

    typeenvLookup (var:id, env:typeenvironment ref) =
    case List.find(fn (x, _) => x = var) (!env) of
				       SOME (x, v)   => v
				    |   NONE => raise brokenTypes
	and

   evaltypeBinExp(b:binop, e1:exp, e2:exp, env:typeenvironment ref):vartype =
	case (b, typecheck(e1,env), typecheck(e2,env))  of
	      (Add, INT,INT) => INT
	  |   (Sub, INT,INT) => INT
	  |   (Mul, INT,INT) => INT
	  
	  |   _  => raise brokenTypes 
   

  and

  	evaltypeBoolBinExp(b:boolbinop, e1:exp, e2:exp, env:typeenvironment ref):vartype =
	case (b, typecheck(e1,env), typecheck(e2,env))  of
	      (Eq, BOOL,BOOL)  => BOOL
	  |   (And,BOOL,BOOL) => BOOL
	  |   (Xor,BOOL,BOOL) => BOOL
	  |   (Or,BOOL,BOOL) =>  BOOL
	  |   (Eq, INT,INT)  => BOOL
	  |   (Greaterthan,INT,INT) => BOOL
	  |   (Lessthan,INT,INT)  => BOOL
	  |   _  => raise brokenTypes 
   

  and

  evaltypeBrackExp(u:brack,v:brack,e1:exp,env:typeenvironment ref):vartype =
	case (u,v,e1)  of
	     (LPAREN,RPAREN,e1) => typecheck(e1,env)
	  |   _  => raise brokenTypes
  

and

  evaltypeNegateExp(u:unop, e1:exp,env:typeenvironment ref):vartype =
	case (u,typecheck(e1,env))  of
	  (Negate,INT) => INT
	  |   _  => raise brokenTypes
  

and

	evaltypeBoolNegateExp(u:boolunop, e1:exp,env:typeenvironment ref):vartype =
	case (u,typecheck(e1,env))  of
	      (NOT,BOOL) => BOOL
	  |   _  => raise brokenTypes
  

and

evaltypeCondExp(a:cond,e1:exp,b:cond,e2:exp,c:cond,e3:exp,d:cond,env:typeenvironment ref):vartype =
case (a,typecheck(e1,env),b,e2,c,e3,d)  of
      (IF,BOOL,THEN,e2,ELSE,e3,FI) => if (typecheck(e2,env)=typecheck(e3,env))
      								  then typecheck(e2,env) else raise brokenTypes
  |   _  => raise brokenTypes




and
	 typechecklist(el:exp list)=typecheckfile(el,envref)
  and
		typecheckfile(nil,envr:typeenvironment ref)= (envref := [];nil)
    |typecheckfile(x::M,envr:typeenvironment ref) = typecheck(x,envr)::typecheckfile(M,envr)


end