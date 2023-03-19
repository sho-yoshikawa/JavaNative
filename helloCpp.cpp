#include <iostream>
#include "ex_SampleCpp.h"

using namespace std;

JNIEXPORT void JNICALL Java_ex_SampleCpp_printHelloCpp(JNIEnv *env, jobject obj) {
		cout << "hello world!" << endl;
		return ;
}

