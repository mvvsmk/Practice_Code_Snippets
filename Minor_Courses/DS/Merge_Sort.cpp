#include <iostream>

using namespace std;

int T[20];

void merge (int A,int beg,int mid,int end)
{
	int Ac= beg;
	int Bc= mid;
	int Tc=0;
	int l=mid-1;
	while(Ac <= 1 and Bc <= end)
	{
		if(A[Ac] <= A[Bc])
		{
			T[Tc]=A[Ac];
			Tc++;
			Ac++;
		}
		else
		{
			T[Tc] = A[Bc];
			Tc++;
			Bc++;
		}
	}
	while ( Ac <= l)
	{
		T[Tc]= A[Ac];
		Tc++;
		Ac++;
	}
	while ( Bc<=l)
	{
		T[Tc]= A[Bc];
		Tc++;
		Bc++;
	}
	for(int i = beg; i<end; i++)
	{
		A[i]= T[i-beg];
	}
}


void merge_Sort(int A[],int begin,int end)
{
	if(begin >= end)
		return;
	int mid;
	mid = (begin + end )/2;
	merge_Sort(A,begin,mid);
	merge_Sort(A,mid+1,end);
	merge(A, begin,mid,end);
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
	int A[10];
	cout<<"Enter 10 elements\n";
	for(int j=0; j<10; j++)
	{
		cin>>A[j];
	}
	merge(A,0,10);
	print_Array(A,10);
	return 0;
}