data_path = "C:\egzamin\data\"

temp1 = imread(fullfile(data_path, 't1_lst2023_Jul_Aug.tif'));
ndvi1 = imread(fullfile(data_path, 't1_ndvi2023_Jul_Aug.tif'));
temp2 = imread(fullfile(data_path, 't1_lst2024May.tif'));
ndvi2 = imread(fullfile(data_path, 't1_ndvi2024May.tif'));

figure, imagesc(temp1), colormap('cool'), colorbar, title('T1');
figure, imagesc(ndvi1), colormap('summer'), colorbar, title('NDVI1');
figure, imagesc(temp2), colormap('cool'), colorbar, title('T2');
figure, imagesc(ndvi2), colormap('summer'), colorbar, title('NDVI2');

figure, histogram(temp1(:), 50), title('Histogram T1');
figure, histogram(ndvi1(:), 50), title('Histogram NDVI1');
figure, histogram(temp2(:), 50), title('Histogram T2');
figure, histogram(ndvi2(:), 50), title('Histogram N2');

figure, scatter(ndvi1(:), temp1(:), 5, 'r', 'filled'), xlabel('NDVI'), ylabel('Temp'), title('NDVI 1 vs Temp 1');
figure, scatter(ndvi2(:), temp2(:), 5, 'b', 'filled'), xlabel('NDVI'), ylabel('Temp'), title('NDVI 2 vs Temp 2');
