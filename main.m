clc;     % ��ʼ��
clear;   % ��ʼ���ڴ�ռ�

% ���������ɢ����������ĸ������
a = input ...
    ('��������Ҫ����ɢ����������ľ��ȷֲ�������ࣺ');
b = input ...
    ('��������Ҫ����ɢ����������ľ��ȷֲ������Ҳࣺ');
m = input('��������Ҫ�����������������У�');
n = input('��������Ҫ�����������������У�');

% m�ļ�����

% ������ɢ���������
discreteNum = discreteRandn(a,b,m,n);  
% ������ɢ�����������������
[meanN,varN,stdN,skewnessN,kurtosisN] =  ...
    eigenValus(discreteNum);

% Ƶ��ֱ��ͼ
mnlen = 1.87*((m*n-1)^0.4); % ȡ���ʵ�������
subplot(3,2,1),hist(discreteNum,mnlen);
title('Ƶ��ֱ��ͼ')
% Q-Qͼ
subplot(3,2,2),qqplot(discreteNum);
title('Q-Qͼ')
% ����ֲ�����ͼ
[f,x,flo,fup] = ecdf(discreteNum);
subplot(2,2,3),stairs(x,f);
hold on;
subplot(2,2,3),stairs(x,flo,'r:'); stairs(x,fup,'r:');
title('����ֲ�����ͼ')
% �ܶȺ���ͼ
[Y,X] = hist(discreteNum);
Y = Y/length(discreteNum)/mean(diff(X));
subplot(2,2,4),bar(X,Y,1);
title('�ܶȺ���ͼ')

