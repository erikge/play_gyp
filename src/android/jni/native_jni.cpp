#include "native_jni.h"

//#include "math.h"
//#include "say.h"

#include <android/log.h>


JNIEXPORT void JNICALL Java_com_self_ishowproj_Logic_trigger
(JNIEnv *env, jclass cls) {
    
    //sayHello();
    //__android_log_print( ANDROID_LOG_DEBUG, "erik", "[try-gyp] add: %d", add(3, 5));

    __android_log_print( ANDROID_LOG_DEBUG, "erik", "[try-gyp] hello world");
}
