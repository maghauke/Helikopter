%% Just press f5 to run everything, and read the section that has something you need

% Press (ctrl+enter) to run the section your cursor is currently in ( Marked in yellow)
clear all
close all

%% Task 3.2 offset on e
tittel = 'Response with pd regulator';

figure;
hold on
title(tittel);
hold on
grid on
X1 = pitch_ref_elev_and_pitch_day2.time;
Y1 = pitch_ref_elev_and_pitch_day2.signals.values(:,1); %%get values from pitch reference
Y2 = pitch_ref_elev_and_pitch_day2.signals.values(:,2); %%get values from encoder pitch
plot(X1, Y1, 'b', X1, Y1, 'g');

legend('Pitch reference', 'Pitch response');
xlabel('Time(s)');
ylabel('Pitch(rad)');

hold off
hold off

print('Plot_task_2.2_1', '-depsc')
