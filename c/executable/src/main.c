#include <stdio.h>
#include <test.h>

int main(int argc, char** args)
{
    printf(TEST_MESSAGE " world!\n");
    #ifdef DEBUG
    printf("This is a DEBUG build of the executable.\n");
    #endif 
    return 0;
}
