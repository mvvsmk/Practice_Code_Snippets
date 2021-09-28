#include <iostream>
using namespace std;

int A[5];
int Front = -1, Rear = -1, n=5;

void Insert() 
{
    int val;
   if ((Front == 0 && Rear == n-1) || (Front == Rear+1)) 
   {
      cout<<"Queue Overflow \n";
      return;
   }
    cout<<"Enter Number: "<<endl;
    cin>>val;
   if (Front == -1) 
   {
      Front = 0;
      Rear = 0;
   } 
   else 
   {
      if (Front == n-1)
        Front = 0;
      else
        Front = Front + 1;
   }
    A[Rear] = val ;
}
void Delete() 
{
   if (Front == -1) 
   {
      cout<<"Queue Underflow\n";
      return ;
   }
   cout<<"Element deleted from queue is : "<<A[Front]<<endl;

   if (Front == Rear) 
   {
      Front = -1;
      Rear = -1;
   } 
   else 
   {
      if (Front == n-1)
        Front = 0;
      else
        Front = Front + 1;
   }
}

void Print() 
{
   int F = Front, R = Rear;
   if (Front == -1) 
   {
      cout<<"Queue Empty"<<endl;
      return;
   }
   cout<<"Queue Contents are :\n";
   if (F <= R) 
   {
      while (F <= R)
      {
         cout<<A[F]<<endl;
         F++;
      }
   } 
   else 
   {
      while (F <= n-1) 
      {
         cout<<A[F]<<endl;
         F++;
      }
      F = 0;
      while (F <= R) {
         cout<<A[F]<<endl;
         F++;
      }
   }
   cout<<endl;
}

int main() {
    char ch;
    int val;
    do
    {
        cout<<"Enter choice:\n 1. Insert\n 2. Delete\n 3. Print \n 4. Exit\n";
        cin>>ch;
        switch(ch)
        {
            case '1':Insert();break;
            case '2':Delete();break;
            case '3':Print();break;
            case '4':break;
            default : cout<<"Wrong Input\n";
        }
    } while (ch != '4' );

    return 0;
}