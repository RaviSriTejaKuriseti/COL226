functor BooLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Boo_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
(*User *)

end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\091\000\002\000\091\000\003\000\091\000\004\000\091\000\
\\005\000\091\000\006\000\091\000\007\000\091\000\008\000\091\000\
\\009\000\091\000\010\000\091\000\012\000\091\000\013\000\091\000\
\\014\000\091\000\015\000\091\000\016\000\091\000\017\000\091\000\
\\018\000\091\000\019\000\091\000\020\000\091\000\021\000\091\000\
\\022\000\091\000\024\000\091\000\025\000\091\000\029\000\091\000\
\\030\000\091\000\031\000\091\000\034\000\091\000\035\000\091\000\000\000\
\\001\000\001\000\092\000\002\000\092\000\003\000\092\000\004\000\092\000\
\\005\000\092\000\006\000\092\000\007\000\092\000\008\000\092\000\
\\009\000\092\000\010\000\092\000\012\000\092\000\013\000\092\000\
\\014\000\092\000\015\000\092\000\016\000\092\000\017\000\092\000\
\\018\000\092\000\019\000\092\000\020\000\092\000\021\000\092\000\
\\022\000\092\000\024\000\092\000\025\000\092\000\029\000\092\000\
\\030\000\092\000\031\000\092\000\034\000\092\000\035\000\092\000\000\000\
\\001\000\001\000\093\000\002\000\093\000\003\000\093\000\004\000\093\000\
\\005\000\093\000\006\000\093\000\007\000\093\000\008\000\093\000\
\\009\000\093\000\010\000\093\000\012\000\093\000\013\000\093\000\
\\014\000\093\000\015\000\093\000\016\000\093\000\017\000\093\000\
\\018\000\093\000\019\000\093\000\020\000\093\000\021\000\093\000\
\\022\000\093\000\024\000\093\000\025\000\093\000\029\000\093\000\
\\030\000\093\000\031\000\093\000\034\000\093\000\035\000\093\000\000\000\
\\001\000\001\000\094\000\002\000\094\000\003\000\094\000\004\000\094\000\
\\005\000\094\000\006\000\094\000\007\000\094\000\008\000\094\000\
\\009\000\094\000\010\000\094\000\012\000\094\000\013\000\094\000\
\\014\000\094\000\015\000\094\000\016\000\094\000\017\000\094\000\
\\018\000\094\000\019\000\094\000\020\000\094\000\021\000\094\000\
\\022\000\094\000\024\000\094\000\025\000\094\000\029\000\094\000\
\\030\000\094\000\031\000\094\000\034\000\094\000\035\000\094\000\000\000\
\\001\000\001\000\095\000\002\000\095\000\003\000\095\000\004\000\095\000\
\\005\000\095\000\006\000\095\000\007\000\095\000\008\000\095\000\
\\009\000\095\000\010\000\095\000\012\000\095\000\013\000\095\000\
\\014\000\095\000\015\000\095\000\016\000\095\000\017\000\095\000\
\\018\000\095\000\019\000\095\000\020\000\095\000\021\000\095\000\
\\022\000\095\000\024\000\095\000\025\000\095\000\029\000\095\000\
\\030\000\095\000\031\000\095\000\034\000\095\000\035\000\095\000\000\000\
\\001\000\001\000\096\000\002\000\096\000\003\000\096\000\004\000\096\000\
\\005\000\022\000\006\000\096\000\007\000\096\000\008\000\096\000\
\\009\000\096\000\010\000\096\000\012\000\096\000\013\000\096\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\096\000\
\\018\000\096\000\019\000\096\000\020\000\096\000\021\000\096\000\
\\022\000\096\000\024\000\096\000\025\000\096\000\029\000\096\000\
\\030\000\096\000\031\000\096\000\034\000\096\000\035\000\096\000\000\000\
\\001\000\001\000\097\000\002\000\097\000\003\000\097\000\004\000\097\000\
\\005\000\022\000\006\000\097\000\007\000\097\000\008\000\097\000\
\\009\000\097\000\010\000\097\000\012\000\097\000\013\000\097\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\097\000\
\\018\000\097\000\019\000\097\000\020\000\097\000\021\000\097\000\
\\022\000\097\000\024\000\097\000\025\000\097\000\029\000\097\000\
\\030\000\097\000\031\000\097\000\034\000\097\000\035\000\097\000\000\000\
\\001\000\001\000\098\000\002\000\098\000\003\000\098\000\004\000\098\000\
\\005\000\022\000\006\000\098\000\007\000\098\000\008\000\098\000\
\\009\000\098\000\010\000\098\000\012\000\098\000\013\000\098\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\098\000\
\\018\000\098\000\019\000\098\000\020\000\098\000\021\000\098\000\
\\022\000\098\000\024\000\098\000\025\000\098\000\029\000\098\000\
\\030\000\098\000\031\000\098\000\034\000\098\000\035\000\098\000\000\000\
\\001\000\001\000\099\000\002\000\099\000\003\000\099\000\004\000\099\000\
\\006\000\099\000\007\000\099\000\008\000\099\000\009\000\099\000\
\\010\000\099\000\012\000\099\000\013\000\099\000\014\000\020\000\
\\015\000\019\000\016\000\018\000\017\000\099\000\018\000\099\000\
\\019\000\099\000\020\000\099\000\021\000\099\000\022\000\099\000\
\\024\000\099\000\025\000\099\000\029\000\099\000\030\000\099\000\
\\031\000\099\000\034\000\099\000\035\000\099\000\000\000\
\\001\000\001\000\101\000\002\000\101\000\003\000\101\000\004\000\101\000\
\\005\000\101\000\006\000\101\000\007\000\101\000\008\000\101\000\
\\009\000\101\000\010\000\101\000\012\000\101\000\013\000\101\000\
\\014\000\101\000\015\000\101\000\016\000\101\000\017\000\101\000\
\\018\000\101\000\019\000\101\000\020\000\101\000\021\000\101\000\
\\022\000\101\000\024\000\101\000\025\000\101\000\029\000\101\000\
\\030\000\101\000\031\000\101\000\034\000\101\000\035\000\101\000\000\000\
\\001\000\001\000\102\000\002\000\102\000\003\000\102\000\004\000\102\000\
\\005\000\102\000\006\000\102\000\007\000\102\000\008\000\102\000\
\\009\000\102\000\010\000\102\000\012\000\102\000\013\000\102\000\
\\014\000\102\000\015\000\102\000\016\000\102\000\017\000\102\000\
\\018\000\102\000\019\000\102\000\020\000\102\000\021\000\102\000\
\\022\000\102\000\024\000\102\000\025\000\102\000\029\000\102\000\
\\030\000\102\000\031\000\102\000\034\000\102\000\035\000\102\000\000\000\
\\001\000\001\000\103\000\002\000\103\000\003\000\103\000\004\000\103\000\
\\005\000\103\000\006\000\103\000\007\000\103\000\008\000\103\000\
\\009\000\103\000\010\000\103\000\012\000\103\000\013\000\103\000\
\\014\000\103\000\015\000\103\000\016\000\018\000\017\000\103\000\
\\018\000\103\000\019\000\103\000\020\000\103\000\021\000\103\000\
\\022\000\103\000\024\000\103\000\025\000\103\000\029\000\103\000\
\\030\000\103\000\031\000\103\000\034\000\103\000\035\000\103\000\000\000\
\\001\000\001\000\104\000\002\000\104\000\003\000\104\000\004\000\104\000\
\\005\000\104\000\006\000\104\000\007\000\104\000\008\000\104\000\
\\009\000\104\000\010\000\104\000\012\000\104\000\013\000\104\000\
\\014\000\020\000\015\000\104\000\016\000\018\000\017\000\104\000\
\\018\000\104\000\019\000\104\000\020\000\104\000\021\000\104\000\
\\022\000\104\000\024\000\104\000\025\000\104\000\029\000\104\000\
\\030\000\104\000\031\000\104\000\034\000\104\000\035\000\104\000\000\000\
\\001\000\001\000\105\000\002\000\105\000\003\000\105\000\004\000\105\000\
\\005\000\105\000\006\000\105\000\007\000\105\000\008\000\105\000\
\\009\000\105\000\010\000\105\000\012\000\105\000\013\000\105\000\
\\014\000\105\000\015\000\105\000\016\000\105\000\017\000\105\000\
\\018\000\105\000\019\000\105\000\020\000\105\000\021\000\105\000\
\\022\000\105\000\024\000\105\000\025\000\105\000\029\000\105\000\
\\030\000\105\000\031\000\105\000\034\000\105\000\035\000\105\000\000\000\
\\001\000\001\000\106\000\002\000\106\000\003\000\106\000\004\000\106\000\
\\005\000\022\000\006\000\106\000\007\000\106\000\008\000\106\000\
\\009\000\106\000\010\000\106\000\012\000\106\000\013\000\106\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\106\000\
\\018\000\106\000\019\000\106\000\020\000\106\000\021\000\106\000\
\\022\000\106\000\024\000\106\000\025\000\106\000\029\000\106\000\
\\030\000\106\000\031\000\106\000\034\000\106\000\035\000\106\000\000\000\
\\001\000\001\000\107\000\002\000\107\000\003\000\107\000\004\000\107\000\
\\005\000\022\000\006\000\107\000\007\000\107\000\008\000\107\000\
\\009\000\107\000\010\000\107\000\012\000\107\000\013\000\107\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\107\000\
\\018\000\107\000\019\000\107\000\020\000\107\000\021\000\107\000\
\\022\000\107\000\024\000\107\000\025\000\107\000\029\000\107\000\
\\030\000\107\000\031\000\107\000\034\000\107\000\035\000\107\000\000\000\
\\001\000\001\000\108\000\002\000\108\000\003\000\108\000\004\000\108\000\
\\005\000\108\000\006\000\108\000\007\000\108\000\008\000\108\000\
\\009\000\108\000\010\000\108\000\012\000\108\000\013\000\108\000\
\\014\000\108\000\015\000\108\000\016\000\108\000\017\000\108\000\
\\018\000\108\000\019\000\108\000\020\000\108\000\021\000\108\000\
\\022\000\108\000\024\000\108\000\025\000\108\000\029\000\108\000\
\\030\000\108\000\031\000\108\000\034\000\108\000\035\000\108\000\000\000\
\\001\000\001\000\109\000\002\000\109\000\003\000\109\000\004\000\109\000\
\\005\000\109\000\006\000\109\000\007\000\109\000\008\000\109\000\
\\009\000\109\000\010\000\109\000\012\000\109\000\013\000\109\000\
\\014\000\109\000\015\000\109\000\016\000\109\000\017\000\109\000\
\\018\000\109\000\019\000\109\000\020\000\109\000\021\000\109\000\
\\022\000\109\000\024\000\109\000\025\000\109\000\029\000\109\000\
\\030\000\109\000\031\000\109\000\034\000\109\000\035\000\109\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\004\000\100\000\
\\005\000\022\000\006\000\021\000\007\000\100\000\008\000\100\000\
\\009\000\100\000\010\000\100\000\012\000\100\000\013\000\100\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\100\000\
\\018\000\017\000\019\000\016\000\020\000\100\000\021\000\100\000\
\\022\000\100\000\024\000\100\000\025\000\100\000\029\000\100\000\
\\030\000\100\000\031\000\100\000\034\000\100\000\035\000\100\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\004\000\110\000\
\\005\000\022\000\006\000\021\000\007\000\110\000\008\000\110\000\
\\009\000\110\000\010\000\110\000\012\000\110\000\013\000\110\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\110\000\
\\018\000\017\000\019\000\016\000\020\000\110\000\021\000\110\000\
\\022\000\110\000\024\000\110\000\025\000\110\000\029\000\110\000\
\\030\000\110\000\031\000\110\000\034\000\110\000\035\000\110\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\004\000\111\000\
\\005\000\022\000\006\000\021\000\007\000\111\000\008\000\111\000\
\\009\000\111\000\010\000\111\000\012\000\111\000\013\000\111\000\
\\014\000\020\000\015\000\019\000\016\000\018\000\017\000\111\000\
\\018\000\017\000\019\000\016\000\020\000\111\000\021\000\111\000\
\\022\000\111\000\024\000\111\000\025\000\111\000\029\000\111\000\
\\030\000\111\000\031\000\111\000\034\000\111\000\035\000\111\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\004\000\014\000\
\\005\000\022\000\006\000\021\000\007\000\013\000\012\000\050\000\
\\013\000\012\000\014\000\020\000\015\000\019\000\016\000\018\000\
\\017\000\011\000\018\000\017\000\019\000\016\000\020\000\010\000\
\\024\000\009\000\025\000\008\000\030\000\007\000\031\000\006\000\
\\034\000\005\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\008\000\064\000\014\000\020\000\015\000\019\000\
\\016\000\018\000\018\000\017\000\019\000\016\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\009\000\051\000\014\000\020\000\015\000\019\000\
\\016\000\018\000\018\000\017\000\019\000\016\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\010\000\074\000\014\000\020\000\015\000\019\000\
\\016\000\018\000\018\000\017\000\019\000\016\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\012\000\056\000\014\000\020\000\015\000\019\000\
\\016\000\018\000\018\000\017\000\019\000\016\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\014\000\020\000\015\000\019\000\016\000\018\000\
\\018\000\017\000\019\000\016\000\021\000\086\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\014\000\020\000\015\000\019\000\016\000\018\000\
\\018\000\017\000\019\000\016\000\022\000\063\000\000\000\
\\001\000\001\000\025\000\002\000\024\000\003\000\023\000\005\000\022\000\
\\006\000\021\000\014\000\020\000\015\000\019\000\016\000\018\000\
\\018\000\017\000\019\000\016\000\029\000\015\000\035\000\084\000\000\000\
\\001\000\004\000\014\000\007\000\013\000\013\000\012\000\017\000\011\000\
\\020\000\010\000\024\000\009\000\025\000\008\000\030\000\007\000\
\\031\000\006\000\034\000\005\000\000\000\
\\001\000\011\000\048\000\000\000\
\\001\000\012\000\087\000\026\000\087\000\027\000\087\000\000\000\
\\001\000\012\000\088\000\026\000\088\000\027\000\088\000\000\000\
\\001\000\012\000\089\000\026\000\089\000\027\000\089\000\000\000\
\\001\000\012\000\090\000\026\000\066\000\027\000\090\000\000\000\
\\001\000\012\000\067\000\026\000\066\000\000\000\
\\001\000\012\000\070\000\026\000\066\000\000\000\
\\001\000\012\000\073\000\026\000\066\000\000\000\
\\001\000\013\000\027\000\000\000\
\\001\000\013\000\045\000\000\000\
\\001\000\013\000\062\000\032\000\061\000\033\000\060\000\000\000\
\\001\000\021\000\047\000\000\000\
\\001\000\023\000\053\000\000\000\
\\001\000\023\000\058\000\000\000\
\\001\000\023\000\072\000\000\000\
\\001\000\023\000\075\000\000\000\
\\001\000\026\000\066\000\027\000\078\000\000\000\
\\001\000\026\000\066\000\027\000\079\000\000\000\
\\001\000\031\000\026\000\000\000\
\\001\000\031\000\029\000\000\000\
\\001\000\031\000\046\000\000\000\
\\001\000\031\000\052\000\000\000\
\\001\000\035\000\000\000\000\000\
\\001\000\035\000\083\000\000\000\
\\001\000\035\000\085\000\000\000\
\"
val actionRowNumbers =
"\029\000\028\000\053\000\001\000\
\\002\000\000\000\048\000\038\000\
\\049\000\029\000\029\000\029\000\
\\029\000\029\000\029\000\029\000\
\\029\000\029\000\029\000\029\000\
\\029\000\029\000\029\000\029\000\
\\039\000\050\000\041\000\030\000\
\\016\000\021\000\023\000\004\000\
\\054\000\014\000\015\000\013\000\
\\012\000\011\000\018\000\008\000\
\\007\000\006\000\005\000\051\000\
\\042\000\029\000\029\000\025\000\
\\003\000\029\000\043\000\040\000\
\\027\000\026\000\017\000\022\000\
\\040\000\035\000\032\000\031\000\
\\040\000\010\000\029\000\036\000\
\\040\000\044\000\037\000\024\000\
\\045\000\034\000\040\000\033\000\
\\009\000\040\000\046\000\047\000\
\\029\000\029\000\019\000\020\000\
\\052\000"
val gotoT =
"\
\\001\000\080\000\002\000\002\000\004\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\026\000\000\000\
\\004\000\028\000\000\000\
\\004\000\029\000\000\000\
\\004\000\030\000\000\000\
\\004\000\031\000\000\000\
\\002\000\032\000\004\000\001\000\000\000\
\\004\000\033\000\000\000\
\\004\000\034\000\000\000\
\\004\000\035\000\000\000\
\\004\000\036\000\000\000\
\\004\000\037\000\000\000\
\\004\000\038\000\000\000\
\\004\000\039\000\000\000\
\\004\000\040\000\000\000\
\\004\000\041\000\000\000\
\\004\000\042\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\004\000\047\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\004\000\052\000\000\000\
\\004\000\053\000\000\000\
\\000\000\
\\000\000\
\\004\000\055\000\000\000\
\\000\000\
\\005\000\057\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\063\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\066\000\000\000\
\\000\000\
\\004\000\067\000\000\000\
\\000\000\
\\005\000\069\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\074\000\000\000\
\\000\000\
\\000\000\
\\005\000\075\000\000\000\
\\000\000\
\\000\000\
\\004\000\078\000\000\000\
\\004\000\079\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 81
val numrules = 29
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle General.Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(List.map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit
 | NUM of unit ->  (int) | ID of unit ->  (string)
 | CONST of unit ->  (bool) | NAME of unit ->  (string)
 | TY of unit ->  (AST.vartype) | EXP of unit ->  (AST.exp)
 | DECL of unit ->  (AST.decl) | program of unit ->  (AST.exp list)
 | START of unit ->  (AST.exp list)
end
type svalue = MlyValue.svalue
type result = AST.exp list
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn (T 0) => true | (T 2) => true | (T 4) => true | (T 5) => true | (T 
6) => true | (T 8) => true | (T 7) => true | (T 9) => true | (T 1)
 => true | (T 3) => true | (T 13) => true | (T 14) => true | (T 15)
 => true | (T 16) => true | (T 19) => true | (T 20) => true | (T 21)
 => true | (T 18) => true | (T 17) => true | (T 10) => true | _ => false
val preferred_change : (term list * term list) list = 
nil
val noShift = 
fn (T 34) => true | _ => false
val showTerminal =
fn (T 0) => "AND"
  | (T 1) => "OR"
  | (T 2) => "XOR"
  | (T 3) => "NOT"
  | (T 4) => "EQUALS"
  | (T 5) => "IMPLIES"
  | (T 6) => "IF"
  | (T 7) => "ELSE"
  | (T 8) => "THEN"
  | (T 9) => "FI"
  | (T 10) => "EQUALITY"
  | (T 11) => "RPAREN"
  | (T 12) => "LPAREN"
  | (T 13) => "PLUS"
  | (T 14) => "MINUS"
  | (T 15) => "TIMES"
  | (T 16) => "NEGATE"
  | (T 17) => "LESSTHAN"
  | (T 18) => "GREATERTHAN"
  | (T 19) => "LET"
  | (T 20) => "IN"
  | (T 21) => "END"
  | (T 22) => "COLON"
  | (T 23) => "FN"
  | (T 24) => "FUN"
  | (T 25) => "ARROW"
  | (T 26) => "IMPLIESARROW"
  | (T 27) => "NAME"
  | (T 28) => "TERM"
  | (T 29) => "CONST"
  | (T 30) => "ID"
  | (T 31) => "INT"
  | (T 32) => "BOOL"
  | (T 33) => "NUM"
  | (T 34) => "EOF"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn _ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 34) $$ (T 32) $$ (T 31) $$ (T 28) $$ (T 26) $$ (T 25) $$ (T 24)
 $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18) $$ (T 17)
 $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11) $$ (T 10)
 $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ (T 4) $$ (T 3) $$ (T 
2) $$ (T 1) $$ (T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.program program1, program1left, 
program1right)) :: rest671)) => let val  result = MlyValue.START (fn _
 => let val  (program as program1) = program1 ()
 in (program)
end)
 in ( LrTable.NT 0, ( result, program1left, program1right), rest671)

end
|  ( 1, ( ( _, ( MlyValue.EXP EXP1, EXP1left, EXP1right)) :: rest671))
 => let val  result = MlyValue.program (fn _ => let val  (EXP as EXP1)
 = EXP1 ()
 in ([EXP])
end)
 in ( LrTable.NT 1, ( result, EXP1left, EXP1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.program program1, _, program1right)) :: _ ::
 ( _, ( MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  
result = MlyValue.program (fn _ => let val  (EXP as EXP1) = EXP1 ()
 val  (program as program1) = program1 ()
 in ([EXP]@program)
end)
 in ( LrTable.NT 1, ( result, EXP1left, program1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.EXP EXP1, _, EXP1right)) :: _ :: ( _, ( 
MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = 
MlyValue.DECL (fn _ => let val  (ID as ID1) = ID1 ()
 val  (EXP as EXP1) = EXP1 ()
 in (AST.ValDecl(ID, EXP))
end)
 in ( LrTable.NT 2, ( result, ID1left, EXP1right), rest671)
end
|  ( 4, ( ( _, ( _, INT1left, INT1right)) :: rest671)) => let val  
result = MlyValue.TY (fn _ => (AST.INT))
 in ( LrTable.NT 4, ( result, INT1left, INT1right), rest671)
end
|  ( 5, ( ( _, ( _, BOOL1left, BOOL1right)) :: rest671)) => let val  
result = MlyValue.TY (fn _ => (AST.BOOL))
 in ( LrTable.NT 4, ( result, BOOL1left, BOOL1right), rest671)
end
|  ( 6, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.TY TY1, _, _)
) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = 
MlyValue.TY (fn _ => let val  (TY as TY1) = TY1 ()
 in (TY)
end)
 in ( LrTable.NT 4, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 7, ( ( _, ( MlyValue.TY TY2, _, TY2right)) :: _ :: ( _, ( 
MlyValue.TY TY1, TY1left, _)) :: rest671)) => let val  result = 
MlyValue.TY (fn _ => let val  TY1 = TY1 ()
 val  TY2 = TY2 ()
 in (AST.ARROW(TY1,TY2))
end)
 in ( LrTable.NT 4, ( result, TY1left, TY2right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.CONST CONST1, CONST1left, CONST1right)) :: 
rest671)) => let val  result = MlyValue.EXP (fn _ => let val  (CONST
 as CONST1) = CONST1 ()
 in (AST.BoolExp(CONST))
end)
 in ( LrTable.NT 3, ( result, CONST1left, CONST1right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.NUM NUM1, NUM1left, NUM1right)) :: rest671))
 => let val  result = MlyValue.EXP (fn _ => let val  (NUM as NUM1) = 
NUM1 ()
 in (AST.NumExp(NUM))
end)
 in ( LrTable.NT 3, ( result, NUM1left, NUM1right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) =>
 let val  result = MlyValue.EXP (fn _ => let val  (ID as ID1) = ID1 ()
 in (AST.VarExp(ID))
end)
 in ( LrTable.NT 3, ( result, ID1left, ID1right), rest671)
end
|  ( 11, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.EXP EXP1, _,
 _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  (EXP as EXP1) = EXP1 ()
 in (AST.BracketsExp(AST.LPAREN,AST.RPAREN,EXP))
end)
 in ( LrTable.NT 3, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 12, ( ( _, ( MlyValue.EXP EXP1, _, EXP1right)) :: ( _, ( _, 
NOT1left, _)) :: rest671)) => let val  result = MlyValue.EXP (fn _ =>
 let val  (EXP as EXP1) = EXP1 ()
 in (AST.BoolNegateExp(AST.NOT,EXP))
end)
 in ( LrTable.NT 3, ( result, NOT1left, EXP1right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.And,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Or,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Xor,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Eq,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Implies,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 18, ( ( _, ( _, _, FI1right)) :: ( _, ( MlyValue.EXP EXP3, _, _))
 :: _ :: ( _, ( MlyValue.EXP EXP2, _, _)) :: _ :: ( _, ( MlyValue.EXP 
EXP1, _, _)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result
 = MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 val  EXP3 = EXP3 ()
 in (
AST.ConditionalExp(AST.IF,EXP1,AST.THEN,EXP2,AST.ELSE,EXP3,AST.FI))

end)
 in ( LrTable.NT 3, ( result, IF1left, FI1right), rest671)
end
|  ( 19, ( ( _, ( _, _, END1right)) :: ( _, ( MlyValue.EXP EXP1, _, _)
) :: _ :: ( _, ( MlyValue.DECL DECL1, _, _)) :: ( _, ( _, LET1left, _)
) :: rest671)) => let val  result = MlyValue.EXP (fn _ => let val  (
DECL as DECL1) = DECL1 ()
 val  (EXP as EXP1) = EXP1 ()
 in (AST.LetExp(DECL, EXP))
end)
 in ( LrTable.NT 3, ( result, LET1left, END1right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BinExp(AST.Add, EXP1,  EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BinExp(AST.Sub,  EXP1,  EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BinExp(AST.Mul,  EXP1, EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Greaterthan,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.EXP EXP2, _, EXP2right)) :: _ :: ( _, ( 
MlyValue.EXP EXP1, EXP1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  EXP1 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.BoolBinExp(AST.Lessthan,EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, EXP1left, EXP2right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.EXP EXP1, _, EXP1right)) :: ( _, ( _, 
NEGATE1left, _)) :: rest671)) => let val  result = MlyValue.EXP (fn _
 => let val  (EXP as EXP1) = EXP1 ()
 in (AST.NegateExp(AST.Negate,EXP))
end)
 in ( LrTable.NT 3, ( result, NEGATE1left, EXP1right), rest671)
end
|  ( 26, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.EXP EXP2, _,
 _)) :: ( _, ( MlyValue.EXP EXP1, _, _)) :: ( _, ( _, LPAREN1left, _))
 :: rest671)) => let val  result = MlyValue.EXP (fn _ => let val  EXP1
 = EXP1 ()
 val  EXP2 = EXP2 ()
 in (AST.AppExp(EXP1,EXP2))
end)
 in ( LrTable.NT 3, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 27, ( ( _, ( MlyValue.EXP EXP1, _, EXP1right)) :: _ :: ( _, ( 
MlyValue.TY TY2, _, _)) :: _ :: _ :: ( _, ( MlyValue.TY TY1, _, _)) ::
 _ :: ( _, ( MlyValue.ID ID1, _, _)) :: _ :: ( _, ( _, FN1left, _)) ::
 rest671)) => let val  result = MlyValue.EXP (fn _ => let val  (ID as 
ID1) = ID1 ()
 val  TY1 = TY1 ()
 val  TY2 = TY2 ()
 val  (EXP as EXP1) = EXP1 ()
 in (AST.Fn(ID,TY1,TY2,EXP))
end)
 in ( LrTable.NT 3, ( result, FN1left, EXP1right), rest671)
end
|  ( 28, ( ( _, ( MlyValue.EXP EXP1, _, EXP1right)) :: _ :: ( _, ( 
MlyValue.TY TY2, _, _)) :: _ :: _ :: ( _, ( MlyValue.TY TY1, _, _)) ::
 _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _
, _)) :: ( _, ( _, FUN1left, _)) :: rest671)) => let val  result = 
MlyValue.EXP (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  TY1 = TY1 ()
 val  TY2 = TY2 ()
 val  (EXP as EXP1) = EXP1 ()
 in (AST.Fun(ID1,ID2,TY1,TY2,EXP))
end)
 in ( LrTable.NT 3, ( result, FUN1left, EXP1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.START x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : Boo_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(
ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(
ParserData.MlyValue.VOID,p1,p2))
fun XOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(
ParserData.MlyValue.VOID,p1,p2))
fun NOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(
ParserData.MlyValue.VOID,p1,p2))
fun EQUALS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(
ParserData.MlyValue.VOID,p1,p2))
fun IMPLIES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(
ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(
ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(
ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(
ParserData.MlyValue.VOID,p1,p2))
fun FI (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(
ParserData.MlyValue.VOID,p1,p2))
fun EQUALITY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(
ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(
ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(
ParserData.MlyValue.VOID,p1,p2))
fun PLUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(
ParserData.MlyValue.VOID,p1,p2))
fun MINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(
ParserData.MlyValue.VOID,p1,p2))
fun TIMES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(
ParserData.MlyValue.VOID,p1,p2))
fun NEGATE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(
ParserData.MlyValue.VOID,p1,p2))
fun LESSTHAN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(
ParserData.MlyValue.VOID,p1,p2))
fun GREATERTHAN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(
ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(
ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(
ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(
ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(
ParserData.MlyValue.VOID,p1,p2))
fun FN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(
ParserData.MlyValue.VOID,p1,p2))
fun FUN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(
ParserData.MlyValue.VOID,p1,p2))
fun ARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(
ParserData.MlyValue.VOID,p1,p2))
fun IMPLIESARROW (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(
ParserData.MlyValue.VOID,p1,p2))
fun NAME (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(
ParserData.MlyValue.NAME (fn () => i),p1,p2))
fun TERM (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(
ParserData.MlyValue.VOID,p1,p2))
fun CONST (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(
ParserData.MlyValue.CONST (fn () => i),p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(
ParserData.MlyValue.ID (fn () => i),p1,p2))
fun INT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(
ParserData.MlyValue.VOID,p1,p2))
fun BOOL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(
ParserData.MlyValue.VOID,p1,p2))
fun NUM (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(
ParserData.MlyValue.NUM (fn () => i),p1,p2))
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(
ParserData.MlyValue.VOID,p1,p2))
end
end
