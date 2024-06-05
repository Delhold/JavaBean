package web;

public class Rectangulo {
    //DECLARAMOS NUESTRAS VARIABLES
    private int base;
    private int altura;
    //Creamos el constructor vacio para mas despues utilizarlo

    public Rectangulo() {

    }
    //Sobrecargamos
    public Rectangulo(int base, int altura) {
        this.base = base;
        this.altura = altura;
    }
    //Metodos get y set

    //Para obtener el valor ingresado en el set
    public int getBase() {
        return base;
    }
    //Editar ingresar el dato
    public void setBase(int base) {
        this.base = base;
    }
    //Para obtener el valor ingresado en el set
    public int getAltura() {
        return altura;
    }
    //Editar ingresar el dato
    public void setAltura(int altura) {
        this.altura = altura;
    }
    //Este metodo Calcula el area
    public double getCalcularArea() {
        return base * altura;
    }
}

