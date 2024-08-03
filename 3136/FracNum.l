%{
#include <stdio.h>
#include <stdlib.h>
int pi=0, ni=0, pf=0, nf=0;
%}
%%
\+?[0-9]+    { pi++; }
\+?[0-9]*\.[0-9]+   { pf++; }
\-?[0-9]+    { ni++; }
\-?[0-9]*\.[0-9]+   { nf++; }
.|\n         { /* ignore any other characters */ }
%%

int yywrap() {
    return 1;
}
int main() {
    printf("ENTER INPUT: ");
    yylex();
    printf("\nPOSITIVE INTEGER: %d", pi);
    printf("\nNEGATIVE INTEGER: %d", ni);
    printf("\nPOSITIVE FRACTION: %d", pf);
    printf("\nNEGATIVE FRACTION: %d\n", nf);
    return 0;
}
