% Exercise 2.8
point = randn(1000,2);
a = prdataset(point);
scatterd(a)
w = gaussm(a);
plotm(w)

scale = [3 0; 0 1];
alpha = pi/3;
rotate = [cos(alpha) -sin(alpha); sin(alpha) cos(alpha)];

b = a*scale*rotate;
figure,scatterd(b)
x = gaussm(b);
plotm(x)

% investigate other angle
% 45 degree
alpha = pi/4;
rotate = [cos(alpha) -sin(alpha); sin(alpha) cos(alpha)];
b = a*scale*rotate;
figure,scatterd(b)
x = gaussm(b);
plotm(x)


% 60 degree
alpha = pi/3;
rotate = [cos(alpha) -sin(alpha); sin(alpha) cos(alpha)];
b = a*scale*rotate;
figure,scatterd(b)
x = gaussm(b);
plotm(x)


% 90 degree
alpha = pi/2;
rotate = [cos(alpha) -sin(alpha); sin(alpha) cos(alpha)];
b = a*scale*rotate;
figure,scatterd(b)
x = gaussm(b);
plotm(x)

% The correlation becomes maximum when the gradient of the curve is
% approach 1 and cocentrated to the line. So the answer is 45

% Exercise 2.10
% the code below will form a 2D gaussian distribution.
% In each plot, they have different shape, because of only few samples
% if more or infinite samples are used, each plot will look more similar
for i = 1:8
	a = prdataset(randn(5,2));
	scatterd([-3 -3;3 3],'.w') % trick to set the figure axes about right
	plotm(gaussm(a))
	hold on
	pause
end
hold off