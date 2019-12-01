#include "myMath.h"

  double Pow(double x, int y){
    double ans = 1;
    if(y == 0){
      return 1;
    }
    else if(y > 0){
      for(int i = 0; i < y; i++){
        ans = ans * x;
      }
    }
    else{
      for(int i = 0; i > y; i--){
        ans = ans / x;
      }
    }
    return ans;
  }

  double Exp(int x) {
	   return Pow(2.71828, x);
   }
