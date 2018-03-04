%% My plot
function MyPlot(f1,df,df2)
x = [-2:1e-3:2];
y = f1(x);
h = df(x);
p = df2(x);
subplot(1,3,1)
plot(x,y);
title('Our function')
ylabel('f(x)')
xlabel('domain')
grid on
hold on

subplot(1,3,2)
plot(x,h);
acc = 6;
title('Derrivative')
ylabel('f`')
xlabel('domain')
grid on



subplot(1,3,3)
plot(x,p);
title('Derrivative second')
ylabel('f``')
xlabel('domain')
grid on

end