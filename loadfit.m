function loadfit()
a=newfis('fuzpid');%�����µ� FIS
%*******�趨 e �ķ�Χ��������********
a=addvar(a,'input','e',[-3 3]);    %��ģ������ϵͳ��FIS��������Ա��� e
%********��ģ������ϵͳ��FIS�������Ա��� e ��������Ⱥ���****
a=addmf(a,'input',1,'NB','zmf',[-3 -1]); %z �������Ⱥ���
a=addmf(a,'input',1,'NM','trimf',[-3 -2 0]);%�����������Ⱥ���
a=addmf(a,'input',1,'Ns','trimf',[-3 -1 1]);%�����������Ⱥ���
a=addmf(a,'input',1,'Z','trimf',[-2 0 2]);%�����������Ⱥ���
a=addmf(a,'input',1,'PS','trimf',[-1 1 3]);%�����������Ⱥ���
a=addmf(a,'input',1,'PM','trimf',[0 2 3]);%�����������Ⱥ���
a=addmf(a,'input',1,'PB','smf',[1 3]);%s ״�����Ⱥ���
%*******�趨 ec �ķ�Χ��������********
a=addvar(a,'input','ec',[-3 3]);%��ģ������ϵͳ��FIS��������Ա��� ec
%********��ģ������ϵͳ��FIS�������Ա��� ec ��������Ⱥ���
a=addmf(a,'input',2,'NB','zmf',[-3 -1]);%z �������Ⱥ���
a=addmf(a,'input',2,'NM','trimf',[-3 -2 0]);%�����������Ⱥ���
a=addmf(a,'input',2,'Ns','trimf',[-3 -1 1]);%�����������Ⱥ���
a=addmf(a,'input',2,'Z','trimf',[-2 0 2]);%�����������Ⱥ���
a=addmf(a,'input',2,'PS','trimf',[-1 1 3]);%�����������Ⱥ���
a=addmf(a,'input',2,'PM','trimf',[0 2 3]);%�����������Ⱥ���
a=addmf(a,'input',2,'PB','smf',[1 3]);%s ״�����Ⱥ���
%*******�趨 Kp �ķ�Χ��������********
a=addvar(a,'output','Kp',[-0.4 0.4]);%��ģ������ϵͳ��FIS��������Ա��� Kp
%********��ģ������ϵͳ��FIS�������Ա��� Kp ��������Ⱥ���***
a=addmf(a,'output',1,'NB','zmf',[-0.4 -0.1]);%z �������Ⱥ���
a=addmf(a,'output',1,'NM','trimf',[-0.4 -0.2 0]);%�����������Ⱥ���
a=addmf(a,'output',1,'Ns','trimf',[-0.4 -0.1 0.1]);%�����������Ⱥ���
a=addmf(a,'output',1,'Z','trimf',[-0.2 0 0.2]);%�����������Ⱥ���
a=addmf(a,'output',1,'PS','trimf',[-0.1 0.1 0.4]);%�����������Ⱥ���
a=addmf(a,'output',1,'PM','trimf',[0 0.2 0.4]);%�����������Ⱥ���
a=addmf(a,'output',1,'PB','smf',[0.1 0.4]);%s ״�����Ⱥ���
%*******�趨 Ki �ķ�Χ��������********
a=addvar(a,'output','Ki',[-0.06 0.06]);%��ģ������ϵͳ��FIS��������Ա��� Ki
%********��ģ������ϵͳ��FIS�������Ա��� Kp ��������Ⱥ���****
a=addmf(a,'output',2,'NB','zmf',[-0.05 -0.02]);%z �������Ⱥ���
a=addmf(a,'output',2,'NM','trimf',[-0.05 -0.04 0]);%�����������Ⱥ���
a=addmf(a,'output',2,'Ns','trimf',[-0.05 -0.02 0.02]);%�����������Ⱥ���
a=addmf(a,'output',2,'Z','trimf',[-0.05 0 0.04]);%�����������Ⱥ���
a=addmf(a,'output',2,'PS','trimf',[-0.05 0.02 0.05]);%�����������Ⱥ���
a=addmf(a,'output',2,'PM','trimf',[0 0.04 0.05]);%�����������Ⱥ���
a=addmf(a,'output',2,'PB','smf',[0.02 0.05]);%s ״�����Ⱥ���
%*******�趨 Kd �ķ�Χ��������********
a=addvar(a,'output','Kd',[-3 3]);%��ģ������ϵͳ��FIS��������Ա��� Kd
%********��ģ������ϵͳ��FIS�������Ա��� Kd ��������Ⱥ���***
a=addmf(a,'output',3,'NB','zmf',[-3 -1]);%z �������Ⱥ���
a=addmf(a,'output',3,'NM','trimf',[-3 -2 0]);%�����������Ⱥ���
a=addmf(a,'output',3,'Ns','trimf',[-3 -1 1]);%�����������Ⱥ���
a=addmf(a,'output',3,'Z','trimf',[-2 0 2]);%�����������Ⱥ���
a=addmf(a,'output',3,'PS','trimf',[-1 1 3]);%�����������Ⱥ���
a=addmf(a,'output',3,'PM','trimf',[0 2 3]);%�����������Ⱥ���
a=addmf(a,'output',3,'PB','smf',[1 3]);%s ״�����Ⱥ���
a=setfis(a,'DefuzzMethod','centroid');%����ģ��ϵͳ������,�����������������ķ�
writefis(a,'fuzpid');%���� FIS ��������