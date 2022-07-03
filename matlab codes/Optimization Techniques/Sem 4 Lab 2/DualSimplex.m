clc;
clear all;
Variables={'x1','x2','s1','s2','sol'};
OVariables={'x_1','x_2','s_1','s_2','sol'}; % original variables
OrigC=[-3 -5 0 0];
cost=[-3 -4 0 0 0];
a=[-3 -1 1 0; -1 -4 0 1];
b=[-4;-5];
A=[a b];
bv = [3 4];
zjcj=cost(bv)*A-cost;
simplex_table=[zjcj;A];
RUN=true;
while RUN
    sol=A(:,end);
 if any(sol < 0) %check for negative value
 
 fprintf(' the current BFS is not optimal \n')
 zc=zjcj(1:end-1);
 [Enter_val, pvt_row]= min(sol);
 %if all(A(:,pvt_col)<=0)
 %error('LPP is Unbounded all enteries are <=0 in column %d',pvt_col);
 %else
 sol=A(:,end);
 row=A(pvt_row,:);
 for i=1:size(A,2)
 if row(i)<0
    ratio(i)= abs(zjcj(i)./row(i));
 else
    ratio(i)=inf;
 end
 end
 [leaving_val, pvt_col]=min(ratio);
 %end
bv(pvt_row)=pvt_col;
pvt_key=A(pvt_row, pvt_col);
A(pvt_row,:)=A(pvt_row,:)./pvt_key;
for i=1:size(A,1)
 if i~=pvt_row
 A(i,:)=A(i,:)-A(i, pvt_col).*A(pvt_row,:);
 end
end
%  zjcj=zjcj-zjcj(pvt_col).*A(pvt_row,:);
zjcj=cost(bv)*A-cost;
 zcj=[zjcj;A];
 table=array2table(zcj,'VariableNames',Variables)
else
 RUN=false;
  fprintf('optimal table is achieved \n');
end
end