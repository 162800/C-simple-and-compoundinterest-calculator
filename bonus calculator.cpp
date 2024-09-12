//program to detemine employee bonus
#include <iostream> 
using namespace std;

int main() {
    int salary, yearsofservice;
    cout << "ENTER salary " << endl;
    cin >> salary;
    
      cout << "ENTER years of service " << endl;
    cin >> yearsofservice;
    
     double bonus = 0.0;
     
    if (yearsofservice> 10){
        bonus = salary * 0.10;
        cout << "10% bonus earned"<< endl;
    }
    else if (yearsofservice> 6 && yearsofservice <10){
        bonus = salary * 0.08;
        cout<<"8% bonus earned"<<endl;
    }
    else{
        cout << "5% bonus earned" << endl;
        bonus =salary * 0.05;
    }
    cout << "bonus amount: " << bonus << endl;

    return 0;
}


