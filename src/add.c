
#ifndef TYPE_T
#error "you must define TYPE_T when compiling this file"
#endif

#ifndef ADD_F
#error "you must define ADD_F when compiling this file"
#endif

TYPE_T ADD_F(TYPE_T x, TYPE_T y) {
    return x + y;
}
