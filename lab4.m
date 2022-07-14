%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Kemalettin KARA - Homework-4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms s Ieq Ceq k1 k2 k3 Keq;
C_s = k1 + k2*s- k3/s;
G_s = 1/(Ieq*s^2+Ceq *s+Keq);
X_X_ref_tf_pid=(C_s*G_s)/(1+C_s*G_s);

K_all=[k1, k2, k3];

A_sys = [0, 1, 0;
        -Keq/Ieq, -Ceq/Ieq , 0;
        -1,0,0];

B_sys = [0;
        1/Ieq;
        0];
CE=det((s*eye(3) - (A_sys - B_sys * K_all)));

CE_select = (s+5)*(s+10)*(s+15);
a_coeff = fliplr(coeffs(CE_select));

a0 = double(a_coeff(1));
a1 = double(a_coeff(2));
a2 = double(a_coeff(3));
a3 = double(a_coeff(4));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Constant 
rho = 1500;
r = 0.30;
d = 0.20;
Cd = 1;

G=73*10^9;
ds=0.005;
Ds=0.12;
N=10;

Ieq = 3/2*rho*pi*(r^3)*d;
Ceq = Cd*2*pi*d*(r^2);
Keq = (G*ds^4)/(8*Ds^3*N);

k1 = a2*Ieq - Keq ;
k2 = Cd*2*pi*d*(r^2);
k3 = -a3*Ieq;

%% Constant to Simulink
general_constant = [Ieq;
                    Ceq;
                    k1;
                    k2;
                    k3];











