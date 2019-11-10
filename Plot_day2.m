%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all

%% Task 2.2 offset on e
tittel = 'Response with pd regulator different K_p and K_d';

figure;
hold on
title(tittel);
hold on
grid on
X1 = values_day2.time;
Y1 = values_day2_1.signals.values(:,1); %%get values from pitch reference
Y2 = values_day2_1.signals.values(:,2); %%get values from encoder pitch, experiment 1

Y3 = values_day2_2.signals.values(:,2); %%get values from encoder pitch, experiment 2
Y4 = values_day2_3.signals.values(:,2); %%get values from encoder pitch, experiment 3

plot(X1, Y1, 'b', X1, Y2, 'g', X1, Y3, 'r', X1, Y4, 'y');

legend('Pitch reference', 'Pitch response 1', 'Pitch response 2', 'Pitch response 3');
xlabel('Time(s)');
ylabel('Pitch(rad)');

hold off
hold off

print('Plot_task_2.2_1', '-depsc')
