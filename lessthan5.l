%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z]* {if (yyleng<5)
{
count++;
}}
. ;
%%
int main()
{
yyin=fopen("samplelessthan5.txt","r");
yylex();
printf("%d\n",count);
}
int yywrap()
{
return 1;
}
