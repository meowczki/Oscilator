% Funkcja oscylator przyjmuj¹ca parametr omega2 (wartoœæ w^2)
% wektor dx/dt skladajcy sie z x i v
% 
function dxdt = oscylator(t,x,omega2)
dxdt=[x(2);-omega2*x(1)];
end