#include <stdio.h>
#include <string.h>
#include <unistd.h>

int i = 5;

int main(int argc, char* argv[]) {
    char *code[] = {
        "#include <stdio.h>",
        "#include <string.h>",
        "#include <unistd.h>",
        "",
        "",
        "int main(int argc, char* argv[]) {",
        "    char *code[] = {",
        "    };",
        "",
        "    if (argc == 1 && strcmp(argv[0], \"./Sully\") == 0)",
        "        ++i;",
        "",
        "    char buf[1024];",
        "    sprintf(buf, \"Sully_%d.c\", i - 1);",
        "    FILE* f = fopen(buf, \"w\");",
        "",
        "    for (int i = 0; i < 4; i++) {",
        "        fprintf(f, \"%s\\n\", code[i]);",
        "    }",
        "    fprintf(f, \"int i = %d;\\n\", i - 1);",
        "    for (int i = 4; i < 7; i++) {",
        "        fprintf(f, \"%s\\n\", code[i]);",
        "    }",
        "    for (int i = 0; i < 48; i++) {",
        "        fprintf(f, \"        \\\"\");",
        "        for (int j = 0; j < (int)strlen(code[i]); j++) {",
        "            if (code[i][j] == '\\\\' || code[i][j] == '\"')",
        "                fprintf(f, \"\\\\\");",
        "            fprintf(f, \"%c\", code[i][j]);",
        "        }",
        "        fprintf(f, \"\\\",\\n\");",
        "    }",
        "    for (int i = 7; i < 48; i++) {",
        "        fprintf(f, \"%s\\n\", code[i]);",
        "    }",
        "",
        "    fclose(f);",
        "",
        "    if (i - 1 > 0) {",
        "        char buf2[1024];",
        "        sprintf(buf2, \"clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d ; ./Sully_%d\", i - 1, i - 1, i - 1);",
        "        execlp(\"bash\", \"bash\", \"-c\", buf2, NULL);",
        "    } else if (i - 1 == 0) {",
        "        char buf2[1024];",
        "        sprintf(buf2, \"clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d\", i - 1, i - 1);",
        "        execlp(\"bash\", \"bash\", \"-c\", buf2, NULL);",
        "    }",
        "}",
    };

    if (argc == 1 && strcmp(argv[0], "./Sully") == 0)
        ++i;

    char buf[1024];
    sprintf(buf, "Sully_%d.c", i - 1);
    FILE* f = fopen(buf, "w");

    for (int i = 0; i < 4; i++) {
        fprintf(f, "%s\n", code[i]);
    }
    fprintf(f, "int i = %d;\n", i - 1);
    for (int i = 4; i < 7; i++) {
        fprintf(f, "%s\n", code[i]);
    }
    for (int i = 0; i < 48; i++) {
        fprintf(f, "        \"");
        for (int j = 0; j < (int)strlen(code[i]); j++) {
            if (code[i][j] == '\\' || code[i][j] == '"')
                fprintf(f, "\\");
            fprintf(f, "%c", code[i][j]);
        }
        fprintf(f, "\",\n");
    }
    for (int i = 7; i < 48; i++) {
        fprintf(f, "%s\n", code[i]);
    }

    fclose(f);

    if (i - 1 > 0) {
        char buf2[1024];
        sprintf(buf2, "clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d ; ./Sully_%d", i - 1, i - 1, i - 1);
        execlp("bash", "bash", "-c", buf2, NULL);
    } else if (i - 1 == 0) {
        char buf2[1024];
        sprintf(buf2, "clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d", i - 1, i - 1);
        execlp("bash", "bash", "-c", buf2, NULL);
    }
}
