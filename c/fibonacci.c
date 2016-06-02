#include <stdio.h>

int main(){
  int count, i;
  int a = 1;
  int b = 0;

  printf("How many numbers you want?\n:");
  scanf("%d", &count);

  printf("Fibonacci sequence: %d, %d", b, a);

  for(i = 0; i < count; i++){
    a += b;
    b = a - b;
    printf(", %d", a);
  }

  printf("\n");
  return 0;
}