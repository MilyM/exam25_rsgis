%% Martyna Świercz, data t3
%% Task 1 Analysis of the correlation between temperature and NDVI

temperatureFile1 = 'C:/Users/Marynia/Desktop/AGH_2/Python_matlab/egzamin/task1/task1/t3_lst2023_Jul_Aug.tif';
temperatureFile2 = 'C:/Users/Marynia/Desktop/AGH_2/Python_matlab/egzamin/task1/task1/t3_lst2024May.tif';
ndviFile1 = 'C:/Users/Marynia/Desktop/AGH_2/Python_matlab/egzamin/task1/task1/t3_ndvi2023_Jul_Aug.tif';
ndviFile2 = 'C:/Users/Marynia/Desktop/AGH_2/Python_matlab/egzamin/task1/task1/t3_ndvi2024May.tif';

temp1 = imread(temperatureFile1);
temp2 = imread(temperatureFile2);
ndvi1 = imread(ndviFile1);
ndvi2 = imread(ndviFile2);

% Display temperature and NDVI images for July-August 2023
figure;
subplot(1,2,1);
imagesc(temp1);
colormap(hot);
colorbar;
title('Temperature July-August 2023');

subplot(1,2,2);
imagesc(ndvi1);
colormap(jet);
colorbar;
title('NDVI July-August 2023');

% Display temperature and NDVI images for May 2024
figure;
subplot(1,2,1);
imagesc(temp2);
colormap(hot);
colorbar;
title('Temperature May 2024');

subplot(1,2,2);
imagesc(ndvi2);
colormap(jet); 
colorbar;
title('NDVI May 2024');

% Create histograms for July-August 2023
figure;
subplot(1,2,1);
histogram(temp1(:), 50);
title('Temperature Distribution July-August 2023');
xlabel('Temperature');
ylabel('Frequency');

subplot(1,2,2);
histogram(ndvi1(:), 50);
title('NDVI Distribution July-August 2023');
xlabel('NDVI');
ylabel('Frequency');

% Create histograms for May 2024
figure;
subplot(1,2,1);
histogram(temp2(:), 50);
title('Temperature Distribution May 2024');
xlabel('Temperature');
ylabel('Frequency');
set(gca, 'Color', [1 1 1]);

subplot(1,2,2);
histogram(ndvi2(:), 50);
title('NDVI Distribution May 2024');
xlabel('NDVI');
ylabel('Frequency');
set(gca, 'Color', [1 1 1]);

% Create scatter plot for July-August 2023 (NDVI vs Temperature)
figure;
scatter(ndvi1(:), temp1(:), 'o', 'MarkerEdgeColor', 'b');
xlabel('NDVI');
ylabel('Temperature');
title('Scatter Plot: NDVI vs Temperature (July-August 2023)');

% Create scatter plot for May 2024 (NDVI vs Temperature)
figure;
scatter(ndvi2(:), temp2(:), 'o', 'MarkerEdgeColor', 'm');
xlabel('NDVI');
ylabel('Temperature');
title('Scatter Plot: NDVI vs Temperature (May 2024)');