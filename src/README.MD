// PARA COMPILAR Y EJECUTAR //

1/ ABRIR UN BASH EN EL REPO LOCAL \n
2/ flex scanner.l \n
3/ bison -yd parser.y \n
4/ gcc lex.yy.c y.tab.c -o ejecutador \n
5/ ./ejecutador.exe entrada.txt \n
