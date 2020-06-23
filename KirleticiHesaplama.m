tablo =readtable('veri.xlsx');

tarih =tablo.Var1;

pm10 =[nanmin(tablo.PM10__g_m__) ;nanmax(tablo.PM10__g_m__) ;
    nanmean(tablo.PM10__g_m__);mode(tablo.PM10__g_m__);nanstd(tablo.PM10__g_m__);nanmedian(tablo.PM10__g_m__)];

so2 =[nanmin(tablo.SO2__g_m__) ;nanmax(tablo.SO2__g_m__);nanmean(tablo.SO2__g_m__);
    mode(tablo.SO2__g_m__);nanstd(tablo.SO2__g_m__);nanmedian(tablo.SO2__g_m__)];

co =[nanmin(tablo.CO__g_m__) ;nanmax(tablo.CO__g_m__);nanmean(tablo.CO__g_m__);
    mode(tablo.CO__g_m__);nanstd(tablo.CO__g_m__);nanmedian(tablo.CO__g_m__)];

no2 =[nanmin(tablo.NO2__g_m__);nanmax(tablo.NO2__g_m__);nanmean(tablo.NO2__g_m__);
    mode(tablo.NO2__g_m__);nanstd(tablo.NO2__g_m__);nanmedian(tablo.NO2__g_m__)];

nox=[nanmin(tablo.NOX__g_m__);nanmax(tablo.NOX__g_m__);nanmean(tablo.NOX__g_m__);
    mode(tablo.NOX__g_m__);nanstd(tablo.NOX__g_m__);nanmedian(tablo.NOX__g_m__)];

o3=[nanmin(tablo.O3__g_m__) ;nanmax(tablo.O3__g_m__) ;nanmean(tablo.O3__g_m__);
    mode(tablo.O3__g_m__);nanstd(tablo.O3__g_m__);nanmedian(tablo.O3__g_m__)];


plot(tarih,tablo.PM10__g_m__,'r');

hold on;

plot(tarih,tablo.SO2__g_m__,'g');

hold on;

plot(tarih,tablo.CO__g_m__,'m');

hold on;

plot(tarih,tablo.NO2__g_m__,'b');

hold on;

plot(tarih,tablo.NOX__g_m__,'y');

hold on;

plot(tarih,tablo.O3__g_m__,'c');
hold on;

legend('PM10 ( µg/m³ )', 'SO2 ( µg/m³ )', 'CO ( µg/m³ )',...
    'NO2 ( µg/m³ )', 'NOX ( µg/m³ )', 'O3 ( µg/m³ )');


matris =[pm10,so2,co,no2,nox,o3];


sonucTablo = array2table(matris,...
    'VariableNames',{'PM10 ( µg/m³ )','SO2 ( µg/m³ )','CO ( µg/m³ )', ...
   'NO2 ( µg/m³ )','NOX ( µg/m³ )' ,'O3 ( µg/m³ )'},'RowNames',{'Minumum' 'Maksimum' 'Ortalama' 'Mod' 'Standart Sapma','Medyan'});

writetable(sonucTablo,'sonucVeri.xlsx');
disp(T);

