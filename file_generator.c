#include<stdio.h>
#include<string.h>

int main(int argc, char const *argv[])
{   
    char * extension [4]= {".c",".dart",".kt",".py"};
    int type_len = 4;

    char *name = "selection__sort";
    
    while (type_len--){

        char fileSpec[40];
        FILE *out;

        snprintf( fileSpec, sizeof( fileSpec ), "%s%s", name, extension[type_len] );

        out = fopen( fileSpec, "w" );
        fclose(out);
    }

    return 0;
}
