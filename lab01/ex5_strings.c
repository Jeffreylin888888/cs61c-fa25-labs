#include <stdio.h>
#include <string.h>
int main() {
  const char *src = "CS61C";
  char dst[16];
  strcpy(dst, src);
  printf("src: %s (len=%zu)\n", src, strlen(src));
  printf("dst: %s (len=%zu)\n", dst, strlen(dst));
  dst[0] = 'c';
  printf("mutated dst: %s (len=%zu)\n", dst, strlen(dst));
  return 0;
}
