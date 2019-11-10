figure;
hold on
title('pitch_with_integral_action');
subplot(2,1,1);
hold on
grid on
X1 = ans1.time;
Y1 = ans1.signals.values(:,1);
Y2 = ans1.signals.values(:,5);
plot(X1, Y1, 'b', X1, Y2, 'g');
legend('Pitch ref', 'Pitch');
xlabel('Time');
ylabel('Pitch');

subplot(2,1,2);
hold on
grid on
Y3 = ans1.signals.values(:,2);
Y4 = ans1.signals.values(:,8);
plot(X1, Y3, 'b', X1, Y4, 'g');
legend('Elev rate ref', 'Elev rate');
xlabel('Time');
ylabel('Elev rate');
hold off
hold off

print('Plot_rapport', '-depsc')