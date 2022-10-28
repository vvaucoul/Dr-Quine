#include <stdio.h>
#include <iostream>

/*
    MAIN FUNCTION
*/

static std::string get_str()
{
    return "#include <stdio.h>%1$c#include <iostream>%1$c%1$c/*%1$c    MAIN FUNCTION%1$c*/%1$c%1$cstatic std::string get_str()%1$c{%1$c    return %3$c%4$s%3$c;%1$c}%1$c%1$cint main(void)%1$c{%1$c    /*%1$c        Start of the program%1$c    */%1$c    std::string str = get_str();%1$c    printf(str.c_str(), 10, 9, 34, str.c_str());%1$c    return (0);%1$c}";
}

int main(void)
{
    /*
        Start of the program
    */
    std::string str = get_str();
    printf(str.c_str(), 10, 9, 34, str.c_str());
    return (0);
}