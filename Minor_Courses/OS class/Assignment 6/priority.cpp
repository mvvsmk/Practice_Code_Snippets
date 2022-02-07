#include <iostream>
int main()
{
    int p[20], burst[20], priority[20], wait_time[20], tat[20], i, k, n, temp;
    float wait_avg, tatavg;
    std::cout << "Enter the number of processes"<< std :: endl;
    std :: cin >> n;
    for (i = 0; i < n; i++)
    {
        p[i] = i;
        std::cout << "Enter the Burst Time & priority of Process "<<i<< std::endl;
        std::cin >> burst[i] >> priority[i] ;
    }
    for (i = 0; i < n; i++)
    {   
        for (k = i + 1; k < n; k++)
        {
            if (priority[i] > priority[k])
            {
                temp = p[i];
                p[i] = p[k];
                p[k] = temp;
                temp = burst[i];
                burst[i] = burst[k];
                burst[k] = temp;
                temp = priority[i];
                priority[i] = priority[k];
                priority[k] = temp;
            }
        } 
    }
    wait_avg = wait_time[0] = 0;
    tatavg = tat[0] = burst[0];

    for (i = 1; i < n; i++)
    {
        wait_time[i] = wait_time[i - 1] + burst[i - 1];
        tat[i] = tat[i - 1] + burst[i];
        wait_avg = wait_avg + wait_time[i];
        tatavg = tatavg + tat[i];
    }
    std::cout<<"PROCESS\t\t PRIORITY\tBURST TIME\tWAITING TIME\tTURNAROUND TIME"<<std::endl;
    for (i = 0; i < n; i++)
    {
        std::cout<<p[i]<<" \t\t "<<priority[i]<<" \t\t "<<burst[i]<<" \t\t "<<wait_time[i]<<" \t\t "<<tat[i]<<std::endl;
    }
    std::cout<<"Average Waiting Time is "<<wait_avg/n<<std::endl;
    std::cout<<"Average Turnaround Time is "<<tatavg/n<<std::endl;
    return 0;
}
