package ex;

public class Number {
    public native int number();

    public static void main(String[] args) {
        System.loadLibrary("number");
        Number number = new Number();
       	int n = number.number();
		System.out.println(n);
	}
}
