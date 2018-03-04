% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %           Arithmitiki analisi         %
% %           Perrakis Stylianos          %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% Ploting matterial
clc
clear
%% Exc 1
fprintf("========*==========\n")
acc1 = 5e-7;
f1 =  @(x)exp((sin(x)).^3)+ x.^6 - (2*x.^4) - x.^3 - 1;
df11 = @(x) 3.*(exp(sin(x).^3)).*cos(x).*(sin(x)).^2 + (6*x.^5) - (8*x.^3) - (3*x.^2);
df12 = @(x) 9*exp(sin(x).^3).*cos(x).^2.*sin(x).^4-3.*exp(sin(x).^3).*sin(x).^3+6.*exp(sin(x).^3).*cos(x).^2.*sin(x)+30.*x.^4-24.*x.^2-6*x;
MyPlot(f1,df11,df12)
% First Root - Bisection
[solve,times] = bisection(f1,-2,-0.2,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% Second Root - Bisection
[solve,times] = bisection(f1,1,2,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% Third Root - Bisection
% [solve,times] = bisection(f1,-0.1,0.3,acc1);
% fprintf('Root at x = %0.6f\n', solve);
% fprintf('itterations made = %d\n', times);

fprintf("*=======*Bisection End*========*\n");
% First Solve Newton
a = -2;
[solve,times]=NR(f1,df11,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n',times);
% Second Solve Newton
a = 2;
[solve,times]=NR(f1,df11,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n',times);
% Third Solve Newton
a = 0.5;
[solve,times]=NR(f1,df11,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n',times);

fprintf("*=======*Newton-Raphson End*========*\n");

% First Regula-Falsi
a = -2;
a1 = -1;
[solve,times]=RF(f1,a1,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% Second Regula-Falsi
a = -1;
a1 = 1;
[solve,times]=RF(f1,a1,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% Third Regula-Falsi
a = 2;
a1 = 1;
[solve,times]=RF(f1,a1,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
fprintf("*=======*Regula-Falsi End*========*\n");
pause;
%% Askhsh 2
f2 = @(x) 54*x.^6 + 45*x.^5 - 102*x.^4 - 69*x.^3 + 35*x.^2 + 16*x - 4;
df2 = @(x) 324*x.^5 + 225*x.^4 - 408*x.^3 - 207*x.^2 + 70*x + 16;
ddf2 = @(x) 1620*x.^4 + 900*x.^3 - 1224*x.^2 - 414*x +70;
close Figure 1
MyPlot(f2,df2,ddf2)
% NR modified 1
a = -2;
[solve,times]=NR2(f2,df2,ddf2,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% NR modified 2
a = -1;
[solve,times]=NR2(f2,df2,ddf2,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% NR modified 3
a = 0.1;
[solve,times]=NR2(f2,df2,ddf2,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% NR modified 4
a = 0.6;
[solve,times]=NR2(f2,df2,ddf2,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
% NR modified 5
a = 2;
[solve,times]=NR2(f2,df2,ddf2,a,acc1);
fprintf('Root at x = %0.6f\n', solve);
fprintf('itterations made = %d\n', times);
fprintf("*=======*Newton - Raphson 2 End*========*\n");


[solution,acc] = bisection2(f2,-2,-0.7,acc1);
fprintf('Root at x = %0.6f\n', solution);
fprintf('itterations made = %d\n', acc);
% [solution,acc] = bisection2(f2,solution,-0.5,acc1);
% fprintf('Root at x = %0.6f\n', solution);
% fprintf('itterations made = %d\n', acc);
[solution,acc] = bisection2(f2,-0.4,0.4,acc1);
fprintf('Root at x = %0.6f\n', solution);
fprintf('itterations made = %d\n', acc);
[solution,acc] = bisection2(f2,0.4,0.7,acc1);
fprintf('Root at x = %0.6f\n', solution);
fprintf('itterations made = %d\n', acc);
[solution,acc] = bisection2(f2,0.7,1.6,acc1);
fprintf('Root at x = %0.6f\n', solution);
fprintf('itterations made = %d\n', acc);
fprintf("*=======*Bisection 2 End*========*\n");

%Regula - Falsi modified
    % FR modified 1

    [solve,times]=RF2(f2,-2,-1.4,-1.2,acc1);
    fprintf('Root at x = %0.6f\n', solve);
    fprintf('itterations made = %d\n', times);
    % FR modified 2

     [solve,times]=RF2(f2,-2,-1.5,-1,acc1);
    fprintf('Root at x = %0.6f\n', solve);
    fprintf('itterations made = %d\n', times);
    % FR modified 3

    [solve,times]=RF2(f2,-0.1,0,0.3,acc1);
    fprintf('Root at x = %0.6f\n', solve);
    fprintf('itterations made = %d\n', times);
    % FR modified 4

    [solve,times]=RF2(f2,0.4,0.45,0.6,acc1);
    fprintf('Root at x = %0.6f\n', solve);
    fprintf('itterations made = %d\n', times);
    % FR modified 5

    [solve,times]=RF2(f2,2,1.5,1,acc1);
    fprintf('Root at x = %0.6f\n', solve);
    fprintf('itterations made = %d\n', times);
    fprintf("*=======*Regula - Falsi 2 End*========*\n");
    %xrwstaw tin FR - diastimata - Bisection

pause;
%% Exc 3
% 1
A = magic(3);
b = [1,2,3];
[P,L,U] = DecomLu(A);
n = length(b);
y = zeros(n,1);
for i=1:n
    y(i) = b(i)-L(i,:)*y;
end
fprintf("\n==Solution LU===\n")
disp(y);
% 2
[L,U] = Cholesky(A)
pause;
%% Exc 4
fprintf("\n============================Exc4=========================\n")
Erwtima4()
fprintf("\n============================****=========================\n")
pause ; 
%% Exc 5
x=[-0.9:0.2:0.9];
f = sin(pi*x);
xquest = x;

subplot(1,5,1)
plot(xquest,f)
title('Sinx')
grid on

subplot(1,5,2)
poly = interp1(x,f,xquest,'linear');
plot(xquest,poly,':go');
grid on
title('polynimic')

subplot(1,5,3)
splines = interp1(x,f,xquest,'spline');
plot(xquest,splines,':ro');
grid on
title('Spline');

for i = 1 : length(xquest)
    a(i)=lstSqr(x,f,4,xquest(i));
end
subplot(1,5,4)
plot(xquest,a,':.');
grid on
title('Least Square');

for i = 1 : length(x)
    approx(i)=Lagrange(f1,x,xquest(i));
end

subplot(1,5,5)
plot(xquest,approx,'r');
grid on
title('Lagrance');
pause ;
x = [-pi:pi/100:pi];
f = @(x) sin(x);
f1 = f(x);
for i = 1 : length(x)
    a(i)=lstSqr(x,f1,4,x(i));
end
splines = interp1(x,f1,x,'spline');
poly = interp1(x,f1,x,'linear');

%  fl = [-3,-2,-1];
%  xl = [-1,0,1];

a1 = abs(a-f1);
a2 = abs(splines-f1);
a3= abs(poly-f1);

subplot(1,3,1)
plot(x,a1,':.');
title('Least - Square')

subplot(1,3,2)
plot(x,a2,':.');
title('Splines')

subplot(1,3,3)
plot(x,a3,':.');
title('Linear')
%% Askhsh 6
x1 = x(101:152);
fi = splines(101:152);
[E1,err1] = intTable2(x1,fi);
[E2,err2]= Simpson(x1,fi);
%Thwritika to Embadon apo (0-pi/2) einai 1 ,
%Ara to Sfalma einai A = Abs(E1-1)
fprintf("|=================*=================|");
fprintf("\nE1 = %d Table integration\n",E1);
fprintf("\nErrorT= %d for Table integration\n",abs(E1-1));
fprintf("\nErrorA= %d for Table integration\n",err1);
fprintf("\nE2 = %d Simpson integration\n",E2);
fprintf("\nErrorT = %d Simpson integration\n",abs(E2-1));
fprintf("\nErrorA= %d Simpson integration\n",err2);
fprintf("|=================*=================|");
clear
pause;
%% Askhsh 7
%Metoxh - 1 EEE
%after 1 day 23,0700
%after 5 days 22,7800

fprintf("\n*************************************")
fprintf("\n*~EEE~*\n");
A1 = [21.4600,21.5700,21.6300,21.5400,22.1000,23.0100,23.0900,23.3200,23.0300,22.9900];
xi = [length(A1):length(A1)+5];

for i = 1 : length(xi)
    metoxh2(i)=lstSqr([1:length(A1)],A1,2,xi(i));
    metoxh3(i)=lstSqr([1:length(A1)],A1,3,xi(i));
    metoxh4(i)=lstSqr([1:length(A1)],A1,4,xi(i));
end
subplot(1,3,1)
plot([1:length(A1)],A1,':.');

title('EEE')
hold on
plot(xi,metoxh2,':r*');
plot(xi,metoxh3,':g*');
plot(xi,metoxh4,':o');
fprintf("\n==============Second===============\n");
fprintf(" == Next day == \n Est2 = %d\n == 5 days later == \n Est2 =%d",metoxh2(1),metoxh2(1));
fprintf("\n==============Third===============\n");
fprintf(" == Next day == \n Est3 = %d\n == 5 days later == \n Est3 = %d",metoxh3(1),metoxh3(2));
fprintf("\n==============Fourth===============\n");
fprintf(" == Next day == \n Est4 = %d\n == 5 days later == \n Est4 = %d",metoxh4(1),metoxh4(2));
fprintf("\n==============END===============\n");
clear
%%
%Metoxh - 2
%next day closing 0,3000
%after 5 days closing 0,3000
fprintf("*************************************")
fprintf("\n*~LEBP~*\n");
A1 = [0.2800,0.2800,0.2870,0.3270,0.3270,0.3270,0.3270,0.3270,0.3270,0.3270];
xi = [length(A1):length(A1)+5];

for i = 1 : length(xi)
    metoxh2(i)=lstSqr([1:length(A1)],A1,2,xi(i));
    metoxh3(i)=lstSqr([1:length(A1)],A1,3,xi(i));
    metoxh4(i)=lstSqr([1:length(A1)],A1,4,xi(i));
end
subplot(1,3,2)
plot([1:length(A1)],A1,':.');
fprintf("\n*************************************\n")
title('LEBP')
hold on
plot(xi,metoxh2,':r*');
plot(xi,metoxh3,':g*');
plot(xi,metoxh4,':o');
fprintf("\n==============Second===============\n");
fprintf(" == Next day == \n Est2 = %d\n == 5 days later == \n Est2 =%d",metoxh2(1),metoxh2(1));
fprintf("\n==============Third===============\n");
fprintf(" == Next day == \n Est3 = %d\n == 5 days later == \n Est3 = %d",metoxh3(1),metoxh3(2));
fprintf("\n==============Fourth===============\n");
fprintf(" == Next day == \n Est4 = %d\n == 5 days later == \n Est4 = %d",metoxh4(1),metoxh4(2));
fprintf("\n==============END===============\n");
clear
%% Metoxh - 3 Organismos Tilepikoinwniwn Ellados
%Next day closing 8,5200
%After days closing 8,7000
fprintf("*************************************")
fprintf("\n*~OTE~*");
A1 = [8.6800,8.7800,8.7200,8.4300,8.4000,8.4000,8.5100,8.4900,8.5500,8.6000,8.4500,8.5800];
xi = [length(A1):length(A1)+5];
for i = 1 : length(xi)
    metoxh2(i)=lstSqr([1:length(A1)],A1,2,xi(i));
    metoxh3(i)=lstSqr([1:length(A1)],A1,3,xi(i));
    metoxh4(i)=lstSqr([1:length(A1)],A1,4,xi(i));
end
subplot(1,3,3)
plot([1:length(A1)],A1,':.');
title('OTE')
hold on
plot(xi,metoxh2,':r*');
plot(xi,metoxh3,':g*');
plot(xi,metoxh4,':o');
fprintf("\n==============Second===============\n");
fprintf(" == Next day == \n Est2 = %d\n == 5 days later == \n Est2 =%d",metoxh2(1),metoxh2(1));
fprintf("\n==============Third===============\n");
fprintf(" == Next day == \n Est3 = %d\n == 5 days later == \n Est3 = %d",metoxh3(1),metoxh3(2));
fprintf("\n==============Fourth===============\n");
fprintf(" == Next day == \n Est4 = %d\n == 5 days later == \n Est4 = %d",metoxh4(1),metoxh4(2));
fprintf("\n==============END===============\n");
h = msgbox('Epitrepete na peseis epibalete na sikotheis','Metoxes');