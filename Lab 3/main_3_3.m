%%% 3.1.5 Naive Bayes Classifier %%%

%%% Exercise 3.13 %%%
% check best N value
a = gendatb(); % Generate data
Ns = [6 7 8 9 10 11 12 13 14 15]; 
for i = 1:length(Ns)
    w = naivebc(a,Ns(i));
    figure, scatterd(a); plotc(w);
end;

a = gendatb(); % Generate data
h = 0.1; 
k = 1; 
N = 10;
w = parzenc(a,h);
v = knnc(a,k);
x = naivebc(a,N);
figure, scatterd(a); plotc(w); plotc(v,'r'); plotc(x,'b');

a = gendats(); % Generate data
h = 0.1; 
k = 1; 
N = 10;
w = parzenc(a,h);
v = knnc(a,k);
x = naivebc(a,N);
figure, scatterd(a); plotc(w); plotc(v,'r'); plotc(x,'b');

a = gendatd(); % Generate data
h = 0.1; 
k = 1; 
N = 10;
w = parzenc(a,h);
v = knnc(a,k);
x = naivebc(a,N);
figure, scatterd(a); plotc(w); plotc(v,'r'); plotc(x,'b');

%%%%%%%%  3.2 The scaling problem %%%%%%%% 

%%% Exercise 3.15 %%%
% c. parzen, knn and nmc are affected but ldc, qdc and fisherc are not.
% The reason is that in order to determine the decision line, the
% covariance matrix is estimated thus the scaling factor is taken into
% account.
% d. The advantage of the scale not affecting the classifier performance is
% there is no need to optimize the scale factor but it need large enough
% dataset for good scale estimation.

a = gendatb(); % Generate data
k = 1; 
h = 0.1;

w1 = parzenc(a,h);
w2 = knnc(a,k);
w3 = nmc(a);
w4 = ldc(a);
w5 = qdc(a);
w6 = fisherc(a);

figure, scatterd(a); 
plotc(w1); plotc(w2,'r'); plotc(w3,'b');
figure, scatterd(a); 
plotc(w4); plotc(w5,'r'); plotc(w6,'b');

% scaling one of feature
newtrain = a;
newtrain(:,2) = 10*newtrain(:,2);

w1 = parzenc(newtrain,h);
w2 = knnc(newtrain,k);
w3 = nmc(newtrain);
w4 = ldc(newtrain);
w5 = qdc(newtrain);
w6 = fisherc(newtrain);

figure, scatterd(newtrain); 
plotc(w1); plotc(w2,'r'); plotc(w3,'b');
figure, scatterd(newtrain); 
plotc(w4); plotc(w5,'r'); plotc(w6,'b');