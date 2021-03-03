function [k_local] = mtdcdamkgUboot(E,A,Iz,Iy,Ix,L)
% Phan tu hai dau lien ket han trong khong gian 3 chieu
G = E / 2; % mo dun truot be tong [T/m2]

S1 = E*A/L;
S2 = 12*E*Iz/L^3;
S3 = 6*E*Iz/L^2;
S4 = 12*E*Iy/L^3;
S5 = 6*E*Iy/L^2;
S6 = G*Ix/L;
S7 = 4*E*Iy/L;
S8 = 2*E*Iy/L;
S9 = 4*E*Iz/L;
S10 = 2*E*Iz/L;

k_local = [S1, 0, 0, 0, 0, 0, -S1, 0, 0, 0, 0, 0; ... 
           0, S2, 0, 0, 0, S3, 0, -S2, 0, 0, 0, S3; ... 
           0, 0, S4, 0, -S5, 0, 0, 0, -S4, 0, -S5, 0; ... 
           0, 0, 0, S6, 0, 0, 0, 0, 0, -S6, 0, 0; ... 
           0, 0, -S5, 0, S7, 0, 0, 0, S5, 0, S8, 0; ... 
           0, S3, 0, 0, 0, S9, 0, -S3, 0, 0, 0, S10; ... 
           -S1, 0, 0, 0, 0, 0, S1, 0, 0, 0, 0, 0; ... 
           0, -S2, 0, 0, 0, -S3, 0, S2, 0, 0, 0, -S3; ... 
           0, 0, -S4, 0, S5, 0, 0, 0, S4, 0, S5, 0; ... 
           0, 0, 0, -S6, 0, 0, 0, 0, 0, S6, 0, 0; ... 
           0, 0, -S5, 0, S8, 0, 0, 0, S5, 0, S7, 0; ... 
           0, S3, 0, 0, 0, S10, 0, -S3, 0, 0, 0, S9]; 