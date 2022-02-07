#include<iostream>
int main()
{
    int p[20], bt[20], wt[20], tat[20], i, k, n, temp;
    float wtavg, tatavg;

    std::cout<<"\nEnter the number of processes "<<std::endl;
    std::cin>>n;
    for (i = 0; i < n; i++)
    {
        p[i] = i;
        std::cout<<"Enter Burst Time for Process "<<i+1 <<" "<<std::endl;
        std::cin>>bt[i];
    }
    for (i = 0; i < n; i++)
        for (k = i + 1; k < n; k++)
            if (bt[i] > bt[k])
            {
                temp = bt[i];
                bt[i] = bt[k];
                bt[k] = temp;
                temp = p[i];
                p[i] = p[k];
                p[k] = temp;
            }
    wt[0] = wtavg = 0;
    tat[0] = tatavg = bt[0];
    for (i = 1; i < n; i++)
    {
        wt[i] = wt[i - 1] + bt[i - 1];
        tat[i] = tat[i - 1] + bt[i];
        wtavg = wtavg + wt[i];
        tatavg = tatavg + tat[i];
    }
    std::cout<<"\n\t PROCESS \tBURST TIME \t WAITING TIME\t TURNAROUND TIME\n";
    for (i = 0; i < n; i++)
    std::cout<<"\n\t P"<<p[i]+1<<"\t\t "<<bt[i]<<"\t\t"<<wt[i]<<"\t\t"<<tat[i];
    std::cout<<"\nAverage Waiting Time "<< wtavg/n;
    std::cout<<"\nAverage Turnaround Time "<<tatavg/n;
}
