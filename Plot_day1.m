%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all

%% Task 1.2 offset on e
tittel = 'Parameter identification';

figure;
hold on
title(tittel);
hold on
grid on
X1 = encoder_states_day1.time;
Y1 = encoder_states_day1.signals.values(:,1); %%get values from encoder elevation
plot(X1, Y1, 'b');

legend('Elevation');
xlabel('Time');
ylabel('Elevation');

hold off
hold off

print('Plot_task_1.2_offset', '-depsc')

%% Task 1.2 finding V_s0
tittel = 'Parameter V_s_0';

figure;
hold on
title(tittel);
hold on
grid on
X1 = encoder_states_day1.time;
Y1 = encoder_states_day1.signals.values(:,1); %%get values from encoder elevation
plot(X1, Y1, 'b');

xlabel('Time');
ylabel('Elevation');
legend('Elevation');

hold off
hold off

print('Plot_task_1.2_vs0', '-depsc')

%% Task 1.3
tittel = 'Task 1.3';

figure;
hold on
title(tittel);
subplot(3,1,1);
hold on
grid on
X1 = encoder_states_day1.time;
Y1 = encoder_states_day1.signals.values(:,1);   %encoder value pitch
Y2 = linearized_states_day1.signals.values(:,1);%linearized equations estimate of pitch
plot(X1, Y1, 'b', X1, Y2, 'g');

legend('Pitch', 'Estimated pitch');
xlabel('Time(s)');
ylabel('Pitch(rad)');

subplot(3,1,2);
hold on
grid on
Y3 = encoder_states_day1.signals.values(:,2);   %encoder value elev
Y4 = linearized_states_day1.values(:,2);        %linearized equations estimate of elev
plot(X1, Y3, 'b', X1, Y4, 'g');
legend('Elevation', 'Estimated elevation');
xlabel('Time(s)');
ylabel('Elevation(rad)');

subplot(3,1,3);
hold on
grid on
Y5 = encoder_states_day1.signals.values(:,3);   %encoder value travel
Y6 = linearized_states_day1.signals.values(:,3);%linearized equations estimate of travel
plot(X1, Y5, 'b', X1, Y6, 'g');
legend('Travel', 'Estimated travel');
xlabel('Time(s)');
ylabel("Travel(rad)");

hold off
hold off

print('Plot_task_1.3', '-depsc')