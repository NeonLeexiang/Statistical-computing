% ����һ����̬�ֲ������
u = input ...
    ('��������̬�ֲ��ľ�ֵ��');
p = input ...
    ('��������̬�ֲ��ķ��');
m = input ...
    ('��������Ҫ���������������У�');
n = input ...
    ('��������Ҫ���������������У�');

% ������̬�ֲ������
nRandn = normrnd(u,p,m,n);
% ������̬�ֲ��������ֵ����
[meanN,varN,stdN,skewnessN,kurtosisN] =  ...
    eigenValus(nRandn);

% ͼ��
pict(nRandn,m,n);




