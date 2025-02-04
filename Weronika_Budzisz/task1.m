%Importing data

lst23 = imread("C:\egz_python\files1\t4_lst2023_Jul_May.tif")
ndvi23 = imread("C:\egz_python\files1\t4_ndvi_2024_Jul_Aug.tif")
lst24 = imread("C:\egz_python\files1\t4_lst2024May.tif")
ndvi24 = imread("C:\egz_python\files1\t4_ndvi_2024May.tif")

% Display the images for 2023
figure;
subplot(1, 3, 1);
imagesc(lst23);
colorbar;
title('Temperature 2023');
colormap('jet'); 

subplot(1, 3, 2);
imagesc(ndvi23);
colorbar;
title('NDVI 2023');
colormap('summer'); 

subplot(1, 3, 3);
diff1 = lst23 - ndvi23;
imagesc(diff1);
colorbar;
title('Difference (Temp - NDVI) 2023');
colormap('jet');

% Create histograms for 2023
figure;
subplot(1, 2, 1);
histogram(lst23(:), 50, 'FaceColor', 'blue', 'FaceAlpha', 0.7);
title('Temperature Histogram 2023');
xlabel('Temperature');
ylabel('Frequency');

% Scatter plot for 2023
figure;
scatter(ndvi23(:), lst23(:), 10, 'filled', 'MarkerFaceColor', 'blue');
title('Scatter Plot: NDVI vs Temperature 2023');
xlabel('NDVI');
ylabel('Temperature');
grid on;

% Display the images for 2024
figure;
subplot(1, 3, 1);
imagesc(lst24);
colorbar;
title('Temperature 2024');
colormap('jet');

subplot(1, 3, 2);
imagesc(ndvi24);
colorbar;
title('NDVI 2024');
colormap('summer'); % Using 'summer' for NDVI

subplot(1, 3, 3);
diff2 = lst24 - ndvi24;
imagesc(diff2);
colorbar;
title('Difference (Temp - NDVI) 2024');
colormap('jet'); % Difference using 'jet' palette

% Create histograms for 2024
figure;
subplot(1, 2, 1);
histogram(lst24(:), 50, 'FaceColor', 'blue', 'FaceAlpha', 0.7);
title('Temperature Histogram 2024');
xlabel('Temperature');
ylabel('Frequency');

% Scatter plot for 2024
figure;
scatter(ndvi24(:), lst24(:), 10, 'filled', 'MarkerFaceColor', 'blue');
title('Scatter Plot: NDVI vs Temperature 2024');
xlabel('NDVI');
ylabel('Temperature');
grid on; 