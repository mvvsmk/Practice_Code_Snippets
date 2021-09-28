 #include <iostream>

using namespace std;
int A[5];
int Front=-1;
int Rear=-1;
int len=5;

void enQueue()
{   
    int i=0;
    if( Rear==len-1 )
    {
        cout<<"Queue Overflow\n";
    }
    else if(Front==-1 && Rear==-1)
    {
        Front=0;
        Rear=0;
        cout<<"Enter number\n";
        cin>>i;
        A[Rear]=i;
    }
    else
    {
        Rear++;
        cout<<"Enter number\n";
        cin>>i;
        A[Rear]=i;
    }
}

void DeQueue()
{
    if(Front==-1 || Front > Rear)
    {
        cout<<"Queue Underflow\n";
    }
    else
    {
        cout<<"Element deleted from queue is : "<<A[Front]<<endl;
        Front++;
    }
}

void Print()
{
    if(Front==-1)
    {
        cout<<"Queue Underflow\n";
    }
    else
    {
        cout<<"Contents are\n";
        for(int i=Front; i<=Rear; i++)
        {
            cout<<A[i]<<endl;;
        }
    }
}

int main()
{
    char ch;
    do
    {
        cout<<"\n Enter choice:\n 1. Insert\n 2. Delete\n 3. Print \n 4. Exit\n";
        cin>>ch;
        switch(ch)
        {
            case '1':enQueue();break;
            case '2':DeQueue();break;
            case '3':Print();break;
            case '4':break;
            default : cout<<"Wrong Input\n";
        }
    } while (ch != '4' );

    return 0;  
}