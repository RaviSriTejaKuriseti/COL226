CM.make("$/basis.cm");
CM.make("$/ml-yacc-lib.cm");
use "tree.sml";
use "typechecker.sml";
use "evalu.sml";
use "boo.yacc.sig";
use "boo.yacc.sml";
use "boo.lex.sml";
use "load-boo.sml";
Control.Print.printLength := 1000; 
Control.Print.printDepth := 1000; 
Control.Print.stringDepth := 1000;