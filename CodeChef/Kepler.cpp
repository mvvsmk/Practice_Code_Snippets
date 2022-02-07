#include<iostream>

using namespace std;

void calc()
{
    float t1,t2;
    float r1,r2;
    cin>>t1>>t2>>r1>>r2;
    float k1,k2;
    k1=(t1*t1)/(r1*r1*r1);
    k2=(t2*t2)/(r2*r2*r2);
    if(k1 == k2 )
        cout<<"Yes"<<endl;
    else
        cout<<"No"<<endl;
}

int main()
{
    int t;
    cin>>t;
    while(t)
    {
        calc();
        t--;
    }
    return 0;
}