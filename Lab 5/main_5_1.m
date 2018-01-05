%%%%%%%%  5.1Logistic Regression, Logistic Discrimination, 
% Log-linear Classifier %%%%%%%% 

%%% Exercise 5.4 %%%
label = [1; 1; 2];
dataset = [0 1; 0 3; 2 0];
a = prdataset(dataset,label);
w = fisherc(a);
figure,scatterd(a);
plotm(w);

label = [1; 1; 2];
dataset = [0 -1; 0 3; 2 0];
a = prdataset(dataset,label);
w = fisherc(a);
figure,scatterd(a);
plotm(w);


%%% Exercise 5.6 %%%
% b.nearest mean classifier provide the best performance.

% 1st try
trn = gendats([50 50],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 2nd try
trn = gendats([50 50],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 3rd try
trn = gendats([50 50],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 4th try
trn = gendats([50 50],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 5th try
trn = gendats([50 50],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% reduce training size
% c. the nmc still gives best performance. Altough the performance of
% nmc,ldc,ficherc,loglc experience degradation. But the svc remain stable 
% and it become the 2nd best, while usually it was always the lowest one.

% 1st try
trn = gendats([30 30],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 2nd try
trn = gendats([30 30],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 3rd try
trn = gendats([30 30],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 4th try
trn = gendats([30 30],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 5th try
trn = gendats([30 30],30);
tst = gendats([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% change into gendatd 
% d. the nmc performance become the worst. 
% in smaller training size, the svc perform the best.

% e. svm vs ldc : svm wins when the case are smaller training size 
% and difficult classification
% svm vs fihserc : svm wins when the case are only for smaller training
% size

% 1st try
trn = gendatd([50 50],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 2nd try
trn = gendatd([50 50],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 3rd try
trn = gendatd([50 50],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 4th try
trn = gendatd([50 50],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 5th try
trn = gendatd([50 50],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 1st try
trn = gendatd([30 30],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 2nd try
trn = gendatd([30 30],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 3rd try
trn = gendatd([30 30],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 4th try
trn = gendatd([30 30],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])

% 5th try
trn = gendatd([30 30],30);
tst = gendatd([1000 1000],30);
w = trn*{nmc,ldc,fisherc,loglc,svc};
e = tst*w*testc([])
