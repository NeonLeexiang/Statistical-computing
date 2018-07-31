% 创建离散均匀随机数
% 定义函数
function discreteNum = discreteRandn(a,b,m,n)
discreteNum = unifrnd(a,b,m,n); % 生成离散均匀随机数
fprintf('the discrete random number is :');
disp(discreteNum) % 显示随机数
