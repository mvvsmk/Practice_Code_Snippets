#include<iostream>

using namespace std;


int main()
{
    int i,j,A[3][3],sum=0,r=3,c=3,maxr=0,maxc[3];
    cout<<"Enter 9 elements\n";
    for(i=0;i<r;i++)
    {   

        for(j=0;j<c;j++)
        {
            cin>>A[i][j];
            sum+=A[i][j];                    
            if(j==0)
            {
                maxr=A[i][j];
            }
            else if(maxr<A[i][j])
            {
                maxr=A[i][j];
            }
            if(i==0)
            {
                maxc[j]=A[i][j];
            }
            else if(maxc[j]<A[i][j])
            {
                maxc[j]=A[i][j];
            }
        }
        cout<<"Sum of row "<<i+1<<" is : "<<sum<<endl;
        cout<<"Max value of row"<<i+1<<" is :"<<maxr<<endl;
        sum=0;
    }

    for(i=0;i<3;i++)
    {
        cout<<"Max value of coloum"<<i+1<<" is :"<<maxc[i]<<endl;
    }

    for(i=0;i<r;i++)
    {   

        for(j=0;j<c;j++)
        {
            cout<<" "<<A[i][j];
        }
        cout<<endl;
    }

    return 0;
}
