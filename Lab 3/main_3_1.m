%%%%%%%%  3.1 Non-parametric density estimation %%%%%%%% 

%%% Exercise 3.1 %%%
% b. n = 1000 gives the best impression of true density
% c. using laplace gives similar results with gaussian
n = 10;
for i = 1:10
    a = gauss(n,0);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

n = 100;
for i = 1:10
    a = gauss(n,0);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

n = 1000;
for i = 1:10
    a = gauss(n,0);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

n = 10;
for i = 1:10
    a = laplace(n,1);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

n = 100;
for i = 1:10
    a = laplace(n,1);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

n = 1000;
for i = 1:10
    a = laplace(n,1);
    h(i,:) = hist(+a,-5:5);
end;
figure, errorbar (-5:5, mean(h), std(h));

%%% 3.1.2 Parzen density estimation %%%
%%% Exercise 3.2 %%%
% a. 300 -> 10^4
% b. bin 5x5 -> 10^5 , bin 20x20 -> 10^4
a = gauss(100,[0 0]);
figure, hist2(a);

a = gauss(1000,[0 0]);
figure, hist2(a);

a = gauss(10000,[0 0]);
figure, hist2(a);

a = gauss(100,[0 0]);
figure, hist2(a,5);

a = gauss(1000,[0 0]);
figure, hist2(a,5);

a = gauss(10000,[0 0]);
figure, hist2(a,5);

a = gauss(100000,[0 0]);
figure, hist2(a,5);

a = gauss(100,[0 0]);
figure, hist2(a,20);

a = gauss(1000,[0 0]);
figure, hist2(a,20);

a = gauss(10000,[0 0]);
figure, hist2(a,20);

a = gauss(100000,[0 0]);
figure, hist2(a,20);

%%% Exercise 3.3 %%%
% d. the value of h should be less than its variance 1 
% because it can be seen that there is two peaks (two classes)
a = gendats([20 20],1,8);
h = 0.5;
w = parzenm(+a,h);
figure,scatterd(+a); plotm(w,1);
gridsize(100);

h = 0.75;
w = parzenm(+a,h);
figure,scatterd(+a); plotm(w,1);
gridsize(100);

h = 0.25;
w = parzenm(+a,h);
figure,scatterd(+a); plotm(w,1);

h = 1;
w = parzenm(+a,h);
figure,scatterd(+a); plotm(w,1);

h = 2;
w = parzenm(+a,h);
figure,scatterd(+a); plotm(w,1);
gridsize(100);

%%% Exercise 3.4 %%%
% a. the optimal value based on log-likelihood is 0.01. 
a = gendats([20 20],1,8); % Generate data
hs = [0.01 0.05 0.1 0.25 0.5 1 1.5 2 3 4 5]; % Array of h's to try
for i = 1:length(hs) % For each h...
    w = parzenm(+a,hs(i)); % estimate Parzen density
    LL(i) = sum(log(+(a*w))); % calculate log-likelihood
end;
figure,plot(hs,LL); % Plot log-likelihood as function of h

%%% Exercise 3.5 %%%
% the best h is 1, as it gives the biggest LL based on test data
a = gendats([20 20],1,8); % Generate data
[trn,tst] = gendat(a,0.5); % Split into trn and tst, both 50%
hs = [0.1 0.25 0.5 1 1.5 2 3 4 5]; % Array of h's to try
for i = 1:length(hs) % For each h...
    w = parzenm(+trn,hs(i)); % estimate Parzen density on trn
    Ltrn(i) = sum(log(+(trn*w))); % calculate trn log-likelihood
    Ltst(i) = sum(log(+(tst*w))); % calculate tst log-likelihood
end;
figure
plot(hs,Ltrn,'b-'); hold on; % Plot trn log-likelihood as function of h
plot(hs,Ltst,'r-'); % Plot tst log-likelihood as function of h

%%% Exercise 3.6 %%%
% the best h is 0.5, as it gives the biggest LL based on test data
% more data smaller h is the possible optimal solution
a = gendats([100 100],1,8); % Generate data
[trn,tst] = gendat(a,0.5); % Split into trn and tst, both 50%
hs = [0.1 0.25 0.5 1 1.5 2 3 4 5]; % Array of h's to try
for i = 1:length(hs) % For each h...
    w = parzenm(+trn,hs(i)); % estimate Parzen density on trn
    Ltrn(i) = sum(log(+(trn*w))); % calculate trn log-likelihood
    Ltst(i) = sum(log(+(tst*w))); % calculate tst log-likelihood
end;
figure
plot(hs,Ltrn,'b-'); hold on; % Plot trn log-likelihood as function of h
plot(hs,Ltst,'r-'); % Plot tst log-likelihood as function of h


