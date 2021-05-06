structure EVALUATOR  =
struct
open AST

(*val brokenTypes = Fail "Error in evaluation!"*)
exception brokenTypes

val envref = ref []:(id*value) list ref 


fun evalExp(e:exp, env:environment ref):value=
    case e of
	    NumExp i              => IntVal i
      | BoolExp s             => BoolVal s
      | VarExp x              => envLookup (x, env) 				  
      | BinExp (b, e1, e2)    => evalBinExp(b, e1, e2, env)
      | BoolBinExp (b, e1, e2)    => evalBoolBinExp(b, e1, e2, env)
      | NegateExp (u,e1)      => evalNegateExp(u,e1,env)
      | BoolNegateExp (u,e1)      => evalBoolNegateExp(u,e1,env)
      | ConditionalExp (a,e1,b,e2,c,e3,d) => evalCondExp(a,e1,b,e2,c,e3,d,env)
      | BracketsExp(u,v,e1) => evalBrackExp(u,v,e1,env) 
      | LetExp(ValDecl(x, e1), e2)  =>let val v1 = evalExp (e1, env) in evalExp(e2, envAdd (x, v1, env))  end
      | Fn(s,v1,v2,e)=> evalFn(s,v1,v2,e,env)
      | Fun(s1,s2,v1,v2,e)=>evalFun(s1,s2,v1,v2,e,env)
      | AppExp(e1,e2) => evalAppExp(e1,e2,env)
  and

   evalFn(s,v1,v2,e,env):value=FnVal(s,e,env)
and
   evalFun(s1,s2,v1,v2,e,env):value=
    let val initEnv=ref []
    	val enclosingEnv=envAdd(s1,FnVal(s2,e,initEnv),env)
    in	Unit(initEnv := !enclosingEnv)
    end

  and
   evalAppExp(e1,e2,env):value=
   case(evalExp(e1,env)) of
   	FnVal(id1,body,enclosingEnv) => let val v1=evalExp(e2,env) in evalExp(body,envAdd(id1,v1,enclosingEnv)) end
   	| _  => raise brokenTypes

   and

   evalBinExp(b:binop, e1:exp, e2:exp, env:environment ref):value =
	case (b, evalExp(e1, env), evalExp(e2, env))  of
	      (Add, IntVal i1, IntVal i2) => IntVal (i1+i2)
	  |   (Sub, IntVal i1, IntVal i2) => IntVal (i1-i2)
	  |   (Mul, IntVal i1, IntVal i2) => IntVal (i1*i2)
	  
	  |   _  => raise brokenTypes 
   

  and

  	evalBoolBinExp(b:boolbinop, e1:exp, e2:exp, env:environment ref):value =
	case (b, evalExp(e1, env), evalExp(e2, env))  of
	  (Eq,  BoolVal i1, BoolVal i2)  => BoolVal (i1 = i2)
	  |   (And, BoolVal i1, BoolVal i2) => BoolVal (i1 andalso i2)
	  |   (Xor, BoolVal i1, BoolVal i2) => BoolVal (i1 <> i2)
	  |   (Or, BoolVal i1,  BoolVal i2) =>  BoolVal (i1 orelse i2)
	  |   (Eq, IntVal i1, IntVal i2)  => BoolVal (i1 = i2)
	  |   (Greaterthan, IntVal i1, IntVal i2) => BoolVal (i1>i2)
	  |   (Lessthan, IntVal i1, IntVal i2)  => BoolVal (i1<i2)
	  |   _  => raise brokenTypes 
   

  and

  evalBrackExp(u:brack,v:brack,e1:exp,env:environment ref):value =
	case (u,v,e1)  of
	     (LPAREN,RPAREN,e1) => evalExp(e1,env)
	  |   _  => raise brokenTypes
  

and

  evalNegateExp(u:unop, e1:exp,env:environment ref):value =
	case (u,evalExp(e1, env))  of
	  (Negate,IntVal i1) => IntVal (~1*i1)
	  |   _  => raise brokenTypes
  

and

	evalBoolNegateExp(u:boolunop, e1:exp,env:environment ref):value =
	case (u,evalExp(e1, env))  of
	      (NOT,BoolVal i1) => BoolVal (not i1)
	  |   _  => raise brokenTypes
  

and

evalCondExp(a:cond,e1:exp,b:cond,e2:exp,c:cond,e3:exp,d:cond,env:environment ref):value =
case (a,evalExp(e1,env),b,e2,c,e3,d)  of
      (IF,BoolVal b1,THEN,e2,ELSE,e3,FI) => if b1=true then evalExp(e2,env) else evalExp(e3,env)
  |   _  => raise brokenTypes

and


 evalutelist(el:exp list)=evalutefile(el,envref)
  and
    evalutefile(nil,envr:environment ref)= (envref := [];nil)
    |evalutefile(x::M,envr:environment ref) = evalExp(x,envr)::evalutefile(M,envr)


end