%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include "y.tab.h"
    void yyerror(char *s);
    int yylex(void);
    void parseError(char*);
%}

%union{
    int entero;
}

%token INICIO
%token FIN
%token CHAU
%token SISUCEDE
%token ENTONCES
%token IGUAL
%token MOSTRAR
%token CALCULAR
%token PARENAPER
%token PARENCIERRE
%token LLAVESAPER
%token LLAVESCIERRE
%token MAS
%token MENOS
%token MAYOR
%token MENOR
%token F
%token ID
%token NUM
%token CADENA

%%

PROGRAMA: INICIAR CUERPO RETORNAR CERRAR ;

INICIAR: INICIO LLAVESAPER ;
CERRAR: LLAVESCIERRE FIN ;

CUERPO: INICIALIZACION SENTENCIA ;

INICIALIZACION: 
                INICIALIZADOR |
                INICIALIZADOR INICIALIZACION ;

INICIALIZADOR: 
            ID IGUAL NUM F |
            ID IGUAL CADENA F ;

SENTENCIA: SISUCEDE PARENAPER COMPARACION PARENCIERRE ENTONCES FUNCIONES ;

FUNCIONES: 
            FUNCION |
            FUNCION FUNCIONES ;

FUNCION: 
        MOSTRAR ID F |
        CALCULAR PARENAPER EXPRESION PARENCIERRE F ;

COMPARACION: ID CADENA NUM ;


EXPRESION:
            NUM MAS NUM |
            NUM MENOS NUM |
            ID MAS NUM |
            ID MENOS NUM ;

RETORNAR: CHAU F ;

%%

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
