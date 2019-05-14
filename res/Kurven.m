clear;

% Spannungsverlauf Lichtschranke
f1 = figure; 
line([0, 1], [3.3, 3.3], 'LineWidth',2);
line([1, 1], [3.3, 0], 'LineWidth',2);
line([1, 2], [0, 0], 'LineWidth',2);
line([2, 2], [0, 3.3], 'LineWidth',2);
line([2, 7], [3.3, 3.3], 'LineWidth',2);
ax = gca;
ax.XLim = [0 7];
ax.YLim = [0 4];
title('Zeitlicher Verlauf von U_{Out}');
xlabel('t in ms'); 
ylabel('U in V');
saveas(f1, 'Lichtschranke_Spannungsverlauf', 'epsc');

% Entladungskurve Kondensator
Entladung = readtable('Messwerte Entladung');
f2 = figure;
plot(Entladung.Zeit, Entladung.Kanal_1, 'LineWidth', 2);
title('Entladung des Kondensators');
xlabel('t in s'); 
ylabel('U in V');
saveas(f2, 'Kondensator_Entladung_Messung', 'epsc');

% Ladungskurve Kondensator 1 Lichtschranke
Ladung_1 = readtable('Messwerte Ladung 1 Lichtschranke');
f3 = figure;
plot(Ladung_1.Zeit, Ladung_1.Kanal_1, 'LineWidth', 2);
title('Ladung und Entladung des Kondensators bei 1 Lichtschranke');
xlabel('t in s'); 
ylabel('U in V');
saveas(f3, 'Kondensator_1_Lichtschranke_Messung', 'epsc');

% Durchquerung schnell
Durchquerung_schnell = readtable('Lichtschranke 2 schnell');
f4 = figure;
plot(Durchquerung_schnell.Zeit, Durchquerung_schnell.Kanal_1, 'LineWidth', 2);
title('Schnelle Durquerung beider Lichtschranken');
xlabel('t in s'); 
ylabel('U in V');
saveas(f4, 'Lichtschranke_2_schnell_Messung', 'epsc');

% Durchquerung mittel
Durchquerung_mittel = readtable('Lichtschranke 2 medium');
f5 = figure;
plot(Durchquerung_mittel.Zeit, Durchquerung_mittel.Kanal_1, 'LineWidth', 2);
title('Mittlere Durquerung beider Lichtschranken');
xlabel('t in s'); 
ylabel('U in V');
saveas(f5, 'Lichtschranke_2_medium_Messung', 'epsc');

% Durchquerung langsam
Durchquerung_langsam = readtable('Lichtschranke 2 langsam');
f6 = figure;
plot(Durchquerung_langsam.Zeit, Durchquerung_langsam.Kanal_1, 'LineWidth', 2);
title('Langsame Durquerung beider Lichtschranken');
xlabel('t in s'); 
ylabel('U in V');
saveas(f6, 'Lichtschranke_2_langsam_Messung', 'epsc');