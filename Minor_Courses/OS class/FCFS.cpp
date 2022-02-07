#include<iostream>

int main()
{
    
    int burst[15], wait[15] ,turn_around[15], i, n;
    float wait_avg,turn_avg;
    std::cout<<"\n Enter the number of processes (15 max) "<<std::endl;
    std::cin >> n;
    for(i=0;i<n;i++)
    {
        std::cout<<"Enter Burst Time for "<<i+1<<" process\n";
        std::cin>>burst[i];
    }
    wait[0] = wait_avg = 0;
    turn_around[0] = turn_avg = burst [0];
    for(i=0;i<n;i++)
    {
        wait[i] = wait[i-1] + burst[i-1];
        turn_around[i] = turn_around[i-1] + burst[i];
        wait_avg = wait_avg + wait[i];
        turn_avg = turn_avg+ turn_around[i];
    }
    std::cout<<"\n PROCESS \t BURST TIME \t WAITING TIME \t TURN_AROUND TIME\n";
    for (i=0;i<n;i++)
    {
        std::cout<<"\n \t P"<<i+1<<" \t\t "<<burst[i]<<" \t\t "<<wait[i]<<" \t\t "<<turn_around[i];
    }    
    std::cout<<"Average Wait time --"<<wait_avg;
    std::cout<<"Average Turnaround --"<<turn_avg;
}