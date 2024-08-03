%{
	#include<stdio.h>
%}
%%
bool|int|float printf("Keyword");
[-,+]?[0-9]+ printf("Constants");
[!@#$%^&*()]+ printf("Special Chars");
%%
main()
{
yylex();
return 0;
}
int yywrap()
{
}