function fuzzyGApid()
clc;
clear
[num,den] = loss();
save num num
save den den
loadfit();
%% �Ŵ�����
NIND=100;       %��Ⱥ��С
MAXGEN=50;      %����Ŵ�����
Pc=0.9;         %�������
Pm=0.1;        %�������
rr = 0.1;
Chrom=InitPop(NIND,7);
gen = 1;    temx = zeros(MAXGEN,1);
temp = zeros(MAXGEN,1);
while gen<=MAXGEN  
    disp(gen) 
    FitnV = solvecode(num,den,Chrom);
    %%  ��ת
    Chroms = Reverse(Chrom);
    Fitnva =  solvecode(num,den,Chroms);
   [Chrom,FitnV] =  comperas(Chrom,FitnV,Chroms,Fitnva);
    %% ����Ⱥ������������ֵ
    [bestindividual,bestfit] = best(Chrom, FitnV ); 
    temp(gen,:)= bestfit;
    ssx(gen,:) = bestindividual;
    save ppp1 temp
    save ppp3 ssx
    temx(gen) = max( FitnV );
    save ppp2 temx
    disp(temx(gen,:))
    disp(bestfit)
     %% �궨
     FitnV = Biaoding(FitnV,rr,gen);
     %% ѡ��
%    SelCh = select('rws',Chrom,FitnV);
     SelCh = Select(Chrom,FitnV);
     %% �������c
%    SelCh=recombin('recdis',SelCh,Pc);
     SelCh=Recombin(SelCh,Pc,gen,MAXGEN);
     %%  ����
%    SelCh = mut(SelCh,Pm,BaseV);
     SelCh=Mutate(SelCh,Pm,gen,MAXGEN);
  
    %% ���µ�������
    gen=gen+1 ;
    Chrom = SelCh;
end


          








