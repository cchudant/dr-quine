#include <printf.h>
#include <string.h>

#define FT(x)int main(){ x }
#define COMMA ,
#define FILENAME "Grace_kid.c"

/*
  Hello corrector, how are you?
 */

FT(
    char *code[] = {
        "#include <printf.h>" COMMA
        "#include <string.h>" COMMA
        "" COMMA
        "#define FT(x)int main(){ x }" COMMA
        "#define COMMA ," COMMA
        "#define FILENAME \"Grace_kid.c\"" COMMA
        "" COMMA
        "/*" COMMA
        "  Hello corrector, how are you?" COMMA
        " */" COMMA
        "" COMMA
        "FT(" COMMA
        "    char *code[] = {" COMMA
        "    };" COMMA
        "" COMMA
        "    FILE* f = fopen(FILENAME, \"w\");" COMMA
        "" COMMA
        "    for (int i = 0; i < 13; i++) {" COMMA
        "        fprintf(f, \"%s\\n\", code[i]);" COMMA
        "    }" COMMA
        "    for (int i = 0; i < 33; i++) {" COMMA
        "        fprintf(f, \"        \\\"\");" COMMA
        "        for (int j = 0; j < strlen(code[i]); j++) {" COMMA
        "            if (code[i][j] == '\\\\' || code[i][j] == '\"')" COMMA
        "                fprintf(f, \"\\\\\");" COMMA
        "            fprintf(f, \"%c\", code[i][j]);" COMMA
        "        }" COMMA
        "        fprintf(f, \"\\\" COMMA\\n\");" COMMA
        "    }" COMMA
        "    for (int i = 13; i < 33; i++) {" COMMA
        "        fprintf(f, \"%s\\n\", code[i]);" COMMA
        "    }" COMMA
        ")" COMMA
    };

    FILE* f = fopen(FILENAME, "w");

    for (int i = 0; i < 13; i++) {
        fprintf(f, "%s\n", code[i]);
    }
    for (int i = 0; i < 33; i++) {
        fprintf(f, "        \"");
        for (int j = 0; j < strlen(code[i]); j++) {
            if (code[i][j] == '\\' || code[i][j] == '"')
                fprintf(f, "\\");
            fprintf(f, "%c", code[i][j]);
        }
        fprintf(f, "\" COMMA\n");
    }
    for (int i = 13; i < 33; i++) {
        fprintf(f, "%s\n", code[i]);
    }
)
