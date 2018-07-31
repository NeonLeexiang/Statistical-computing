% 作图模块
function pictNum = pict(nNum,m,n)

% 频率直方图
mnlen = 1.87*((m*n-1)^0.4); % 取合适的区间数
subplot(3,2,1),hist(nNum,mnlen);
title('频率直方图')
% Q-Q图
subplot(3,2,2),qqplot(nNum);
title('Q-Q图')
% 经验分布函数图
[f,x,flo,fup] = ecdf(nNum);
subplot(2,2,3),stairs(x,f);
hold on;
subplot(2,2,3),stairs(x,flo,'r:'); stairs(x,fup,'r:');
title('经验分布函数图')
% 密度函数图
[Y,X] = hist(nNum);
Y = Y/length(nNum)/mean(diff(X));
subplot(2,2,4),bar(X,Y,0.8);
title('密度函数图')

