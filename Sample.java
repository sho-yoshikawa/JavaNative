package ex;

public class Sample {
    public native void printHello();

    public static void main(String[] args) {
        System.loadLibrary("printHello");
        Sample sample = new Sample();
        sample.printHello();
    }
}
