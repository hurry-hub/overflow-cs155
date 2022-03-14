#include <unistd.h>
#include <stdio.h>

int main(int argc, char* argv[])
{
    char *buf[] = {"/bin/sh", NULL};
    execve(buf[0], buf, 0);
    return 0;
}