package ex;

public class SampleCpp {
    public native void printHelloCpp();

    public static void main(String[] args) {
        System.loadLibrary("printHelloCpp");
        SampleCpp sampleCpp = new SampleCpp();
        sampleCpp.printHelloCpp();
    }
}
