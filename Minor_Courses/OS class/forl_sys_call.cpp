#include <stdio.h>
#include<unistd.h>

int main()
{
    int id = fork();
    printf("Hello Wrold\n");
    printf("%d \n",id);
    return 0;
}