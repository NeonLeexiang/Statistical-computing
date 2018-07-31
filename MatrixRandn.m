% 初始化
clc;
clear;

% 数字特征和矩阵分解

% 通过输入的方式获取矩阵
A = input ...
    ('请输入矩阵：');

% 取矩阵的对角元素
Adiag = diag(A);
fprintf('矩阵的对角元素:\n');
disp(Adiag);
% 计算矩阵的行列式
Adet = det(A);
fprintf('矩阵的行列式:\n');
disp(Adet);
% 计算矩阵的秩
Ar = rank(A);
fprintf('矩阵的秩:\n');
disp(Ar);
% 计算矩阵的逆
Ainv = inv(A);
fprintf('矩阵的逆:\n');
disp(Ainv);
% 矩阵的转置
Aturn = A.';
fprintf('矩阵的转置:\n');
disp(Aturn);

% 矩阵的分解
[m,n] = size(A);
mnMax = [m,n];
if Ar == max(mnMax)
    % 矩阵的LU分解
    [L,U1] = lu(A);
    fprintf('矩阵LU分解的下三角阵\n');
    disp(L);
    fprintf('矩阵LU分解的上三角阵\n');
    disp(U1);
    % 对称正定矩阵的Cholesky分解
    [R1,p] = chol(A);
    if p == 0
        fprintf('上三角矩阵R为：\n');
        disp(R1);
    else
        fprintf('A不是对称正定的\n');
    end
    % 矩阵的QR分解
    [Q,R2] = qr(A);
    fprintf('矩阵QR分解的正交阵\n');
    disp(Q);
    fprintf('矩阵QR分解的上三角阵\n');
    disp(R2);
else
    fprintf('该矩阵不为满秩矩阵');
end

% 任意矩阵的分解
if m == n
    % 任意方阵的特征值分解EVD
    [V1,D]=eig(A);
    fprintf('矩阵EVD分解的特征值对角阵D\n');
    disp(D);
    fprintf('矩阵EVD分解的特征值向量矩阵V\n');
    disp(V1);
    % 任意方阵的Schur分解
    [U2,R3] = schur(A);
    fprintf('矩阵Schur分解的酉矩阵U：\n');
    disp(U2);
    fprintf('矩阵Schur分解的上三角Schur矩阵R：\n');
    disp(R3);
    % 任意方阵的Hessenberg分解
    [P,H] = hess(A);
    fprintf('hessenberg分解的酉矩阵P：\n');
    disp(P);
    fprintf('hessenberg分解的H矩阵：\n');
    disp(H);
else
    fprintf('该矩阵不是方阵，无法完成EVD分解\n');
end
% 任意矩阵的奇异值分解SVD
[U3,S,V2] = svd(A);
fprintf('SVD奇异值分解的酉矩阵 U，V：\n');
disp(U3);
disp(V2);
fprintf('对角矩阵S为：\n');
disp(S);

