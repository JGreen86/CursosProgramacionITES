#include <iostream>
using namespace std;

struct ejemplo {
  int x;
  double z;
};

int main() {

  struct ejemplo A;
  A.x = 5;
  A.z = 3.5;
  cout<<"A.x "<<A.x<<endl;
  cout<<"A.z "<<A.z<<endl;
  struct ejemplo *B;
  B = &A;
  cout<<"(*B).x "<<(*B).x<<endl;
  cout<<"(*B).z "<<(*B).z<<endl;
  cout<<"B->x "<<B->x<<endl;
  cout<<"B->z "<<B->z<<endl;

  /*int y[] = {1,2,3,4,5,6,7,8,9,10};
  int *py = &y[0];

  for(int i=0; i<10; i++) {
    cout<<"y posicion "<<i<<" = "<<*py<<endl;
    py++;
  }


  int x = 5;
  int *px = &x;
  *px = 7;

  cout<<"x = "<<x<<endl;
  cout<<"*px = "<<*px<<endl;*/

  return 0;
}
