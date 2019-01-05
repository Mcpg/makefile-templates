#include <stdio.h>
#include <test.h>

void test_hello_message()
{
    printf(TEST_MESSAGE " world!\n");
    #ifdef DEBUG
    printf("This is a DEBUG build of the executable.\n");
    #endif 
}