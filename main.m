clc;     % 初始化
clear;   % 初始化内存空间

% 输入产生离散均匀随机数的各项参数
a = input ...
    ('请输入需要的离散均匀随机数的均匀分布区间左侧：');
b = input ...
    ('请输入需要的离散均匀随机数的均匀分布区间右侧：');
m = input('请输入需要产生的随机数矩阵的行：');
n = input('请输入需要产生的随机数矩阵的列：');

% m文件函数

% 产生离散均匀随机数
discreteNum = discreteRandn(a,b,m,n);  
% 计算离散均匀随机数数字特征
[meanN,varN,stdN,skewnessN,kurtosisN] =  ...
    eigenValus(discreteNum);

% 频率直方图
mnlen = 1.87*((m*n-1)^0.4); % 取合适的区间数
subplot(3,2,1),hist(discreteNum,mnlen);
title('频率直方图')
% Q-Q图
subplot(3,2,2),qqplot(discreteNum);
title('Q-Q图')
% 经验分布函数图
[f,x,flo,fup] = ecdf(discreteNum);
subplot(2,2,3),stairs(x,f);
hold on;
subplot(2,2,3),stairs(x,flo,'r:'); stairs(x,fup,'r:');
title('经验分布函数图')
% 密度函数图
[Y,X] = hist(discreteNum);
Y = Y/length(discreteNum)/mean(diff(X));
subplot(2,2,4),bar(X,Y,1);
title('密度函数图')

