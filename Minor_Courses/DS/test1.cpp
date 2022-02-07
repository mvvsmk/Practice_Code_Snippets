#include <iostream>
using namespace std;

struct node
{
    char ch;
    node* next;
}*head;

bool check(char ch)
{
    int a=0;
    if(head==NULL)
    {
        return false;
    }
    else
    {
        node *t=head;
        do
        {
            t=t->next;
            if(t->ch==ch)
            {
                a=1;
                return true;
            }
        } while (t->next!=NULL);
        
        while(t!=NULL)
        {
            
        }
    }
    if(a==0)
    {
        return false;
    }
}
void ins(char c)
{    
    node *n= new node;
    n->ch=c;
    n->next=NULL;
    if(head==NULL)
    {
        head=n;
        cout<<"abc";
    }
    else
    {
        node *t=head;
        while(t->next!=NULL)
        {
            t=t->next;
        }
        t->next=n;
        cout<<"bcd";
    }
}

int main()
{
    string ch;
    cin>>ch;
    int l=ch.length();
    for(int i=0;i<l;i++)
    {
        cout<<"x"; //here
        if(check(ch[i]))
        {
            cout<<"Present";
        }
        else
        {
            cout<<"No";
            ins(ch[i]);
        }
    }
}