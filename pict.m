% ��ͼģ��
function pictNum = pict(nNum,m,n)

% Ƶ��ֱ��ͼ
mnlen = 1.87*((m*n-1)^0.4); % ȡ���ʵ�������
subplot(3,2,1),hist(nNum,mnlen);
title('Ƶ��ֱ��ͼ')
% Q-Qͼ
subplot(3,2,2),qqplot(nNum);
title('Q-Qͼ')
% ����ֲ�����ͼ
[f,x,flo,fup] = ecdf(nNum);
subplot(2,2,3),stairs(x,f);
hold on;
subplot(2,2,3),stairs(x,flo,'r:'); stairs(x,fup,'r:');
title('����ֲ�����ͼ')
% �ܶȺ���ͼ
[Y,X] = hist(nNum);
Y = Y/length(nNum)/mean(diff(X));
subplot(2,2,4),bar(X,Y,0.8);
title('�ܶȺ���ͼ')

