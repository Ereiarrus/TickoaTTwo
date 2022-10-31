#include <stdio.h>
#include "dep.h"

int main(void) {
    printf("Hello, World!\n");
    printf("Hello, World! some_num: %d\n", some_num);
    printf("Hello, World! gimmie_num: %d\n", gimmie_num());
#ifdef DEBUG
    printf("Test in\n");
#endif
    return 0;
}
