%% 极坐标
clear;clc;
theta = 0:0.01:2*pi;
rou = sin(theta);
subplot(211);
polarplot(theta,rou);
title('极坐标');

subplot(212);
[x,y] = pol2cart(theta,rou);
plot(x,y);
title('直角坐标');
grid on;
axis equal;
%% 对数坐标
clear;clc;clf;
t = 0.1:0.01:10;
y1 = log10(t);
y2 = exp(t);
x = 10.^t;
figure(1);
subplot(321);
plot(t,y1);
title('原图');
subplot(322);
semilogx(t,y1);
title('x轴取对数');

subplot(323);
plot(t,y2);
title('原图');
subplot(324);
semilogy(t,y2);
title('y轴取对数');

subplot(325);
plot(x,y2);
title('原图');
subplot(326);
loglog(x,y2);
title('双对数');

figure(2);
subplot(211);
yyaxis left;
plot(t,y1);
title('原图');
ylabel('原坐标轴(左)');

yyaxis right;
plot(t,y2);
legend('$log_{10}(t)$','$e^t$','interpreter','latex');

subplot(212);
yyaxis left;
plot(t,y1);
yyaxis right;
semilogy(t,y2);
ylabel('对数坐标轴(右)');
title('对数坐标轴');


