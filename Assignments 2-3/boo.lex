structure Tokens= Tokens
  
  type pos = int
  type svalue = Tokens.svalue
  type ('a,'b) token = ('a,'b) Tokens.token  
  type lexresult = (svalue, pos) token

  val pos =ref 1
  val col=ref 1
  val eof = fn () => Tokens.EOF(!pos, !pos)
  val error = fn (e, l:int,h:int,_) => TextIO.output(TextIO.stdOut,"Unknown token :" ^ (Int.toString l)^ ": "^(Int.toString h) ^ ": " ^ e ^ "\n")
  val lt=ref []
  exception UnknownToken

  (* "Unknown token :" ^ (Int.toString l)^ ": "^(Int.toString c) ^ ": " ^ s ^ "\n" *)

  fun revfold _ nil b = b
  | revfold f (hd::tl) b = revfold f tl (f(hd,b))

  

  
  
  
%%
%header (functor BooLexFun(structure Tokens:Boo_TOKENS));


alphabets=[A-Za-z];
digit=[0-9];
alpnum=[A-Za-z0-9];
wspace=[\ \t];

%%
\n       => (pos := (!pos) + 1; col:=(!col)-(!col);lex());
\t       => (col:=(!col)+4;lex());
" "      =>  (col:=(!col)+1;lex());
";"       => (yybegin;Tokens.TERM(!pos,!pos));
"("       => (col := (!col) + 1;Tokens.LPAREN(!pos,!pos));
")"       => (col := (!col) + 1;Tokens.RPAREN(!pos,!pos));
"="       => (col := (!col) + 1;Tokens.EQUALITY(!pos,!pos));
"TRUE"     => (col := (!col) + 4;Tokens.CONST(true,!pos,!pos));
"FALSE"    => (col := (!col) + 5;Tokens.CONST(false,!pos,!pos));
"NOT"      => (col := (!col) + 3;Tokens.NOT(!pos,!pos));
"AND"      => (col := (!col) + 3;Tokens.AND(!pos,!pos));
"OR"       => (col := (!col) + 2;Tokens.OR(!pos,!pos));
"XOR"      => (col := (!col) + 3;Tokens.XOR(!pos,!pos));
"EQUALS"    => (col := (!col) + 6;Tokens.EQUALS(!pos,!pos));
"IMPLIES"   => (col := (!col) + 7;Tokens.IMPLIES(!pos,!pos));
"if"       => (col := (!col) + 2;Tokens.IF(!pos,!pos));
"then"      => (col := (!col) + 4;Tokens.THEN(!pos,!pos));
"else"      => (col := (!col) + 4;Tokens.ELSE(!pos,!pos));
"fi"       => (col := (!col) + 2;Tokens.FI(!pos,!pos));
"let"      => (col := (!col) + 3;Tokens.LET(!pos,!pos));
"end"      => (col := (!col) + 3;Tokens.END(!pos,!pos));
"in"       => (col := (!col) + 2;Tokens.IN(!pos,!pos));
"PLUS"     => (col := (!col) + 4;Tokens.PLUS(!pos,!pos));
"MINUS"    => (col := (!col) + 5;Tokens.MINUS(!pos,!pos));
"TIMES"     => (col := (!col) + 5;Tokens.TIMES(!pos,!pos));
"NEGATE"    => (col := (!col) + 6;Tokens.NEGATE(!pos,!pos));
"LESSTHAN"    => (col := (!col) + 5;Tokens.LESSTHAN(!pos,!pos));
"GREATERTHAN"  => (col := (!col) + 4;Tokens.GREATERTHAN(!pos,!pos));
"int"      => (col := (!col) + 3;Tokens.INT(!pos,!pos));
"bool"      => (col := (!col) + 4;Tokens.BOOL(!pos,!pos));
"fn"        => (col := (!col) + 2;Tokens.FN(!pos,!pos));
"fun"      => (col := (!col) + 3;Tokens.FUN(!pos,!pos));
"->"       => (col := (!col) + 1;Tokens.ARROW(!pos,!pos));
"=>"       => (col := (!col) + 1;Tokens.IMPLIESARROW(!pos,!pos));
":"      => (col := (!col) + 1;Tokens.COLON(!pos,!pos));
{digit}+ => (col := (!col) + (size yytext);Tokens.NUM(List.foldl(fn (a,r) => ord(a) - ord(#"0") + 10*r) 0 (explode yytext),!pos, !pos));
{alphabets}{alpnum}* => (col := (!col) + size yytext;Tokens.ID(yytext,!pos,!pos));
.         => (error (yytext,!pos,!col,!pos); raise UnknownToken ;lex());

