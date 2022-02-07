#include<iostream>

using namespace std;

long int pow(int a,int b)
{
    int res=1;
    for(int i=0;i<b;i++)
    {
        res *= a;
    }
    return res;
}

void calc()
{
    long int N,D,I,N1;
    cin>>N>>D;
    I=1;
    N1=N;
    if(N > 1024 && D > 10)
    {
        D = D - 10;
        I = 1024;
        if(D < 11)
        {    
            I = I * pow(3,D);
            N = N - I;
        }
        else
        N = -1;
    }
    else
    {
        I = I * pow(2,D);
        N = N - I;
    }
    if(N<0 && D>0)
        cout<<N1<<endl;
    else
        cout<<I<<endl;
}

int main ()
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