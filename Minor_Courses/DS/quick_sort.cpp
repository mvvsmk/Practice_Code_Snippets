#include<iostream>
#include<string.h>

using namespace std;

void interchange(int a[],int n1,int n2) 		//int
{
	int temp;
	temp=a[n1];
	a[n1]=a[n2];
	a[n2]=temp;
}

void interchange(char a[],int n1,int n2) 	// char
{
	char temp;
	temp=a[n1];
	a[n1]=a[n2];
	a[n2]=temp;
}

void interchange(char a[][10],int n1,int n2) // str
{
	char temp[10];
	strcpy(temp,a[n1]);
	strcpy(a[n1],a[n2]);
	strcpy(a[n2],temp);
}

int partition (int arr[], int p, int r) //int part
{ 
    int pivot = arr[r]; 
    int i = (p - 1); 
  
    for (int j = p; j <= r - 1; j++) 
    { 

        if (arr[j] < pivot) 
        { 
            i++; 
            interchange(arr,i,j); 
        } 
    } 
    interchange(arr,i + 1, r); 
    return (i + 1); 
} 

int partition (char arr[], int p, int r)  // char part
{ 
    char pivot = arr[r]; 
    int i = (p - 1); 
  
    for (int j = p; j <= r - 1; j++) 
    { 

        if (arr[j] < pivot) 
        { 
            i++; 
            interchange(arr,i,j); 
        } 
    } 
    interchange(arr,i + 1, r); 
    return (i + 1); 
} 

int partition (char arr[][10], int p, int r) //str part
{ 
	char pivot[10];
    strcpy(pivot,arr[r]);
    int i = (p - 1); 
  
    for (int j = p; j <= r - 1; j++) 
    { 

        if (strcmp(pivot,arr[j]) > 0) 
        { 
            i++; 
            interchange(arr,i,j); 
        } 
    } 
    interchange(arr,i + 1, r); 
    return (i + 1); 
} 

void QuickSort_Int(int arr[], int p, int r)  // sort int
{ 
    if (p < r) 
    { 
        int pivot = partition(arr, p, r); 
        QuickSort_Int(arr, p, pivot - 1); 
        QuickSort_Int(arr, pivot + 1, r); 
    } 
} 

void QuickSort_Char(char arr[], int p, int r) //sort char
{ 
    if (p < r) 
    { 
        int pivot = partition(arr, p, r); 
        QuickSort_Char(arr, p, pivot - 1); 
        QuickSort_Char(arr, pivot + 1, r); 
    } 
} 

void QuickSort_Str(char arr[][10], int p, int r) //sort str
{ 
    if (p < r) 
    { 
        int pivot = partition(arr, p, r); 
        QuickSort_Str(arr, p, pivot - 1); 
        QuickSort_Str(arr, pivot + 1, r); 
    } 
} 


int main()
{
	int A[5],n=5,nc=10,ns1=5,ns2=10;
	char str[10];
	char str2[5][10];
	char ch=0;
	do
	{

		cout<<"Menu:\n 1)Int \n 2)Char \n 3)String \n Enter your choice\n";
		cin>>ch;
		switch(ch)
		{
			case '1': cout<<"Enter"<<n<<" numbers\n";
				for(int i=0;i<n;i++)
				{
					cin>>A[i];
				}
				QuickSort_Int(A,0,n-1);
				cout<<"Sorted array is:"<<endl;
				for(int i=0;i<n;i++)
				{
					cout<<A[i]<<endl;
				}
				break;
			case '2':
				cout<<"Enter 5 letters";
				for(int i=0;i<n;i++)
				{
					cin>>str[i];
				}
				QuickSort_Char(str,0,nc-1);
				for(int i=0;i<n;i++)
				{
					cout<<str[i];
				}
				break;
			case '3':
				cout<<"Enter 5 words"<<endl;
				for(int i=0;i<ns1;i++)
				{
					cin>>str2[i];
				}
				QuickSort_Str(str2,0,ns1-1);
				cout<<"Sorted Array is"<<endl;
				for(int i=0;i<ns1;i++)
				{
					cout<<str2[i]<<endl;
				}
				break;
			case '4': exit(0);
			break;
			default:"Wrong Input";
		}
	}while(ch!=4);
	return 0;
}

