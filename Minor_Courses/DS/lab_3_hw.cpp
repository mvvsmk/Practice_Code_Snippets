#include<iostream>

using namespace std;

int A[5];
int B[5];
int l=5;
int topA=-1;
int topB=-1;


void push()
{
    if(topA==l)
    {
        cout<<"Stack over flow\n";
    }
    else
    {   
        topA++;
        cout<<"Enter a number \n";
        cin>>A[topA];
    }        
}


void pop()
{
    if(topA==-1)
    {
        cout<<"Stack underflow \n";
    }
    else
    {
        topA--;
    }
}

void print(int B[],int top)
{   
    if(top==-1)
    {
        cout<<"Stack underflow \n";
    }
    else
    {
        for(int i=top;i>=0;i--)
        {
            cout<<B[i]<<endl;
        }
    }
}

void copy()
{
    if(topA==-1)
    {
        cout<<"Stack Underflow \n";
    }
    else
    {
        for(int i=topA;i>=0;i--)
        {   
            topB++;
            B[topB]=A[i];
            pop();
        }
    }
}
int main()
{
    char ch;
    do
    {
        cout<<"Enter choice:\n 1. Push\n 2. Pop\n 3. Print first Stack \n 4. Print Second Stack \n 5. Copy \n 6. Exit\n";
        cin>>ch;
        switch(ch)
        {
            case '1': push();break;
            case '2':pop();break;
            case '3':print(A,topA);break;
            case '4':print(B,topB);break;
            case '5': copy();break;
            case '6':break;
            default : cout<<"Wrong Input\n";
        }
    } while (ch != '6' );

    return 0;   
}