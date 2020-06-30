function FitnV = Fitness(num,den,a)
ts = 0.1;
u_1=0.0; u_2=0.0; %�������ĳ�ʼ״̬
y_1=0;   y_2=0; %����ĳ�ʼ״̬
x=[0,0,0]';%PID3 ������������ɵ�����
error_1=0;%��ʼ���
e_1=0.0;ec_1=0.0;%�������仯���ó�ֵ
kp0=0.5;kd0=1.0;ki0=0.01;%PID3 �������ĳ�ֵ
for k=1:1:300 %����ʱ��
time(k)=k*ts;
if  k<=50
    rin(k)=0;%����Ľ�Ծ�ź�
else
    rin(k)=1 ;
end                       % ָ��Ϊ��Ծ�ź�
%��ģ���������õ��Ĳ������� PID ����
k_pid=evalfis([e_1,ec_1],a);%ִ��ģ�������õ���� PID ����
kp(k)=kp0+k_pid(1);
ki(k)=ki0+k_pid(2);
kd(k)=kd0+k_pid(3);
u(k)=kp(k)*x(1)+kd(k)*x(2)+ki(k)*x(3);%PID ������
yout(k)=-den(2)*y_1-den(3)*y_2+num(1)*u(k)+num(2)*u_1+num(3)*u_2;
error(k)=rin(k)-yout(k);%��� e
ss(k) = abs(rin(k)-yout(k));
%*********���� PID ����**********
u_2=u_1;
u_1=u(k);
y_2=y_1;
y_1=yout(k);
x(1)=error(k);%���� P
x(2)=error(k)-error_1;%���� D
x(3)=x(3)+error(k);%���� I
e_1= x(1);
ec_1=x(2);

error_2=error_1;
error_1=error(k);
end
FitnV = sum(ss);