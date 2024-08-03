
%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Identifier");}
[0-9][a-zA-Z][a-zA-Z0-9]* {printf("Invalid Identifier");}
^[0-9] {printf("Invalid Identifier");}
.|\n;
%%
int yywrap()
{
return 0;
}
int main()
{
yylex();
return 0;
}
