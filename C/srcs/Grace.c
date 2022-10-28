#include <stdio.h>
#define CALL_FT FT(void)
#define MSG "#include <stdio.h>%c#define CALL_FT FT(void)%c#define MSG %c%s%c%c#define FT(x) int main(void) { FILE *f = fopen(%cGrace_kid.c%c, %cw%c); if (!f) return (1); else { fprintf(f, MSG, 10, 10, 34, MSG, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10); fclose(f); } return (0); }%c%c/*%c    GRACE FUNCTION%c*/%c%cCALL_FT;"
#define FT(x) int main(void) { FILE *f = fopen("Grace_kid.c", "w"); if (!f) return (1); else { fprintf(f, MSG, 10, 10, 34, MSG, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 10, 10); fclose(f); } return (0); }

/*
    GRACE FUNCTION
*/

CALL_FT;