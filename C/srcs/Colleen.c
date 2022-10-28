#include <stdio.h>

/*
    MAIN FUNCTION
*/

static char *get_str()
{
    return "#include <stdio.h>%1$c%1$c/*%1$c    MAIN FUNCTION%1$c*/%1$c%1$cstatic char *get_str()%1$c{%1$c    return %3$c%4$s%3$c;%1$c}%1$c%1$cint main(void)%1$c{%1$c    /*%1$c        Start of the program%1$c    */%1$c    char *str = get_str();%1$c    printf(str, 10, 9, 34, str);%1$c    return 0;%1$c}";
}

int main(void)
{
    /*
        Start of the program
    */
    char *str = get_str();
    printf(str, 10, 9, 34, str);
    return 0;
}