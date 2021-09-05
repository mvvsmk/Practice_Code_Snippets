#include <iostream>

using namespace std;

void traversal(int A[],int l)
{
    int i;
    cout<<"The elements of the array are \n";
    for(i=0;i<l;i++)
    {
        cout<<A[i]<<endl;
    }
}

int insertion(int A[],int l)
{
    int i,num,j,temp,temp2;
    if(l==10)
    {
        cout<<"Array overflow , insetion can't be done\n";
        return 10;
    }
    else
    {
        cout<<"Enter the number you want to insert\n";
        cin>>num;
        cout<<"Enter the index you want to enter it in\n";
        cin>>j;
        for(i=0;i<l;i++)
        {
            if(i==j)
            {
                temp=A[i];
                A[i]=num;
                for(i++;i<=l;i++)
                {
                    temp2=A[i];
                    A[i]=temp;
                    temp=temp2;
                }
                break;
            }
        }
        cout<<"Element successfully incerted at index "<<j<<endl;
        return l+1;
    }
}

int del(int A[],int l)
{
    int i,j;
    if(l==0)
    {
        cout<<"No elemnts in the array\n";
        return 0;
    }
    else
    {
        cout<<"Enter the index no of the element you want to delete\n";
        cin>>j;
        for(int i=0;i<l;i++)
        {
            if(i==j)
            {
                for(i=j;i<l;i++)
                {
                    A[i]=A[i+1];
                }
                break;
            }
        }
        return l-1;
    }
}

void search(int A[],int l)
{
    int i,num,flag=0;
    cout<<"Enter the element you want to search for in the array\n";
    cin>>num;
    for(i=0;i<l;i++)
    {
        if(num==A[i])
            cout<<"Element found at "<<i<<endl;
    }
    if(flag==0)
        cout<<"Element not found\n";
}

void sort(int A[],int l)
{
    int i,j,temp;
    for(i=0;i<l-1;i++)
    {
        for(j=i+1;j<l;j++)
        {
            if(A[i]>A[j])
            {
                temp=A[i];
                A[i]=A[j];
                A[j]=temp;
            }
        }
    }

}

int main()
{
    int A[10],l;
    char ch='a';
    cout<<"Enter the max leghth of array (max 10)\n";
    cin>>l;
    cout<<"Enter "<<l<<" numbers\n";
    for(int i=0;i<l;i++)
    {
        cin>>A[i];
    }
    do
    {
        cout<<"\n1. Traverse \n2. Insertion \n3. Deletion \n4. Search a Number in the array \n5. Sorting (bubble sort) \n6.Exit \n Enter your choice\n";
        cin>>ch;
        switch(ch)
        {
            case '1': traversal(A,l); break;
            case '2': l = insertion(A,l); break;
            case '3': l = del(A,l); break;
            case '4': search(A,l);break;
            case '5': sort(A,l);break;
            case '6': break;
            default:cout<<"Wrong input\n";
        }
    } while (ch!='6');

    return 0;
}