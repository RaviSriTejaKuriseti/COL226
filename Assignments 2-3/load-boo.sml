exception emptyInputFile


fun readfromfile(filename)=
    if (String.compare(TextIO.input(TextIO.openIn(filename)),"")=EQUAL) then raise emptyInputFile
    else 
        let val x=explode(TextIO.input(TextIO.openIn(filename)))
        in 
    implode(List.take(x,List.length(x)))
end;



structure BooLrVals = BooLrValsFun(structure Token = LrParser.Token)
structure BooLex = BooLexFun(structure Tokens = BooLrVals.Tokens);
structure BooParser =
	  Join(structure LrParser = LrParser
     	       structure ParserData = BooLrVals.ParserData
     	       structure Lex = BooLex)
     
fun invoke lexstream =
    	     	let fun print_error (s,pos:int,_) =
		    	TextIO.output(TextIO.stdOut, "Error, line " ^ (Int.toString pos) ^ "," ^ s ^ "\n")
		in
		    BooParser.parse(0,lexstream,print_error,())
		end

fun stringToLexer str =
    let val done = ref false
    	val lexer=  BooParser.makeLexer (fn _ => if (!done) then "" else (done:=true;str))
    in
	lexer
    end	
		
fun parse (lexer) =
    let val dummyEOF = BooLrVals.Tokens.EOF(0,0)
    	val (result, lexer) = invoke lexer
	val (nextToken, lexer) = BooParser.Stream.get lexer
    in
        if BooParser.sameToken(nextToken, dummyEOF) then result
 	else (TextIO.output(TextIO.stdOut, "Warning: Unconsumed input \n"); result)
    end

val parseString = parse o stringToLexer
val parsefile=parseString o readfromfile
fun evaluate(s)=EVALUATOR.evalExp(s,ref [])
fun evalType(s)=TYPECHECKER.typecheck(s,ref [])
fun ati(i,L)=List.nth(i,L)


fun computetype(L: AST.exp list)=TYPECHECKER.typechecklist(L)
fun computevalue(L: AST.exp list)=EVALUATOR.evalutelist(L)


fun runfile(f)=

    let val x=parsefile(f) in
        let val y=computetype(x)
            val z=computevalue(x)
        in (y,z) end

    end








