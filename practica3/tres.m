function [t, y]= tres(m, k, h)
    y0 = 0;
    yn = 1;
    t0 = 0;
    tf = 10;
    t = [t0:h:tf];
    n= length(t);
    v = ones(n,1)*(k*h/m-2);
    w = ones(n-1,1);
    A = diag(v)+diag(w,1)+diag(w,-1);
    F = [-y0; zeros(n-2,1); -yn];
    length(t)
    n

    y = A\F;
    plot(t, y)
