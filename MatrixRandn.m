% ��ʼ��
clc;
clear;

% ���������;���ֽ�

% ͨ������ķ�ʽ��ȡ����
A = input ...
    ('���������');

% ȡ����ĶԽ�Ԫ��
Adiag = diag(A);
fprintf('����ĶԽ�Ԫ��:\n');
disp(Adiag);
% ������������ʽ
Adet = det(A);
fprintf('���������ʽ:\n');
disp(Adet);
% ����������
Ar = rank(A);
fprintf('�������:\n');
disp(Ar);
% ����������
Ainv = inv(A);
fprintf('�������:\n');
disp(Ainv);
% �����ת��
Aturn = A.';
fprintf('�����ת��:\n');
disp(Aturn);

% ����ķֽ�
[m,n] = size(A);
mnMax = [m,n];
if Ar == max(mnMax)
    % �����LU�ֽ�
    [L,U1] = lu(A);
    fprintf('����LU�ֽ����������\n');
    disp(L);
    fprintf('����LU�ֽ����������\n');
    disp(U1);
    % �Գ����������Cholesky�ֽ�
    [R1,p] = chol(A);
    if p == 0
        fprintf('�����Ǿ���RΪ��\n');
        disp(R1);
    else
        fprintf('A���ǶԳ�������\n');
    end
    % �����QR�ֽ�
    [Q,R2] = qr(A);
    fprintf('����QR�ֽ��������\n');
    disp(Q);
    fprintf('����QR�ֽ����������\n');
    disp(R2);
else
    fprintf('�þ���Ϊ���Ⱦ���');
end

% �������ķֽ�
if m == n
    % ���ⷽ�������ֵ�ֽ�EVD
    [V1,D]=eig(A);
    fprintf('����EVD�ֽ������ֵ�Խ���D\n');
    disp(D);
    fprintf('����EVD�ֽ������ֵ��������V\n');
    disp(V1);
    % ���ⷽ���Schur�ֽ�
    [U2,R3] = schur(A);
    fprintf('����Schur�ֽ���Ͼ���U��\n');
    disp(U2);
    fprintf('����Schur�ֽ��������Schur����R��\n');
    disp(R3);
    % ���ⷽ���Hessenberg�ֽ�
    [P,H] = hess(A);
    fprintf('hessenberg�ֽ���Ͼ���P��\n');
    disp(P);
    fprintf('hessenberg�ֽ��H����\n');
    disp(H);
else
    fprintf('�þ����Ƿ����޷����EVD�ֽ�\n');
end
% ������������ֵ�ֽ�SVD
[U3,S,V2] = svd(A);
fprintf('SVD����ֵ�ֽ���Ͼ��� U��V��\n');
disp(U3);
disp(V2);
fprintf('�ԽǾ���SΪ��\n');
disp(S);

