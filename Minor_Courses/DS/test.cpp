// #include<iostream>

// using namespace std;

// int count=0;
// int yr[4];
// int i;

// int main(int n ,char **argv)
// {
//     int flag=0;
//     if(count==0)
//     {
//         cin>>n;
//         n++;
//     }
//     for(i=0; i<4; i++)
//     {
//         if(n/10!=0)
//         {
//             yr[i]=n%10;
//         }
//     }
//     for(i=1;i<4;i++)
//     {
//         if(yr[i]==yr[0])
//             {flag++;}
//     }
//     for(i=2;i<4;i++)
//     {
//         if(yr[i]==yr[1])
//             {flag++;}
//     }
//     for(i=3;i<4;i++)
//     {
//         if(yr[i]==yr[2])
//             {flag++;}
//     }
//     if(flag==0)
//     {
//         cout<<n;
//         return 0;
//     }
//     main(n+1, argv);
//     count++;
// }
#include<iostream>
using namespace std;

int count=0;
int yr[4];
int i;

int find(int n=1000)
{
    int flag=0;
    if(count==0)
    {
        cin>>n;
        n++;
    }
    for(i=0; i<4; i++)
    {
        if(n/10!=0)
        {
            yr[i]=n%10;
        }
    }
    for(i=1;i<4;i++)
    {
        if(yr[i]==yr[0])
            {flag++;}
    }
    for(i=2;i<4;i++)
    {
        if(yr[i]==yr[1])
            {flag++;}
    }
    for(i=3;i<4;i++)
    {
        if(yr[i]==yr[2])
            {flag++;}
    }
    if(flag==0)
    {
        cout<<n;
        return 0;
    }
    find(n+1);
    count++;
}

int main()
{
    find();
    return 0;
} 