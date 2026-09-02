#include <stdio.h>
#include <stdlib.h>
#include <klee/klee.h>
#include <setjmp.h>
 
struct Student {
  int id;
  int age;
  char* name;
};
 
void function(struct Student* s, int* b) {
  int a = s->age;
  s->id = a + 20;
  *b = 300;
  s->name[10] = (char)s->id;
  /*
  if (s->id > 10) {
    if (s->age < 20) {
      printf("Welcome %s!!!\n", s->name);
    } else {
      printf("Welcome %s!!\n", s->name);
    }
  }
  */
}
 
int main(void) {
  // Fix this now
  struct Student s;
  s.name = (char*)malloc(20 * sizeof(char));
  klee_make_symbolic(s.name, 100, "name");
  klee_make_symbolic(&s, sizeof(s), "student");
  int b;
  function(&s, &b);
//  klee_print_expr("Symbolic value of s.id:", (s.id));
  klee_print_expr("Symbolic value of s.name[10]", s.name[10]);
  //klee_print_expr("Symbolic value of s.age: ", (s.age));
 
  //klee_print_expr("Symbolic value of b: ", b);
}