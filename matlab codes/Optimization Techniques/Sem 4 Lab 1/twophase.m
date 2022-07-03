% Min. z = 3x1 + 5x2, 
% x1 + 3x2 ≥ 3, 
% x1 + x2 ≥ 2, 
% x1, x2 ≥ 0

%% Standard form
% z = -3x1 - 5x2 -A1 -A2 (converted to maximise)
% x1 + 3x2 -S1 +A1 = 3
% x1 + x2 -S2 +A2 = 2

clc;
clear;

%% Input
Variables={'x_1', 'x_2', 's_1','s_2', 'A_1', 'A_2', 'Sol'};
Ovariables={'x_1','x_2',' s_1' , 's_2', 'Sol'};
Origc = [-3 -5 0 0  -1 -1 0]; %last zero corrusponds to solution
BV=[5, 6];
M = [1 ,3 -1, 0, 1,0, 3; 1, 1, 0, -1, 0, 1, 2];
%%
Cost = [0 0 0 0 -1 -1 0];
A = M;
StartBV = find(Cost<0);

RUN = true;
while RUN
%% Zj-cj
zjcj = Cost(BV)*A - Cost;
%InitialTable = array2table([ZjCj;A]);
%InitialTable.Properties.VaeiableNames(1:size(A,2))=Variables

%% Phase 1


    ZC = zjcj(1:end-1);
    if any(ZC<0)
        [Enter_col, pvt_col] = min(ZC);
        sol = A(:,end);
        Col = A(:,pvt_col);
        if Col<0
           fprintf('Unbounded Solution\n');
        else
            for i = 1:size(A,1)
                if Col(i)>0
                    ratio(i)=sol(i)./Col(i);
                else
                    ratio(i)=inf;
                end
            end
            [Min_ratio, pvt_row]= min(ratio);
        end
        BV(pvt_row) = pvt_col;
        pvt_key = A(pvt_row,pvt_col);
    %%% Update the values
        A(pvt_row,:)=A(pvt_row,:)./pvt_key;
        for i=1: size (A, 1)
            if i~=pvt_row
                A(i, :)=A (i, :)-A (i, pvt_col).*A (pvt_row, :);
            end
        end
        zjcj = zjcj - zjcj (pvt_col).*A (pvt_row,:);

    else
        RUN=false;
        fprintf('Optimal Sol \n');
    end
end
%% Phase 2
A(:,BV) = [];
BV=[3,4];
while RUN
%% Zj-cj
zjcj = Cost(BV)*A - Cost;
%InitialTable = array2table([ZjCj;A]);
%InitialTable.Properties.VaeiableNames(1:size(A,2))=Variables

%% Phase 1


    ZC = zjcj(1:end-1);
    if any(ZC<0)
        [Enter_col, pvt_col] = min(ZC);
        sol = A(:,end);
        Col = A(:,pvt_col);
        if Col<0
           fprintf('Unbounded Solution\n');
        else
            for i = 1:size(A,1)
                if Col(i)>0
                    ratio(i)=sol(i)./Col(i);
                else
                    ratio(i)=inf;
                end
            end
            [Min_ratio, pvt_row]= min(ratio);
        end
        BV(pvt_row) = pvt_col;
        pvt_key = A(pvt_row,pvt_col);
    %%% Update the values
        A(pvt_row,:)=A(pvt_row,:)./pvt_key;
        for i=1: size (A, 1)
            if i~=pvt_row
                A(i, :)=A (i, :)-A (i, pvt_col).*A (pvt_row, :);
            end
        end
        zjcj = zjcj - zjcj (pvt_col).*A (pvt_row,:);

    else
        RUN=false;
        fprintf('Optimal Sol \n');
        A
    end
end