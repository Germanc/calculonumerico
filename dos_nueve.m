alpha = 0.25;
beta = 1;
gamma = 0.01;
delta = 0.01;
z0 = [30, 80];
T0=0;
Tf=10;
h=0.01;
f=@(t,z)[-alpha*z(1)+gamma*z(1)*z(2), beta*z(2)-delta*z(1)*z(2)];

[t,z] = euler(f, [T0, Tf], z0, h);

length(t)
length(z)
subplot(3,1,1)
plot(t, z(:,1))
title("Predador")
subplot(3,1,2)
plot(t, z(:,2))
title("Presa")
subplot(3,1,3)
title("Presa en funcion de predador")
plot(z(:,2), z(:,1))
