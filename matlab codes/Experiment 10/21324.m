format short
clc
clear
%Input parameters
C=[1 2];
Info=[-1 1;1 1];
B=[1; 2];
s=eye(size(Info,1));
A=[Info s B];
NoOfVars=2;
Cost=[1 2 0 0 0];
%[Cost; A]
%Constraint BV
BV=NoOfVars+1:size(A,2)-1;
%Calculate Zj-Cj
ZjCj=Cost(BV)*A-Cost;
%Print Table
Zcj=[ZjCj;A];
Table1=array2table(Zcj);
Table1.Properties.VariableNames(1:size(Zcj,2))={'x_1','x_2','s_1','s_2','Sol'}
RUN=true;
while RUN
 %check if any negative value is there
 if any(ZjCj<0)
     fprintf('The current BFS if not optimal. \n')
 disp('Old basic variable (BV)= ');
 disp(BV)
 %Finding entering variable
 ZC=ZjCj(1:end-1);
 [EnterCol,PvtCol]=min(ZC);
 fprintf('The minimum element in Zj-Cj row is %d corresponding to the column %d \n',EnterCol,PvtCol)
 fprintf('Entering variable is %d \n',PvtCol);
 %Finding the leaving variable
 sol=A(:,end);
 Column=A(:,PvtCol);
 if all(Column<=0)
     error('LPP is UNBOUNDED. All entries <=0 in column %d',PvtCol);
 else
 for i=1:size(Column,1)
     if Column(i)>0
 ratio(i)=sol(i)./Column(i);
     else
         ratio(i)=inf;
     end
 end
 %Finding the minimum ratio
 [Minratio, pvtRow]=min(ratio);
 fprintf('Minimum ratio corresponding to PIVOT ROW is %d \n',pvtRow);
fprintf('Leaving variable is %d \n',BV(pvtRow));
 end 
 BV(pvtRow)=PvtCol;
 disp('New basic variables (BV)=');
 disp(BV)
 %Pivot key
 PvtKey=A(pvtRow,PvtCol);
 %Update table for the next iteration
 A(pvtRow,:)=A(pvtRow,:)./PvtKey;
 for i=1:size(A,1)
     if i~=pvtRow
 A(i,:)=A(i,:)-A(i,PvtCol).*A(pvtRow,:);
     end
 end
  ZjCj= ZjCj- ZjCj(PvtCol).*A(pvtRow,:);
  %For prinitng purpose
  Zcj=[ZjCj; A];
  Table2=array2table(Zcj);
  Table2.Properties.VariableNames(1:size(Zcj,2))={'x _1','x_2','s_1','s_2','Sol'}

 BFS=zeros(1,size(A,2));
 BFS(BV)=A(:,end);
 BFS(end)=sum(BFS.*Cost);
 Current_BFS=array2table(BFS);
 Current_BFS.Properties.VariableNames(1:size(Zcj,2))={'x _1','x_2','s_1','s_2','Sol'}
 else
     RUN=false;
     disp('Optimal solution reached')
 end
end
















































%% 2 phase
clc
clear
%Input parameters
vars={'x1','x2','s1','s2','A1','A2','Sol'};
Ovars={'x1','x2','s1','s2','Sol'}; %O=Optimal
Origc=[3 5 0 0 -1 -1 0];
Info=[1 3 -1 0 1 0 3;1 1 0 -1 0 1 2];
BV=[6 7];
%Step 1
cost=[0 0 0 0 -1 -1 0];
A=Info;
startBV=find(cost<0);
%Compute Zj-Cj
ZjCj=cost(BV)*A-cost;
InitialTable=array2table([ZjCj;A]);
InitialTable.Properties.VariableNames(1:size(A,2))=vars
RUN=true;
while RUN
ZC=ZjCj(1,1:end-1);
if any(ZC<0)     %Check if any negative value is there
    fprintf('The current BFS is not optimal. \n')
    %Entering variable
    [EnterCol pc]=min(ZC);
    fprintf('Entering column= %d \n',pc)
      %Leaving variable
      sol=A(:,end);
      Column=A(:,pc);
      if Column<0
          fprintf('Unbounded solution \n')
      else
          for i=1:size(A,1)
              if Column(1)>0
                  ratio(i)=sol(i)./Column(i);
              else
                  ratio(i)=inf;
              end
          end
      end
     %Finding the min ratio
     [Minratio, pvrow]=min(ratio);
     fprintf('Leaving row=%d \n',pvrow);
end
          %Update the BFS
          BV(pvrow)=pc;
          %Pivot key
          pvtkey=A(pvrow,pc);
     %Update the entries
     A(pvrow,:)=A(pvrow,:)./pvtkey;
     for i=1:size(A,1)
         if i~=pvrow
             A(i,:)=A(i,:)-A(i,pc).*A(pvrow,:);
         end
     end
     ZjCj=ZjCj-ZjCj(pc).*A(pvrow,:);
    %Print
    ZCj=[ZjCj;A];
    table=array2table(ZCj);
    table.Properties.VariableNames(1:size(ZCj,2))=vars
    
    BFS(BV)=A(:,end);
   
        RUN=false;
    fprintf('Optimal solution is obtained \n')
    BFS=BV;
end










































%% BFS
clc;                                
clear;
%Input parameters
A= [2 -1 3 1;3  4 1 2];
B=[5;6];
Z=[3,1,4,0];
sol=[];
%No. of constraints & variables
m=size(A,1); %No of Constrains = size of column of A
n=size(A,2); %No of Variables = size of row of A
%Compute ncm
if n>m   
    %Total no. of basic solution
 pairs = nchoosek(n,m); % nCr paring combination(only work when n is greater than m) 
 %Pairs of basic solution
 comb = nchoosek(1:n,m); %print combination from 1 to n of m varibles
%Construct basaic solution...default solution is zero
 for i=1:pairs
     y=zeros(n,1);
     A1=A(:,comb(i,:));
     X1= inv(A1)*B
     %Check feasibility condition
     if (X1>=0 & X1~= inf & X1 ~= -inf) %x is not equaal to +inf/-inf
         y(comb(i,:))=X1
         sol=[sol y];
     end
 end
 %Compute optimal value,solution
 z=size(sol,2)
 for k=1:z
     
   temp(:,k) = Z*sol(:,k)
   
 end
 
 [optimal,index]=max(temp)
 BFS=sol(:,index);
else
    fprintf("Number of Constrains is greater than number of variables");
end












































%%Graphical
clc
clear
%Input parameter
A=[2 4; 3 5];
b=[8;15];
x1=0:1:20;
int=[];
%Finding x2
x21=1/A(1,2)*(b(1,1)-(A(1,1)*x1));
x22=1/A(2,2)*(b(2,1)-(A(2,1)*x1));
x21(x21<0)=nan;  % /[]
x22(x22<0)=nan; % /[]
%31/01/22
%Finding corner point with axes
point1=[x1([find(x1==0) find(x21==0)]); x21([find(x1==0) find(x21==0)])]';
point2=[x1([find(x1==0) find(x22==0)]); x22([find(x1==0) find(x22==0)])]';
%points=[point1;point2]%find(b<0)

%07/07/22   intersection points
for i=1:size(A,1)
    ai=A(i,:);
    bi=b(i,:);
    for j=i+1:size(A,1)
        aj=A(j,:);
        bj=b(j,:);
        a=[ai;aj];
        b=[bi;bj];
        x=inv(a)*b;
        
if (x>=0)
    val=x'
else
    val=[];
end
    int=[int;val];
    end
end
% 21/2/2022 feasibility of points 

points = [point1; point2; int ];
all_pts = unique(points, 'rows');
%Find objective function
for i= 1:size(A,1)
    constraints = A(i,1)*all_pts(:,1)+ A(1,2)*all_pts(:,2)-b(i);
    NF = find(constraints>0);
    all_pts(NF, : )=[];
end
%Find optimal val,solution
[val,index]=max(constraints);
optval=all_pts(index,:);
optimal_BFS=array2table(optval)
%Plotting the graph
plot(x1,x21,'ro-',x1,x22,'b*-')
title('Plotting-Graphical Method')
xlabel('x axis') 
ylabel('y axis')
legend('2x1+4x2=8','3x1+5x2=15')
grid on
    








































    
%% Big M
clc
clear
vars={'x_1','x_2','s_1','s_2','A_1','A_2','Sol'};
M=1000;
Cost=[3 5 0 0 -M -M 0];
A=[1 3 -1 0 1 0 3;1 1 0 -1 0 1 2];   %Constraints
s=eye(size(A,1));
%start of Finding BFS
BV=[];
for j=1:size(s,2)
    for i=1:size(A,2)
        if A(:,i)==s(:,j)
            BV=[BV i];
        end
    end
end
%Compute zj-cj
ZjCj=Cost(BV)*A-Cost;
%print table
ZCj=[ZjCj; A];
Table1=array2table(ZCj);
Table1.Properties.VariableNames(1:size(ZCj,2))=vars
RUN=true;
while RUN
%Find entering variable
ZC=ZjCj(:,1:end-1);
if any(ZC<0)
    fprintf('The current BFS is not optimal. \n')
    [Entval,pvtcol]=min(ZC);
fprintf('Entering column= %d \n',pvtcol)
%Find leaving variable
sol=A(:,end);
Column=A(:,pvtcol);
if all(Column)<=0
    fprintf('Solution is unbounded')
else
    for i=1:size(Column,1)
        if Column(i)>0
            ratio(i)=sol(i)./Column(i);
        else  
            ratio(i)=inf;
        end    
    end
[minr pvrow]=min(ratio);
    fprintf('Leaving row= %d \n',pvrow)
end
    %Update BV and table
    BV(pvrow)=pvtcol;
    
B=A(:,BV);
A=inv(B)*A;
ZjCj=Cost(BV)*A-Cost;
    %For printing purpose
    ZCj=[ZjCj;A];
    Table2=array2table(ZCj);
    Table2.Properties.VariableNames(1:size(ZCj,2))=vars
end
   
     RUN=false;
    fprintf('Current BFS is optimal')
end

    %Final optimal solution print
FinalBFS=zeros(1,size(A,2));
FinalBFS(BV)=A(:,end);    %To store BFS
FinalBFS(end)=sum(FinalBFS.*Cost);    %To compute value of Z
OptimalBFS=array2table(FinalBFS);
OptimalBFS.Properties.VariableNames(1:size(OptimalBFS,2))=vars

