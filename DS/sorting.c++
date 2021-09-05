#include <iostream>

using namespace std;

int Min_Term(int A[],int l)
{
    int i,min=0;
    min = A[0];
    for(i=0;i<l;i++)
    {
        if(min>=A[i])
        {
            min = A[i];
        }
    }
    return min;
}

int main()
{
    int A[5],i;
    cout<<"Enter 5 numbers\n";
    for(i=0;i<5;i++)
    {
        cin>>A[i];
    }
    cout<<Min_Term(A,5);
    cout<<endl;
    return 0;   
}
