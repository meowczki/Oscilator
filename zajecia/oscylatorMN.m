% Funkcja oscylator przyjmuj�ca parametr omega2 (warto�� w^2)


% Pierwszy element wektora dxdt odpowiada r�wnaniu 3a, a drugi 3b.
% Poni�szy skrypt ca�kuje numerycznie r�wnania oscylatora harmonicznego na przedziale [0 10] dla
% trzech warto�ci pr�dko�ci pocz�tkowych: 1, 2, 3. W ka�dym przypadku oscylator w chwili pocz�tkowej
% znajduje si� w pocz�tku uk�adu wsp�rz�dnych.
clear, clc;
omega2=1;

% [t,y] = ode45(odefun,tspan,y0), where tspan = [t0 tf], integrates the system of differential equations y?=f(t,y)
% from t0 to tf with initial conditions y0.
% tspan od 0 do 2pi
% y0 warunki poczatkowe
[t1, x1]= ode45(@(t,x) oscylator(t,x,omega2),[0 2*pi], [1,0]);
[t2, x2]= ode45(@(t,x) oscylator(t,x,omega2),[0 10], [0.8 0]);
% [t3, x3]= ode45(@(t,x) oscylator(t,x,omega2),[0 10], [0 3]);

% x jest macierz� o dw�ch kolumnach � w pierwszej znajduj� si� warto�ci po�o�enia (x), a w drugiej
% pr�dko�ci (v).
% Rysujemy trzy trajektorie (rozwi�zania) w przestrzeni fazowej:

% wykres po�o�enia
plot(t1,x1(:,1));

% wykres predkosci
plot(t1,x1(:,2));

% wykres przestrzeni fazowej
plot(x1(:,1),x1(:,2));
hold on
plot(x2(:,1),x2(:,2));

% plot(x1(:,1),x1(:,2)); hold on
% plot(x2(:,1),x2(:,2),'r');
% plot(x3(:,1),x3(:,2),'m'); hold off
% xlabel('x(t)')
% ylabel('v(t)')
