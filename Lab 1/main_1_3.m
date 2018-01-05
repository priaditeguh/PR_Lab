close all
clear

addpath('C:\prtools');
addpath('C:\coursedata');
addpath('kimia');

% Exercise 1.12 
delfigs % delete all figures
obj1 = kimia_images; % load 12 objects for 18 classes
obj1 = seldat(obj1,[3:3:18]); % select the classes 3,6,9,12,15 and 18
figure(1); show(obj1); % show raw data

obj2 = im_box(obj1,0,1); % put objects in a square box (aspect ratio = 1)
figure(2); show(obj2); % to create square images

obj3 = im_rotate(obj2); % rotate images to same orientation
figure(3); show(obj3); % show data

obj4 = im_resize(obj3,[20 20]);% resize images to 20 x 20 pixels
figure(4); show(obj4); % show data

obj5 = im_box(obj4,1,0); % create empty box around objects
figure(5); show(obj5); % show data

showfigs % show all figures on the screen

obj_test1 = obj1(1:12:37,:);
figure, show(obj_test1); % selects a single object out of the first 4 classes

obj_test2 = im_box(obj_test1,0,1); % put objects in a square box (aspect ratio = 1)
figure, show(obj_test2); % to create square images

% im_rotate rotates the images into same orientation
% this function is important to make variation (orientation based) for the
% dataset
obj_test3 = im_rotate(obj_test2); % rotate images to same orientation
figure, show(obj_test3); % show data

% 20x20 pixels because it can retain its form while its size is reduced
obj_test4 = im_resize(obj_test3,[10 10]);% resize images to 10 x 10 pixels
figure, show(obj_test4); % show data
obj_test5 = im_resize(obj_test3,[20 20]);% resize images to 20 x 20 pixels
figure, show(obj_test5); % show data
obj_test6 = im_resize(obj_test3,[30 30]);% resize images to 30 x 30 pixels
figure, show(obj_test6); % show data

% Exercise 1.13
preproc = im_box([],0,1)*im_rotate*im_resize([],[20 20])*im_box([],1,0);
obj = seldat(obj1,2); % Use just class 2
obj = obj*preproc; % normalize
figure, show(obj); % show data
mean_set = im_mean(obj) % measure (x,y) of centers of gravity
mean_data = double(mean_set) % convert them (unpack)

% the mean_data has two column. x position is obtain by multiplying the
% first coloumn with 20 pixel. y pos is obtained by multiplying the
% second coloumn with 20 pixel 

pos_xy = integer(mean_data * 20);

figure, hist3(mean_data)
figure, scatterd(mean_set,'legend')

obj_2 = seldat(kimia_images,[2 13]); % Use class 2 and 13
obj_2 = obj_2*preproc; % normalize
figure, show(obj_2); % show data
mean_set2 = im_mean(obj_2) % measure (x,y) of centers of gravity
mean_data2 = double(mean_set2) % convert them (unpack)

% show center of gravity of class 2 and 13
figure, scatterd(mean_set2,'legend') 