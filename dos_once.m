gamma_c = 0.0058;
gamma_m = 3.74*10^(-5);
g = 9.81;
m_c = 16;
m_m = 0.0082;
z0 = [55.8, 0];

T0=0;
Tf=50;
h=0.01;

% Creo que es con menos el termino cuadratico en la velocidad
% Será un error de la guía ? Tengo que consultarlo
f_c=@(t_m,z_c)[z_c(2), -(gamma_c/m_c)*z_c(2)^2-g];
f_m=@(t_m,z_m)[z_m(2), -(gamma_m/m_m)*z_m(2)^2-g];

[t_c,z_c] = euler_modificado(f_c, [T0, Tf], z0, h);
[t_m,z_m] = euler_modificado(f_m, [T0, Tf], z0, h);

plot(t_c, z_c(:,1), t_m, z_m(:,1))
