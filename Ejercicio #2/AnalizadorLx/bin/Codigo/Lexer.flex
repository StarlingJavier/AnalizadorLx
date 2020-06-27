package Codigo;
import static Codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
a=[a]
H=["_","&","$"]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
int |
if |
else |
while {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
({a})({L}|{D}|{H})*({a})* {lexeme=yytext(); return Patron;}
({L}|{H}|{D})({L}|{D}|{H})* {lexeme=yytext(); return NoPatron;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}