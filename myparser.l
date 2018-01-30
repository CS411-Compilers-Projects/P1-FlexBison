%{
#include "mytokens.h"
%}

alpha [a-zA-Z]
digit [0-9]

%%
boolean						return _boolean;
else						return _else;
implements					return _implements;
println						return _println;
void						return _void;
"*"							return _multiplication;
"<="						return _lessequal;
"!="						return _notequal;
"="							return _assignop;
"("							return _leftparen;
"{"							return _leftbrace;
"const string"				return _stringconstant;

break						return _break;
extends						return _extends;
int							return _int;
readln						return _readln;
while						return _while;
"/"							return _division;
">"							return _greater;
"&"							return _and;
";"							return _semicolon;
")"							return _rightparen;
"}"							return _rightbrace;

"const boolean"				return _booleanconstant;
class						return _class;
for							return _for;
interface					return _interface;
"return"					return _return;
"+"							return _plus;
mod							return _mod;
">="						return _greaterequal;
"|"							return _or;
","							return _comma;
"["							return _leftbracket;
"const int"					return _intconstant;
{digit}*				 	return _id;

double						return _double;
if							return _if;
newarray					return _newarray;
string						return _string;
"-"							return _minus;
"<"							return _less;
"=="						return _equal;
"!"							return _not;
"."							return _period;
"]"							return _rightbracket;
"const double"				return _doubleconstant;
{alpha}({alpha}|{digit})*	return _num;

%%
int main(void) {
	int results;
	int running = 1;
	while(running) {
		results = yylex();
		printf("[%d]", results);
	}
			return 0;
}
