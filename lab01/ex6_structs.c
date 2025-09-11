#include <stdio.h>
#include <string.h>
struct Student { int id; char name[32]; };
int main() {
  struct Student s; s.id = 61; strcpy(s.name, "Ada");
  printf("Student id: %d, name: %s\n", s.id, s.name);
  struct Student *sp = &s; sp->id += 1; strcpy(sp->name, "Grace");
  printf("Student id: %d, name: %s\n", sp->id, sp->name);
  return 0;
}
