#include<iostream>
#include<iomanip>

using namespace std;

void code ()
{
    float Account_Balance;
    int Withdrawl_Amount;
    cin>>Withdrawl_Amount>>Account_Balance;
    if(Withdrawl_Amount % 5 == 0 && (Withdrawl_Amount + 0.5) < Account_Balance )
    {
        cout << setprecision (2) << fixed << Account_Balance - (Withdrawl_Amount + 0.5) << endl;
    }
    else
    {
        cout << setprecision (2) << fixed  << Account_Balance << endl;
    }
}

int main()
{
    code();
    return 0;
}