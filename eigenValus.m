% �������������ĺ���
function [meanN,varN,stdN,skewnessN,kurtosisN]  ...
    = eigenValus(num)
meanN = mean(num); % ��ֵ 
varN = var(num);   % ����
stdN = std(num);   % ��׼ƫ��
skewnessN = skewness(num); % ƫ��
kurtosisN = kurtosis(num); % ���

% ��ʾ��������
fprintf('��ֵΪ�� %s\n',meanN);
fprintf('����Ϊ�� %s\n',varN);
fprintf('��׼ƫ� %s\n',stdN);
fprintf('ƫ�ȣ� %s\n',skewnessN);
fprintf('��ȣ� %s\n',kurtosisN);