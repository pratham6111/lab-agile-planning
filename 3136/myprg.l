%{
#include<stdio.h>
%}
%%
[\n] {printf("Hello everyone ! My name is Prathamesh Misal");}
%%
int yywrap()
{
return 0;
}
int main(){
yylex();
return 0;
}