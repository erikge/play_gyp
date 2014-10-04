#include <stdio.h>
#include <unistd.h>


int main(int argc, const char* argv[]) {
    printf("Hello GYP\n");
    
    int i = 0;
    while (true) {
        printf("Hello GYP: %d \n", i++);
        sleep(1);
    }

    
}