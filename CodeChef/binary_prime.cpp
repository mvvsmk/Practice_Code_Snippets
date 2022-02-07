#include<iostream>
#include<sstream>

using namespace std;

string s;
int f=0;

void calc()
{
    cin>>s;
    int i,j,l;
    l = s.length();
    if(l == 1)
    {
        cout<<"No"<<endl;
        return;
    }
    if(s[0] == '0') 
    {
        for(i=0;i<l;i++)
        {
            if(s[i]!=s[0])
            {
                f++;
            }
        }
        if(f>=1)
        {
            f=0;
        }
        else
        {
            cout<<"No"<<endl;
            return;
        }
    }      
    if(s.find("11") != string::npos || s.find("10")!= string::npos)
    {
        f++;
    }
    if(f>=1)
    {
        cout<<"Yes"<<endl;
        return;
    }
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
