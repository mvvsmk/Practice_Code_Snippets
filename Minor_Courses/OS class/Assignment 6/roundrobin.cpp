#include <iostream>
int main()
{
    int i, j, n, burst[10], wait[10], tat[10], t, ct[10], max;
    float awt = 0, att = 0, temp = 0;

    std::cout<<"Enter the no of processes ";
    std::cin>>n;    
    for (i = 0; i < n; i++)
    {
        std::cout<<"\nEnter Burst Time for process "<<i+1<<std::endl;
        std::cin>> burst[i];
        ct[i] = burst[i];
    }
    std::cout<<"Enter the size of time \n";
    std::cin>>t;
    max = burst[0];
    for (i = 1; i < n; i++)
        if (max < burst[i])
            max = burst[i];
    for (j = 0; j < (max / t) + 1; j++)
        for (i = 0; i < n; i++)
            if (burst[i] != 0)
                if (burst[i] <= t)
                {
                    tat[i] = temp + burst[i];
                    temp = temp + burst[i];
                    burst[i] = 0;
                }
                else
                {
                    burst[i] = burst[i] - t;
                    temp = temp + t;
                }
    for (i = 0; i < n; i++)
    {
        wait[i] = tat[i] - ct[i];
        att += tat[i];

        awt += wait[i];
    }
    std::cout<<"The Average Turnaround time is "<<att/n<<std::endl;
    std::cout<<"The Average Waiting time is "<<awt/n<<std::endl;
    std::cout<<"\n\tPROCESS\t BURST TIME \t WAITING TIME\tTURNAROUND TIME\n";
    printf("\n\tPROCESS\t BURST TIME \t WAITING TIME\tTURNAROUND TIME\n");
    for (i = 0; i < n; i++)
        std::cout<<"\t"<< i+1 <<" \t "<<ct[i]<<" \t\t "<<wait[i]<<" \t\t "<<tat[i]<<" \n";
}
