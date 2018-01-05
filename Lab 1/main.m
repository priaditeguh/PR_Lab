close all
clear

addpath('C:\prtools');

%%% 1.1 Decision Theory %%%
% Exercise 1.1
mean_1 = 0; sigma_1 = 0.5;
mean_2 = 1; sigma_2 = 0.5;

syms x;
eqn = gauss_distribution(x,mean_1,sigma_1) == gauss_distribution(x,mean_2,sigma_2);
solx1 = solve(eqn,x);

% a1 = 0; b1 = 1;
% a2 = 2; b2 = 3;
% eqn = normal_dist(a1,b1,x) == normal_dist(a2,b2,x);
% solx2 = solve(eqn,x);
% 
% a2 = 0.5; b2 = 1.5;
% eqn = normal_dist(a1,b1,x) == normal_dist(a2,b2,x);
% solx3 = solve(eqn,x);
% 
% a2 = 0.5; b2 = 2.5;
% eqn = normal_dist(a1,b1,x) == normal_dist(a2,b2,x);
% solx4 = solve(eqn,x);

% Exercise 1.2
l_12 = 0.5;
l_21 = 1.0;
mean_1 = 0; sigma_1 = 0.5;
mean_2 = 1; sigma_2 = 0.5;

eqn = (l_12/l_21) * gauss_distribution(x,mean_1,sigma_1) == gauss_distribution(x,mean_2,sigma_2);
solx5 = solve(eqn,x);

mean = 3.1732;
syms s;
eqn = 1 == gauss_distribution(16.8628,mean,s);
solx6 = solve(eqn,s);

double(gauss_distribution(5,mean,double(solx6)))
