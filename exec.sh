# c
javac Sample.java
javac -h ./ Sample.java
export JAVA_INCLUDE_PATH="/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/include/"
gcc -shared -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/darwin hello.c -o libprintHello.jnilib
cd ../
java -Djava.library.path=./ex ex.Sample

# cpp
javac SampleCpp.java
javac -h ./ SampleCpp.java
gcc -shared -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/darwin helloCpp.cpp -o libprintHelloCpp.jnilib
cd ../
java -Djava.library.path=./ex ex.SampleCpp

# assembly
javac Number.java
javac -h ./ Number.java
nasm -o number.o number.s
gcc -shared -o libnumber.jnilib number.o
cd ../
java -Djava.library.path=./ex ex.Number
