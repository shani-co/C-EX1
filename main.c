#include "myMath.h"
#include <stdio.h>

int main() {
  double x;
  printf("Please insert number: ");
  scanf("%lf",&x);
  int int_x = x;
  float a1 = sub(add(Exp(int_x),Pow(x,3)),2);
  float a2 = add(mul(x, 3),mul(Pow(x,2), 2));
  float a3 = sub(div(mul(Pow(x,3),4),5),mul(x,2));

  printf("f(x) = e^x+x^3-2 at the spot %f is: %0.4f\n",x ,a1);
  printf("f(x) = 3x+2x^2 at the spot %f is: %0.4f\n",x ,a2);
  printf("f(x) = (4x^3)/5-2x at the spot %f is: %0.4f\n",x ,a3);
  return 0;
}
