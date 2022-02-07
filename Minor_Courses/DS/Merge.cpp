#include <iostream>

using namespace std;

void merge(int L[],int n1,int R[],int n2,int A[])
{
	int i=0,j=0,k=0;
	for(;i<n1 and j<n2;)
	{
		if( L[i] <= R[j] )
		{
			A[k] = L[i];
			i++;
		}
		else
		{
			A[k] = R[j];
			j++;
		}
		k++;
	}
	while (i<n1)
	{
		A[k]=L[i];
		i++;
		k++;
	}
	while (j<n2)
	{
		A[k]=R[j];
		j++;
		k++;
	}
}

void print_Array(int A[],int n)
{
	cout<<"Contents of the Array are:";
	for(int i =0; i<n;i++)
	{
		cout<< A[i]<<endl;
	}
}

int main()
{
	int A[]={2,3,7,8,13};
	int B[]= {1,7,9,15,18,30};
	int C[13];
	int n1=5;
	int n2=6;
	merge(A,n1,B,n2,C);
	print_Array(C,n1+n2);
	//cout<<"Enter 10 elements\n";
	/*for(int j=0; j<10; j++)
	{
		cin>>A[j];
	}*/
	return 0;
}
