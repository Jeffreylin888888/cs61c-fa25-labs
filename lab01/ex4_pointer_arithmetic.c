#include <stdio.h>
#include <stdlib.h>

int main() {
  int some_array[4];
  printf("address of the start of the array: %p\n", (void*)some_array);
  int *ptr_to_idx_2 = some_array + 2;
  printf("address of index 2: %p\n", (void*)ptr_to_idx_2);
  *ptr_to_idx_2 = 10;
  printf("value at index 2: %d\n", *ptr_to_idx_2);
  return 0;
}
