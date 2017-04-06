function [t,z]=euler_modificado(f,T, z0, h)
    t = [T(1):h:T(2)];
    z(1,:) = z0;
    for i=1:(length(t)-1)
        z(i+1,:) = z(i,:) + h*f(t(i)+(h/2), (h/2)*f(t(i),z(i,:)));
    end
