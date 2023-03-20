import java_cup.runtime.Symbol;

%%

%class TraductorTokens
%standalone

%%

arbol {System.out.println("ARBOL => " + yytext());}
node {System.out.println("NODO => " + yytext());}
shape {System.out.println("SH => " + yytext());}
label {System.out.println("ETIQUETA => " + yytext());}
color {System.out.println("COLOR => " + yytext());}
fontcolor {System.out.println("COLOR_FUENTE => " + yytext());}
style {System.out.println("FUENTE => " + yytext());}
edge {System.out.println("ARISTA => " + yytext());}
dir {System.out.println("DIRECCION => " + yytext());}
hijos {System.out.println("HIJOS => " + yytext());}


square {System.out.println("SH_CUADRADO => " + yytext());}
circle {System.out.println("SH_CIRCULO => " + yytext());}
doublecircle {System.out.println("SH_DOBLECIRCULO => " + yytext());}
rectangle {System.out.println("SH_RECTANGULO => " + yytext());}

blue {System.out.println("CF_AZUL => " + yytext());}
green {System.out.println("CF_VERDE => " + yytext());}
red {System.out.println("CF_ROJO => " + yytext());}
yellow {System.out.println("CF_AMARILLLO => " + yytext());}

\"blue\" {System.out.println("C_AZUL => " + yytext());}
\"green\" {System.out.println("C_VERDE => " + yytext());}
\"red\" {System.out.println("C_ROJO => " + yytext());}
\"yellow\" {System.out.println("C_AMARILLLO => " + yytext());}

bold {System.out.println("FT_BOLD => " + yytext());}
dashed {System.out.println("FT_DASHED => " + yytext());}
solid {System.out.println("FT_SOLID => " + yytext());}

none {System.out.println("DIR_NONE => " + yytext());}
forward {System.out.println("DIR_FORWARD => " + yytext());}
back {System.out.println("DIR_BACK => " + yytext());}
both {System.out.println("DIR_BOTH => " + yytext());}


\{ {System.out.println("LLAVE_A => " + yytext());}
\[ {System.out.println("CORCHETE_A => " + yytext());}
\} {System.out.println("LLAVE_C => " + yytext());}
\] {System.out.println("CORCHETE_C => " + yytext());}
= {System.out.println("IGUAL => " + yytext());}
, {System.out.println("COMA => " + yytext());}
; {System.out.println("PUNTO_COMA => " + yytext());}

//COMENTARIOS
"//"+([a-zA-Z]*+(" "| \t | \f | \n | \r )*+[0-9]*+(á | é | í | ó | ú)*+( _ | \! | ¡ | ¿ | \?  )*)*+\n {System.out.println("COMENTARIO// => " + yytext());}
"/*"+([a-zA-Z]*+(" "| \t | \f | \n | \r )*+[0-9]*+(á | é | í | ó | ú)*+( _ | \! | ¡ | ¿ | \?  )*)*+"*/"  {System.out.println("COMENTARIO/* => " + yytext());}

//IDENTIFICADORES
[a-zA-Z]([a-zA-Z]*+[0-9]*+(á | é | í | ó | ú)*+( _ | \! | ¡ | ¿ | \?  )*)* {System.out.println("IDENTIFICADOR => " + yytext());}

//LABELS
 \"([a-zA-Z]*+(" "| \t | \f | \n | \r )*+[0-9]*+(á | é | í | ó | ú)*+( _ | \! | ¡ | ¿ | \?  )*)*\" {System.out.println("ETIQUETA_VALOR => " + yytext());}



. {}