clc; clear; close all;

% Define file paths
folder_path = 'E:\AAmagisterka\S2\EXAM_data';
ndvi1_path = fullfile(folder_path, 't5_ndvi2024_Jul_Aug.tif');
ndvi2_path = fullfile(folder_path, 't5_ndvi2024May.tif');

% Read NDVI data
ndvi1 = double(imread(ndvi1_path));
ndvi2 = double(imread(ndvi2_path));

% Compute NDVI difference (July/August - May)
ndvi_diff = ndvi1 - ndvi2;

% Display images
figure;
subplot(1,3,1);
imagesc(ndvi1); colormap('summer'); colorbar;
title('NDVI - July/August 2024');

subplot(1,3,2);
imagesc(ndvi2); colormap('summer'); colorbar;
title('NDVI - May 2024');

subplot(1,3,3);
imagesc(ndvi_diff); colormap('jet'); % FIXED
colorbar;
title('NDVI Difference (July/August - May)');

% Create histograms
figure;
subplot(1,2,1);
histogram(ndvi1(:), 50, 'FaceColor', 'g');
title('Histogram of NDVI - July/August 2024');
xlabel('NDVI Value'); ylabel('Frequency');

subplot(1,2,2);
histogram(ndvi2(:), 50, 'FaceColor', 'b');
title('Histogram of NDVI - May 2024');
xlabel('NDVI Value'); ylabel('Frequency');

% Scatter plot
figure;
scatter(ndvi2(:), ndvi1(:), 5, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b');
xlabel('NDVI - May 2024');
ylabel('NDVI - July/August 2024');
title('Scatter Plot: NDVI May vs NDVI July/August');
grid on;
