% 计算数字特征的函数
function [meanN,varN,stdN,skewnessN,kurtosisN]  ...
    = eigenValus(num)
meanN = mean(num); % 均值 
varN = var(num);   % 方差
stdN = std(num);   % 标准偏差
skewnessN = skewness(num); % 偏度
kurtosisN = kurtosis(num); % 峰度

% 显示数字特征
fprintf('均值为： %s\n',meanN);
fprintf('方差为： %s\n',varN);
fprintf('标准偏差： %s\n',stdN);
fprintf('偏度： %s\n',skewnessN);
fprintf('峰度： %s\n',kurtosisN);