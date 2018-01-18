#include <stdio.h>  
#include "helloworld.h"

int main()  
{  
    printf("Hello, World! This is a native C program compiled on the command line.\n");
    
    PERSON p;
    if (0 == Person_Init(&p)) {
        printf("%d", p.Age);
        printf("%d", p.Weight);
    }
    return 0;
}

int Person_Init(PERSON* person) {
    person->Age = 10;
    person->Weight = 20;
}
