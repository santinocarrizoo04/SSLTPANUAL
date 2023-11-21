// PARA COMPILAR Y EJECUTAR //

1/ ABRIR UN BASH EN EL REPO LOCAL
2/ flex scanner.l
3/ bison -yd parser.y
4/ gcc lex.yy.c y.tab.c -o ejecutador
5/ ./ejecutador.exe entrada.txt
