#include <stdio.h>
#include "add.h"

int main() {
    int x = 7, y = 6;
    printf("%d + %d = %d\n", x, y, addi(x, y));
    return 0;
}