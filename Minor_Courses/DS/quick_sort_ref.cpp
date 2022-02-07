#include<iostream>
#include<string.h>

using namespace std;


void interchange(char a[][10],int n1,int n2) // str
{
	char temp[10];
	strcpy(temp,a[n1]);
	strcpy(a[n1],a[n2]);
	strcpy(a[n2],temp);
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
	int ns1 = 5, ns2 = 10;
	char str2[5][10];
	char ch = 0;

	cout << "Enter 5 words" << endl;
	for (int i = 0; i < ns1; i++)
	{
		cin >> str2[i];
	}
	QuickSort_Str(str2, 0, ns1 - 1);
	cout << "\nSorted Array is\n" << endl;
	for (int i = 0; i < ns1; i++)
	{
		cout << str2[i] << endl;
	}
	return 0;
}
