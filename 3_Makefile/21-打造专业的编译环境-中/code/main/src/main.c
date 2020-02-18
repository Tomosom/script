#include <stdio.h>
#include "define.h"
#include "common.h"
int main()
{
    printf("Version: %s\n", VERSION);
    printf("main()::start main ...\n");
    
    common();
    module_main();
}
