function [t,z]=rk(f,T, z0, h)
    t = [T(1):h:T(2)];
    z(1,:) = z0;
    for i=1:(length(t)-1)
        K1 = f(t(i), z(i,:));
        K2 = f(t(i)+h/2, z(i,:)+h*K1/2);
        K3 = f(t(i)+h/2, z(i,:)+h*K2/2);
        K4 = f(t(i)+h/2, z(i,:)+h*K3);
        z(i+1,:) = z(i,:) + (h/6)*(K1+2*K2+2*K3+K4);
    end
