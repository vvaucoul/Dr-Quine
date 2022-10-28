#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define PROGRAM "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c%1$c#define PROGRAM %2$c%3$s%2$c%1$c%1$cint main()%1$c{%1$c%5$sint i = %4$d;%1$c%5$schar buffer[1024];%1$c%5$schar new_file[100], new_binary[512];%1$c%1$c%5$sbzero(buffer, 512);%1$c%5$sif (i <= 0)%1$c%5$s    return (0);%1$c%5$ssprintf(buffer, %2$cSully_%%d.cpp%2$c, i);%1$c%5$sif (!strcmp(buffer, __FILE__))%1$c%5$s    --i;%1$c%5$sbzero(buffer, 1024);%1$c%5$sbzero(new_file, 100);%1$c%5$ssprintf(new_file, %2$cSully_%%d.cpp%2$c, i);%1$c%5$ssprintf(buffer, %2$cSully_%%d.cpp%2$c, i);%1$c%5$ssprintf(new_binary, %2$cSully_%%d%2$c, i);%1$c%5$sFILE *f = fopen(buffer, %2$cw%2$c);%1$c%5$sif (!f)%1$c%5$s    return (1);%1$c%5$sfprintf(f, PROGRAM, 10, 34, PROGRAM, i, %2$c    %2$c);%1$c%5$sfclose(f);%1$c%5$sbzero(buffer, 1024);%1$c%5$ssprintf(buffer, %2$cclang++ -o %%s %%s%2$c, new_binary, new_file);%1$c%5$ssystem(buffer);%1$c%5$sbzero(buffer, 1024);%1$c%5$ssprintf(buffer, %2$c./%%s%2$c, new_binary);%1$c%5$ssystem(buffer);%1$c%5$sreturn (0);%1$c}"

int main()
{
    int i = 5;
    char buffer[1024];
    char new_file[100], new_binary[512];

    bzero(buffer, 512);
    if (i <= 0)
        return (0);
    sprintf(buffer, "Sully_%d.cpp", i);
    if (!strcmp(buffer, __FILE__))
        --i;
    bzero(buffer, 1024);
    bzero(new_file, 100);
    sprintf(new_file, "Sully_%d.cpp", i);
    sprintf(buffer, "Sully_%d.cpp", i);
    sprintf(new_binary, "Sully_%d", i);
    FILE *f = fopen(buffer, "w");
    if (!f)
        return (1);
    fprintf(f, PROGRAM, 10, 34, PROGRAM, i, "    ");
    fclose(f);
    bzero(buffer, 1024);
    sprintf(buffer, "clang++ -o %s %s", new_binary, new_file);
    system(buffer);
    bzero(buffer, 1024);
    sprintf(buffer, "./%s", new_binary);
    system(buffer);
    return (0);
}