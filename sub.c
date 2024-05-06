#include<stdio.h>
#include<stdlib.h>
int subs(int a, int b){
    return a-b;
}
int main(){
    int aa=10;
    int bb=5;
    char *c="\x1b[43;37m%d....\n";
    printf(c,subs(aa,bb));
    return 0;

}
