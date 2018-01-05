% Exercise 2.12
% a. the shape of boundary should be linear
% b. the qdc should have quadratic shape because the data points is too
% small
% c. the ldc has a straight line and qdc has a rather bit bent line
% d. the qdc will become more linear

a = gendatd([10 10]);

w1 = ldc(a);
w2 = qdc(a);

figure,scatterd(a)
plotc(w1)

figure,scatterd(a)
plotc(w2)

% investigate more points per class

a = gendatd([50 50]);

w1 = ldc(a);
w2 = qdc(a);

figure,scatterd(a)
plotc(w1)

figure,scatterd(a)
plotc(w2)

 
% Exercise 2.13
label = [repmat(1,10,1); repmat(2,10,1)];
z = [randn(10,2);rand(10,2)];
a = prdataset(z,label);

w1 = ldc(a);
w2 = qdc(a);

figure,scatterd(a)
plotc(w1)

figure,scatterd(a)
plotc(w2)

label_data1 = a*w1*labeld;
label_data2 = a*w2*labeld;


% Exercise 2.16
% using plotc, we can see the similarity and difference between linear and
% nonlinear transformation

% linear transformation
label = [repmat(1,10,1); repmat(2,10,1)];
scale = [3 0; 0 1];
z = [randn(10,2);rand(10,2)];

a = prdataset(z,label);
w1 = qdc(a);
figure,scatterd(a)
plotc(w1)
label_data1 = a*w1*labeld;

a = prdataset(z*scale,label);
w2 = qdc(a);
figure,scatterd(a)
plotc(w2)
label_data2 = a*w2*labeld;

label_data1 == label_data2

% nonlinear transformation
label = [repmat(1,10,1); repmat(2,10,1)];
nl_tras = [3 0.5; 0.5 1];
z = [randn(10,2);rand(10,2)];

a = prdataset(z,label);
w1 = qdc(a);
figure,scatterd(a)
plotc(w1)
label_data1 = a*w1*labeld;

a = prdataset(z*nl_tras,label);
w2 = qdc(a);
figure,scatterd(a)
plotc(w2)
label_data2 = a*w2*labeld;

label_data1 == label_data2