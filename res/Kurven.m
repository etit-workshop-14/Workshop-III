clear;

f1 = figure; 
line([0, 1], [3.3, 3.3], 'LineWidth',2);
line([1, 1], [3.3, 0], 'LineWidth',2);
line([1, 2], [0, 0], 'LineWidth',2);
line([2, 2], [0, 3.3], 'LineWidth',2);
line([2, 7], [3.3, 3.3], 'LineWidth',2);
ax = gca
ax.XLim = [0 7];
ax.YLim = [0 4];
title('Zeitlicher Verlauf von U_{Out}');
xlabel('t in ms') 
ylabel('U in V')
saveas(f1, 'Lichtschranke_Spannungsverlauf', 'epsc')