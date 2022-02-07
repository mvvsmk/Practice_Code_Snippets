#include<iostream>
#include<cmath>

using namespace std;

long int s[100000],e[50000],o[50000];
long int n,k,a_k,c=1;

int check_n()
{
    float lol=log2(n);
    int r=lol;
    float z;
    z=lol-r;
    if(z==0.0)
        return 1;
    else
        return 0;
}

void rearrange_o()
{
    int c_e,c_o;
    c_e=0;
    c_o=0;
    for(int i=1;i<=n;i++)
    {
        if(i<=n/2)
            o[i-1]=s[i-1];
        else
            e[i - (n/2) -1]=s[i-1];
    }
    for(int i=1;i<=n;i++)
    {
        if((i%2) == 0)
        {
            s[i-1]=e[c_e];
            c_e++;
        }
        else
        {
            s[i-1]=o[c_o];
            c_o++;
        }
    }
}

void rearrange()
{
    int c_e,c_o;
    c_e=0;
    c_o=0;
    for(int i=0;i<n;i++)
    {
        if( ((i+1)%2) == 0)
        {
            e[c_e]=s[i];
            c_e++;
        }
        else
        {
            o[c_o]=s[i];
            c_o++;
        }
    }
    for(int i=1;i<=n;i++)
    {
        if(i<=n/2)
            s[i-1]=o[i-1];
        else
            s[i-1]=e[i - (n/2) -1];
    }
}

void make(long int n)
{
    for(int i=0;i<n;i++)
    {
        s[i] = i +1; 
    }
}

void calc()
{
    cin>>n>>k;
    make(n);
    int f = check_n();
    long int count;
    if(f == 1)
    {
        int lval=log2(n);
        a_k=k%lval;
        for(int count2 = 1;count2<=a_k;count2++)
        {
            rearrange();
        }
    }
    else
    {
        for(count = 1;count<=k;count++)
        {
            rearrange();
            if(s[1]==2 && s[2] == 3 && s[3] == 4 && s[4]==5)
            {
                c=count;
                a_k=k%c;
                if(a_k<c/2)
                {
                    for(int count2 = 1;count2<=a_k;count2++)
                    {      
                        rearrange();
                    }
                    break;
                }
                else
                {
                    a_k= c - a_k;
                    for(int count2 = 1;count2<=a_k;count2++)
                    {      
                        rearrange_o();
                    }
                    break;
                }    
                       
            }
        }
    }
    for(int i=0;i<n;i++)
    {
        cout<<s[i]<<" ";
    }
    cout<<endl;

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
}