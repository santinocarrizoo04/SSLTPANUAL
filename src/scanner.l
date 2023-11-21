%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include "y.tab.h"
    FILE *yyin;
    void errorLexico();
    void variableValida();
    void yyparse();
    void yyerror(char *);
%}

%option noyywrap
%option yylineno

IDENTIFICADOR [a-z][a-zA-Z]*
DIGITO [0-9]
ENTERO {DIGITO}({DIGITO})*
CADENA_CARACTERES   \"([^\"\n])*\"

%%

"buenosDias"            {printf("\nPALABRA_RESERVADA: (%s)\n", yytext);return INICIO;}
"buenasNoches"          {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return FIN;}
"chau"                  {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return CHAU;}
"siSucede"              {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return SISUCEDE;}
"entonces"              {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return ENTONCES;}
"es"                    {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return IGUAL;}
"mostrar"               {printf("\nPALABRA_RESERVADA: (%s)\n", yytext); return MOSTRAR;}
"calcular"              {printf("\nPALABRA_RESERVADA: (%s)\n",yytext); return CALCULAR;}

"("                     {printf("\nOTROS: (%s)\n", yytext); return PARENAPER;}
")"                     {printf("\nOTROS: (%s)\n", yytext); return PARENCIERRE;}
"{"                     {printf("\nOTROS: (%s)\n", yytext); return LLAVESAPER;}
"}"                     {printf("\nOTROS: (%s)\n", yytext); return LLAVESCIERRE;}

"+"                     {printf("\nOPERADOR: (%s)\n", yytext); return MAS;}
"-"                     {printf("\nOPERADOR: (%s)\n", yytext); return MENOS;}
">"                     {printf("\nCOMPARADOR: (%s)\n"), yytext; return MAYOR;}
"<"                     {printf("\nCOMPARADOR: (%s)\n", yytext); return MENOR;}
"f"                     {printf("\nFIN_SENTENCIA: (%s)\n", yytext); return F;}     

{IDENTIFICADOR}         {variableValida(yytext); printf("\nIdentificador: (%s)\n", yytext); return ID;}
{ENTERO}                {printf("\nNUMERO_ENTERO: (%s)\n", yytext); yylval.entero = atoi(yytext); return NUM;}
{CADENA_CARACTERES}     {printf("\nCADENA_CARACTERES: (%s)\n", yytext); return CADENA;}

[\t\r\n]                {/*Ignora los saltos de linea, tabulaciones y espacios*/}

" "

.   {errorLexico();}

%%

int main(int argc, char *argv[]){

     if((yyin = fopen(argv[1], "rt")) == NULL)
     {
        printf("\nNo se logro abrir el archivo: %s\n", argv[1]);
        return 1;
    }
    else{ 
        printf("\nEl archivo se abrio correctamente\n");
        yyparse();
        printf("\nBison finalizo la lectura del archivo\n");
        fclose(yyin);
    }
    return 0;
}

void variableValida(char *token){
    int longitud = strlen(token);

    if(longitud > 16){
        yyerror(token);
    }
}

void errorLexico(){
    printf("\nError lexico: (%s)\n", yytext);
}