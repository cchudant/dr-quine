#include <printf.h>
#include <string.h>

void print_code(char **code) {
    for (int i = 0; i < 24; i++) {
        printf("%s\n", code[i]);
    }
    for (int i = 0; i < 28; i++) {
        printf("        \"");
        for (int j = 0; j < strlen(code[i]); j++) {
            if (code[i][j] == '\\' || code[i][j] == '"')
                printf("\\");
            printf("%c", code[i][j]);
        }
        printf("\",\n");
    }
    for (int i = 24; i < 28; i++) {
        printf("%s\n", code[i]);
    }
}

// hello
int main() {
    char *code[] = {
        "#include <printf.h>",
        "#include <string.h>",
        "",
        "void print_code(char **code) {",
        "    for (int i = 0; i < 24; i++) {",
        "        printf(\"%s\\n\", code[i]);",
        "    }",
        "    for (int i = 0; i < 28; i++) {",
        "        printf(\"        \\\"\");",
        "        for (int j = 0; j < strlen(code[i]); j++) {",
        "            if (code[i][j] == '\\\\' || code[i][j] == '\"')",
        "                printf(\"\\\\\");",
        "            printf(\"%c\", code[i][j]);",
        "        }",
        "        printf(\"\\\",\\n\");",
        "    }",
        "    for (int i = 24; i < 28; i++) {",
        "        printf(\"%s\\n\", code[i]);",
        "    }",
        "}",
        "",
        "// hello",
        "int main() {",
        "    char *code[] = {",
        "    };",
        "    // hi",
        "    print_code(code);",
        "}",
    };
    // hi
    print_code(code);
}
