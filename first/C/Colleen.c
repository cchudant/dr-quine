#include <printf.h>
#include <string.h>

void print_code(char **code) {
    for (int i = 0; i < 26; i++) {
        printf("%s\n", code[i]);
    }
    for (int i = 0; i < 32; i++) {
        printf("        \"");
        for (int j = 0; j < strlen(code[i]); j++) {
            if (code[i][j] == '\\' || code[i][j] == '"')
                printf("\\");
            printf("%c", code[i][j]);
        }
        printf("\",\n");
    }
    for (int i = 26; i < 32; i++) {
        printf("%s\n", code[i]);
    }
}

/*
  This is a comment!
 */
int main() {
    char *code[] = {
        "#include <printf.h>",
        "#include <string.h>",
        "",
        "void print_code(char **code) {",
        "    for (int i = 0; i < 26; i++) {",
        "        printf(\"%s\\n\", code[i]);",
        "    }",
        "    for (int i = 0; i < 32; i++) {",
        "        printf(\"        \\\"\");",
        "        for (int j = 0; j < strlen(code[i]); j++) {",
        "            if (code[i][j] == '\\\\' || code[i][j] == '\"')",
        "                printf(\"\\\\\");",
        "            printf(\"%c\", code[i][j]);",
        "        }",
        "        printf(\"\\\",\\n\");",
        "    }",
        "    for (int i = 26; i < 32; i++) {",
        "        printf(\"%s\\n\", code[i]);",
        "    }",
        "}",
        "",
        "/*",
        "  This is a comment!",
        " */",
        "int main() {",
        "    char *code[] = {",
        "    };",
        "    /*",
        "      How are you?",
        "     */",
        "    print_code(code);",
        "}",
    };
    /*
      How are you?
     */
    print_code(code);
}
