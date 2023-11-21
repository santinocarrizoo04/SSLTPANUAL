
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INICIO = 258,
     FIN = 259,
     CHAU = 260,
     SISUCEDE = 261,
     ENTONCES = 262,
     IGUAL = 263,
     MOSTRAR = 264,
     CALCULAR = 265,
     PARENAPER = 266,
     PARENCIERRE = 267,
     LLAVESAPER = 268,
     LLAVESCIERRE = 269,
     MAS = 270,
     MENOS = 271,
     MAYOR = 272,
     MENOR = 273,
     F = 274,
     ID = 275,
     NUM = 276,
     CADENA = 277
   };
#endif
/* Tokens.  */
#define INICIO 258
#define FIN 259
#define CHAU 260
#define SISUCEDE 261
#define ENTONCES 262
#define IGUAL 263
#define MOSTRAR 264
#define CALCULAR 265
#define PARENAPER 266
#define PARENCIERRE 267
#define LLAVESAPER 268
#define LLAVESCIERRE 269
#define MAS 270
#define MENOS 271
#define MAYOR 272
#define MENOR 273
#define F 274
#define ID 275
#define NUM 276
#define CADENA 277




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 11 "parser.y"

    int entero;



/* Line 1676 of yacc.c  */
#line 102 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


