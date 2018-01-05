function f = normal_dist(a,b,t)

    p1 = 2/((b-a)*t);
    p2 = sin(0.5*(b-a)*t);
    p3 = exp(i*(a+b)*t*0.5);
    
    f = p1*p2*p3;
end 