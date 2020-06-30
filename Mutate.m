
function chrom = Mutate(chrom,pmutation,gen,MAXGEN )
% ��������ɱ������
% pcorss                input  : �������
% lenchrom              input  : Ⱦɫ�峤��
% chrom                 input  : Ⱦɫ��Ⱥ
% sizepop               input  : ��Ⱥ��ģ
% pop                   input  : ��ǰ��Ⱥ�Ľ������������Ľ���������Ϣ
% ret                   output : ������Ⱦɫ��
sizepop =  size(chrom,1);
lenchrom = size(chrom,2);
for i=1:sizepop  
    % ���ѡ��һ��Ⱦɫ����б���
    pick=rand;
    while pick==0
        pick=rand;
    end
    if pick>pmutation
        continue;
    end
        % ����λ��
        pick=rand;
        while pick==0
            pick=rand;
        end
        pos=ceil(pick*lenchrom);  %���ѡ����Ⱦɫ������λ�ã���ѡ���˵�pos���������б���
        v=chrom(i,pos);
        fg = pick*(1-gen/MAXGEN)^2;
        if  pick >= 0.5
            delta= fg *(v-7);
            chrom(i,pos)=ceil(v+delta);
        else
            delta= fg *(1-v);
            chrom(i,pos)=ceil(v+delta);
        end   %�������
      
end
