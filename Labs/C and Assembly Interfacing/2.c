#include <stdio.h>

extern int reverse(char *str);

extern char new_string [50];

int main()
{
    char reverse_string[]="rithesh";
    printf("input_string: %s\n",reverse_string);

    int length=reverse(reverse_string);
    printf("reverse_string: %s\n",new_string);
    printf("length: %d\n",length);
}
