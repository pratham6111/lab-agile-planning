%{
#include <stdio.h>
#include <stdlib.h>
%}
number [0-9]+
name [a-zA-Z]+[a-zA-Z0-9]*
%%
{number} {
    {printf("Accept: %d\n", atoi(yytext));}
    {printf("Length of number is: %d\n", yyleng);}
}
{name} {
    {printf("Length of string is: %d\n", yyleng);}
}
%%
int yywrap() {
    return 0;  
}
int main() {
    yylex();  
    return 0;
}


