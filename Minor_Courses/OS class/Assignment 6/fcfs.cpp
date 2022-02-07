#include <iostream>
int main()
{
    int burst[20], wait[20], tat[20], i, n;
    float wtavg, tatavg;
    std::cout << "Enter the number of processes ";
    std::cin >> n;
    for (i = 0; i < n; i++)
    {
        std::cout<<"Enter Burst Time for Process "<< i+1 <<std::endl; 
        std::cin>>burst[i];
    }
    wait[0] = wtavg = 0;
    tat[0] = tatavg = burst[0];
    for (i = 1; i < n; i++)
    {
        wait[i] = wait[i - 1] + burst[i - 1];
        tat[i] = tat[i - 1] + burst[i];
        wtavg = wtavg + wait[i];
        tatavg = tatavg + tat[i];
    }
    std::cout<<"\t PROCESS \tBURST TIME \t WAITING TIME\t TURNAROUND TIME\n";
    for (i = 0; i < n; i++)
        std::cout<<"\n\t P"<<i+1<<" \t\t"<<burst[i]<<" \t\t"<<wait[i]<<"\t\t"<<tat[i];
    std::cout<<"\nAverage Waiting Time "<< wtavg/n;
    std::cout<<"\nAverage Turnaround Time "<<tatavg/n;
}
