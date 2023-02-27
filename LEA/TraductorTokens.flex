import java_cup.runtime.Symbol;

%%

%class TraductorTokens
%standalone

%%

arbol {System.out.println("ARBOL = " + yytext());}
node {System.out.println("NODO = " + yytext());}
shape {System.out.println("SH = " + yytext());}
label {System.out.println("ETIQUETA = " + yytext());}
color {System.out.println("COLOR = " + yytext());}
fontcolor {System.out.println("COLOR_FUENTE = " + yytext());}
style {System.out.println("FUENTE = " + yytext());}
edge {System.out.println("ARISTA = " + yytext());}
dir {System.out.println("DIRECCION = " + yytext());}
forward {System.out.println("DIR_ADELANTE = " + yytext());}
hijos {System.out.println("HIJOS = " + yytext());}


square {System.out.println("SH_CUADRADO = " + yytext());}
circle {System.out.println("SH_CIRCULO = " + yytext());}
blue {System.out.println("COLOR_AZUL = " + yytext());}
bold {System.out.println("FUENTE_BOLD = " + yytext());}
dashed {System.out.println("FUENTE_DASHED = " + yytext());}


\{ {System.out.println("LLAVE_A = " + yytext());}
\[ {System.out.println("CORCHETE_A = " + yytext());}
= {System.out.println("IGUAL = " + yytext());}
, {System.out.println("COMA = " + yytext());}

//DEFINIR EL ID (ejemplo)
//DEFINIR LOS LABEL (ej: "a")
//COMO DEFINIR LOS COLOR (ej: color = "green")
\"([a-zA-Z]+[0-9])*\" {System.out.println("ET_VALOR = " + yytext());}

//DEFINIR LOS NOMBRES DE LOS HIJOS

. {}