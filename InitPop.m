%% ��ʼ����Ⱥ
%���룺
% NIND����Ⱥ��С
% N��   ����Ⱦɫ�峤�ȣ�����Ϊ���еĸ�����  
%�����
%��ʼ��Ⱥ
function Chrom=InitPop(NIND,N)
Chrom=zeros(NIND,N*N*3);%���ڴ洢��Ⱥ
Base = N * ones(1,N*N*3);
Chrom= crtbp(NIND,N*N*3,Base)+1 ;%������ɳ�ʼ��Ⱥ
