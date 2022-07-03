   clear all
clc
%Variables={'x_1','x_2','s_1','s_2','A_2','A_3','sol'};
Variables={'x_1','x_2','x_3','s_1','s_2','A_1','A_2','sol'};
OVariables={'x_1','x_2','x_3','s_1','s_2','sol'};
OrigC=[-7.5 3 0 0 0  -1 -1 0]
%OrigC=[-4 -5 0 0 -1 -1 0]
%Info=[3 1 1 0 0 0 27; 3 2 0 -1 1 0 3; 5 5 0 0 0 1 60]
Info =  [3 -1 -1 -1 0 1 0 3; 1 -1 1 0 -1 0 1 2]
%BV=[3 5 6]
BV = [6 7];
%PHASE-1
fprintf('********** PHASE-1 ********** \n')
Cost=[0 0 0 0 0 -1 -1 0]
A=Info;
StartBV=find(Cost<0);
[BFS,A]=simp(A,BV,Cost,Variables);
%PHASE-2
fprintf('********** PHASE-2 ********** \n')
A(:,StartBV)=[]; %Removing Artificial var by giving them empty value
OrigC(:,StartBV)=[]; %Removing Artificial var cost by giving them empty value
[OptBFS, OptA]=simp(A,BFS,OrigC,OVariables);
FINAL_BFS=zeros(1,size(A,2));
FINAL_BFS(OptBFS)=OptA(:,end);
FINAL_BFS(end)=sum(FINAL_BFS.*OrigC);
OptimalBFS= array2table(FINAL_BFS);
OptimalBFS.Properties.VariableNames(1:size(OptimalBFS,2))=OVariables
