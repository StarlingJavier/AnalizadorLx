package Codigo;

import java.io.File;

public class Principal {
    public static void main(String[] args) {
        String ruta = "C:/Users/Starling J/eclipse-workspace/AnalizadorLx/src/Codigo/Lexer.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}