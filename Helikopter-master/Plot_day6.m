%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all

%% Task 6.4 Tuning (flying with encoder values)

figure;
hold on
title('State estimation with correction');
subplot(3,1,1);
hold on
grid on
X1 = Values_day6.time;
Y1 = Values_day6.signals.values(:,1);
Y2 = Values_day6.signals.values(:,7);
plot(X1, Y1, 'b', X1, Y2, 'g');
legend('Pitch estimation', 'Measured pitch');
xlabel('s');
ylabel('rad');

subplot(3,1,2);
hold on
grid on
Y3 = Values_day6.signals.values(:,2);
Y4 = Values_day6.signals.values(:,8);
plot(X1, Y3, 'b', X1, Y4, 'g');
legend('Pitch rate estimation', 'Measured pitch rate');
xlabel('s');
ylabel('rad/s');

subplot(3,1,3);
hold on
grid on
Y5 = Values_day6.signals.values(:,4);
Y6 = Values_day6.signals.values(:,10);
plot(X1, Y5, 'b', X1, Y6, 'g');
legend('Elevation rate estimation', 'Measured elevation rate');
xlabel('s');
ylabel('rad/s');
hold off
hold off

print('Plot_rapport_day6_4', '-depsc')

%% Task 6.5 The Kalman filter (flying with Kalman values)

figure;
hold on
title('States when flying using estimation as feedback');
subplot(3,1,1);
hold on
grid on
X1 = Values_day6.time;
Y1 = Values_day6.signals.values(:,1);
Y2 = Values_day6.signals.values(:,7);
plot(X1, Y1, 'b', X1, Y2, 'g');
legend('Pitch estimation', 'Measured pitch');
xlabel('s');
ylabel('rad');

subplot(3,1,2);
hold on
grid on
Y3 = Values_day6.signals.values(:,2);
Y4 = Values_day6.signals.values(:,8);
plot(X1, Y3, 'b', X1, Y4, 'g');
legend('Pitch rate estimation', 'Measured pitch rate');
xlabel('s');
ylabel('rad/s');

subplot(3,1,3);
hold on
grid on
Y5 = Values_day6.signals.values(:,4);
Y6 = Values_day6.signals.values(:,10);
plot(X1, Y5, 'b', X1, Y6, 'g');
legend('Elevation rate estimation', 'Measured elevation rate');
xlabel('s');
ylabel('rad/s');
hold off
hold off

print('Plot_rapport_day6_5', '-depsc')
