#include "lib.h"

int mystrlen(const char *ptr)
{
    int i=0;
    while(*ptr++){
        i++;
    }
    return i;
}
