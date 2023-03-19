#include "ex_Sample.h"
JNIEXPORT void JNICALL Java_ex_Sample_printHello(JNIEnv *env, jobject obj) {
        (void) puts ("hello world!");
}
