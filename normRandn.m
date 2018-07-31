% 创建一个正态分布随机数
u = input ...
    ('请输入正态分布的均值：');
p = input ...
    ('请输入正态分布的方差：');
m = input ...
    ('请输入需要产生随机数矩阵的行：');
n = input ...
    ('请输入需要产生随机数矩阵的列：');

% 产生正态分布随机数
nRandn = normrnd(u,p,m,n);
% 计算正态分布随机数数值特征
[meanN,varN,stdN,skewnessN,kurtosisN] =  ...
    eigenValus(nRandn);

% 图像
pict(nRandn,m,n);




