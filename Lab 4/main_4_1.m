%%%%%%%%  4.1 The perceptron  %%%%%%%% 

%%% Exercise 4.2 %%%
% c. yes, it separate the classes
% d. the program will run forever

a = gendats([20 20],2,6);

X = double(a);
X = horzcat(X,ones(length(X),1));
[label,labelList] = getnlab(a);

delta_x = zeros(length(label),1);
for i = 1:length(label)
    if label(i) == 1
        delta_x(i) = -1;
    elseif label(i) == 2
        delta_x(i) = 1;
    end
end

w = [0 0 0];
p = 1.0;
t = 0;

while true
    Y = [];
    delta_y = [];
    for i=1:length(X)
        if  delta_x(i)*sum(bsxfun(@times,w,X(i,:))) >= 0
            Y = vertcat(Y,X(i,:));
            delta_y = vertcat(delta_y,delta_x(i));
        end
    end
    if isempty(Y)
        break;
    end
    w_t = w - p*sum(bsxfun(@times,delta_y,Y));
    w = w_t;
end

figure, scatterd(a);
V = axis;
x_axis = V(1):0.1:V(2);
y_axis = -(x_axis*w(1)/w(2) + w(3)/w(2)); 
hold on; plot(x_axis,y_axis)

%%%%%%%%  4.2 Least squares  %%%%%%%% 
%%% Exercise 4.4 and 4.5 %%%
% c. they both are equal

w = (inv(X'*X)*X')*delta_x;
y_axis = -(x_axis*w(1)/w(2) + w(3)/w(2)); 
hold on; plot(x_axis,y_axis,'r')

w = fisherc(a);
plotc(w,'k--');

%%%%%%%%  4.3 Bias-variance dilemma  %%%%%%%% 
%%% Exercise 4.6 %%%
% the part that are always incorrectly classified contributes to bias
% the part that the classification often disagree contributes to variance

a = gendatb([10,10]);
w = fisherc(a);
figure, scatterd(a);
plotc(w);

[trn,tst] = gendat(a,0.5);
w = fisherc(trn);
plotc(w,'r');

[trn,tst] = gendat(a,0.7);
w = fisherc(trn);
plotc(w,'b');

[trn,tst] = gendat(a,0.6);
w = fisherc(trn);
plotc(w,'y');

[trn,tst] = gendat(a,0.8);
w = fisherc(trn);
plotc(w,'m');

[trn,tst] = gendat(a,0.9);
w = fisherc(trn);
plotc(w,'c');

%%% Exercise 4.7 %%%
% fisher classifier has less bias but bigger variance

w = parzenc(a);
figure, scatterd(a);
plotc(w);

[trn,tst] = gendat(a,0.5);
w = parzenc(trn);
plotc(w,'r');

[trn,tst] = gendat(a,0.7);
w = parzenc(trn);
plotc(w,'b');

[trn,tst] = gendat(a,0.6);
w = parzenc(trn);
plotc(w,'y');

[trn,tst] = gendat(a,0.8);
w = parzenc(trn);
plotc(w,'m');

[trn,tst] = gendat(a,0.9);
w = parzenc(trn);
plotc(w,'c');