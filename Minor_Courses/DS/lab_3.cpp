#include<iostream>

using namespace std;

int A[5];
int l=5;
int top=-1;


void push()
{
    if(top==l)
    {
        cout<<"Stack over flow\n";
    }
    else
    {   
        top++;
        cout<<"Enter a number \n";
        cin>>A[top];
    }        
}


void pop()
{
    if(top==-1)
    {
        cout<<"Stack underflow \n";
    }
    else
    {
        top--;
    }
}

void print()
{   
    if(top==-1)
    {
        cout<<"Stack underflow \n";
    }
    else
    {
        for(int i=top;i>=0;i--)
        {
            cout<<A[i]<<endl;
        }
    }
}

int main()
{
    char ch;
    do
    {
        cout<<"Enter choice:\n 1. Push\n 2. Pop\n 3. Print\n 4.Exit\n";
        cin>>ch;
        switch(ch)
        {
            case '1': push();break;
            case '2':pop();break;
            case '3':print();break;
            case '4':break;
            default : cout<<"Wrong Input\n";
        }
    } while (ch != '4' );

    return 0;   
}