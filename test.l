%{
	#include<stdio.h>
	int NumSum=0;  int floatSum=0; int idSum=0; int errorSum=0;
%}
%option noyywrap 
%%
[a-zA-Z][a-zA-Z0-9_]*; {
		printf("Find an ID: %s\n",yytext);
		idSum++;
	}
\n	{}

-*[1-9][0-9]*; {
		printf("Find a int: %s\n",yytext);
		NumSum++;
	}
-*[0-9]+\.[0-9]+; {
		printf("Find a float: %s\n",yytext);
		floatSum++;
	}
.+ {
		printf("Find an error!!: %s\n",yytext);
		errorSum++;
}
%%
int main()
{
	yylex();
	printf("intSum = %d\n",NumSum);
	printf("floatSum = %d\n",floatSum);
	printf("idSum = %d\n",idSum);
	printf("errorSum = %d\n",errorSum);

	return 0;
}
