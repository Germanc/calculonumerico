function [t,z]=euler(f,T, z0, h)
    n=floor((T(2)-T(1))/h);
    z(1,:) = z0;
    t(1) = T(1);
    for i=1:n
        z(i+1,:) = z(i,:) + h*f(T(1)+i, z(i,:));
        t(i+1) = T(1)+i*h;
    end