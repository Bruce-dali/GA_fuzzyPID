function [num,den] = loss()
%******PID ����������******
ts=0.1;%����ʱ��Ϊ 0.1s
sys=tf([1.655,38.16],[1,7.987,-1.054]);%���ض��󴫵ݺ���ģ��
dsys=c2d(sys,ts,'tustin');%��˫���Աƽ����ԡ�sys����ɢ��
[num,den]=tfdata(dsys,'v');%��ȡ��ɢģ�� dsys �ķ��ӡ���ĸϵ