close all
clear

addpath('C:\prtools');

%%% 1.2 Creating artificial and real datasets %%%

% 1.6 
x = [ 0.7 0.3 0.2; 2.1 4.5 0; ...
    1.7 0.15 0.8; 3.1 0.1 5.9; ... 
    9.0 3.3 2.54; 7.7 8.3 4.2; ...
    3.6 4.8 0.99; 1.8 4.6 7.6; ...
    7.2 1.4 7.2; 2.7 5.3 2.0; ... 
    ];

% the difference between mean(x) and mean(x') is that mean('x) computes
% the average of transposed x matrix
m = mean(x)
sd = std(x) % standard deviation means variation of the data
m_2 = mean(x') 

% 1.7 
% outliers are dots that are scattered
plot(x(:,1),x(:,2),'b*');
figure,plot(x(:,1),x(:,3),'b*');

% 1.8 
% create labels
lab = [1;2;3;1;2;3;1;2;3;1];
a = prdataset(x,lab); % 10 objects, 3 features, 3 classes

% 1.9 Scatterplot
addpath('C:\coursedata');
a = boomerangs(50);
figure,scatterd(a)
figure,scatterd(a(:,[2:3]))
figure,scatterd(a,3)
figure,scatterd(a,'legend')

% 1.11 Real Image Data
addpath('kimia');
obj = kimia_images;
figure, show(obj,12) % 12 objects 18 classes
figure; show(obj(100,:)) % single image

x = im_features(obj,obj,{'Area','Perimeter','Eccentricity'});
+x; 

% 1.11 a
featset = seldat(x,[3 16]);
featset = double(featset)

% 1.11 b
a = kimia_images;
b = seldat(a,[3 16]); % select classes 3 and 16
figure, show(b)

% In featset, each image has 3 features (area,perimeter,eccentricity) 
% for 12 sample images. 
% the 13th image has [5455,0.6099,814.444]
% the first feature define area of the blobs
% the second feature define percentage of the remaining area

c = data2im(b,13); % select image 13
figure; imagesc(c); % show it on the screen
colormap gray % apply gray colormap

% 1.11 c
figure, scatterd(x,'legend')

