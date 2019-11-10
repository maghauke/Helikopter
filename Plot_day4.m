%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all

%% Task 4.1

figure;
hold on
title('Time series. heli on ground');
subplot(2,1,1);
hold on
grid on
X1 = ans2.time;
Y1 = ans2.signals.values(:,4);
Y2 = ans2.signals.values(:,5);
Y3 = ans2.signals.values(:,6);
plot(X1, Y1, 'b', X1, Y2, 'g', X1, Y3, 'r');
legend('Gyro x', 'Gyro y', 'Gyro z');
xlabel('s');
ylabel('rad/s');

subplot(2,1,2);
hold on
grid on
Y4 = ans2.signals.values(:,7);
Y5 = ans2.signals.values(:,8);
Y6 = ans2.signals.values(:,9);
plot(X1, Y4, 'b', X1, Y5, 'g', X1, Y6, 'r');
legend('Accel x', 'Accel y','Accel z');
xlabel('s');
ylabel('m/s^2');
hold off
hold off

print('Plot_rapport_day4_2', '-depsc')