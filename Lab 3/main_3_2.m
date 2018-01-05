%%% 3.1.3 Nearest neighbour density estimation %%%
%%% Exercise 3.7 %%%
% a. because os small number of k
% c. 2 or 3 is prefered because there appears two peaks
% d. using log-likelihood function
a = gendats([20 20],1,8); % Generate data
k = 1;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

k = 2;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

k = 3;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

k = 4;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

k = 5;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

k = 10;
w = knnm(a,k);
figure,scatterd();
plotm(w,1);
gridsize(500)

%%% Exercise 3.9 %%%
% b. row is the distance between grid points of dataset 
% d. 
a = gendats([5 5],1,8);
gx = [-3:0.2:11]';
D = sqrt(distm(gx,a));
Dsort = sort(+D,2);

n = 10;
phat = 1./(n*2*Dsort(:,1));

figure, scatterd(+a); hold on; plot(gx,phat);
axis([-2 10 -0.5 5]);
saveas(gcf,'figknn','m')

%%% Exercise 3.10 %%%
% a. phat = k./(n*2*Dsort(:,k));
% b. using log-likelihood
a = gendats([5 5],1,8);
gx = [-3:0.2:11]';
D = sqrt(distm(gx,a));
Dsort = sort(+D,2);

k = 3;
n = 10;
phat = k./(n*2*Dsort(:,k));

figure, scatterd(+a); hold on; plot(gx,phat);
axis([-2 10 -0.5 5]);
saveas(gcf,'figknn','m')

%%% Exercise 3.12 %%%
% a. the good value of k is 1 - 3, and h is 0.1 - 0,25
% b. split the dataset into training and test data set. Then choose the
% the optimal parameter using log-likelihood.

a = gendatb(); % Generate data
hs = [0.1 0.25 0.5 1]; %
ks = [1 2 3 4]; 
for i = 1:length(hs) % For each h...
    w = parzenc(a,hs(i));
    v = knnc(a,ks(i));
    figure, scatterd(a); plotc(w); plotc(v,'r');
end;
