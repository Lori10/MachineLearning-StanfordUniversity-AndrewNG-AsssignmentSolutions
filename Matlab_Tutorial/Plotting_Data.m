t = [0:0.01:0.98];
y1 = sin(2*pi*4*t)
y2 = cos(2*pi*4*t);
plot(t, y1);
hold on; % plot 2 graphs in the same figure
plot(t, y2, 'r');
xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('my plot');
print -dpng 'myPlot.png'; % save graph into a file
% cd 'C:\Desktop\Folder'; print -dpng 'myPlot.png' 
% import myPlot.png to workspace and display myPlot variable
help plot;
close % close the graph

% plot graph into different figures
% figure(1); plot(t, y1);
% figure(2); plot(t, y2);

subplot(1,2,1) % divides plot in 1x2 grid, access first element
plot(t, y1);
subplot(1,2,2) % divides plot in 1x2 grid, access second element
plot(t, y2);
axis([0.5 1 -1 1]); % set x,y axis range for plot2
clf; % clears a figure
A = magic(5);
imagesc(A); % colors correspends to matrix elements
imagesc(A), colorbar, colormap gray; 
a=1; b=2; c=3; % write many commands in same line
a=1, b=2, c=3;

