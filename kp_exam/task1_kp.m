% Function to read TIFF file
function data = read_tiff(file_path)
    data = imread(file_path);
end

% Path to the data folder
data_path = 'C:\studia\sem2\pytmat_geoscience\exam\dane\data_kp';
result_path = 'C:\studia\sem2\pytmat_geoscience\exam\dane\t1_matlab_results_kp';

% Load data
temp1 = read_tiff(fullfile(data_path, 't2_lst2023_Jul_Aug.tif'));
ndvi1 = read_tiff(fullfile(data_path, 't2_ndvi2023_Jul_Aug.tif'));

temp2 = read_tiff(fullfile(data_path, 't2_lst2024May.tif'));
ndvi2 = read_tiff(fullfile(data_path, 't2_ndvi2024May.tif'));

% Function to display and save images
function display_and_save_images(images, titles, filename_prefix, result_path)
    for i = 1:length(images)
        figure('Visible', 'off');
        imagesc(images{i});
        colorbar;
        title(titles{i});
        colormap(parula);
        saveas(gcf, fullfile(result_path, [filename_prefix '_' titles{i} '.png']));
        close;
    end
end

% Function to plot and save histogram
function plot_and_save_histogram(data, title_str, filename, result_path)
    figure('Visible', 'off');
    histogram(data(:), 50, 'FaceColor', 'blue', 'FaceAlpha', 0.7);
    title(title_str);
    xlabel('Value');
    ylabel('Frequency');
    saveas(gcf, fullfile(result_path, [filename '.png']));
    close;
end

% Function to create and save scatter plot
function scatter_and_save_plot(x, y, xlabel_str, ylabel_str, title_str, filename, result_path)
    figure('Visible', 'off');
    scatter(x, y, 10, 'filled', 'MarkerFaceAlpha', 0.5);
    xlabel(xlabel_str);
    ylabel(ylabel_str);
    title(title_str);
    saveas(gcf, fullfile(result_path, [filename '.png']));
    close;
end

% Analysis for temp1 and ndvi1
display_and_save_images({temp1, ndvi1, temp1 - ndvi1}, {'Temperature_2023', 'NDVI_2023', 'Temp_minus_NDVI_2023'}, '2023', result_path);
plot_and_save_histogram(temp1, 'Histogram Temperature 2023', 'Histogram_Temperature_2023', result_path);
plot_and_save_histogram(ndvi1, 'Histogram NDVI 2023', 'Histogram_NDVI_2023', result_path);
scatter_and_save_plot(ndvi1(:), temp1(:), 'NDVI', 'Temperature', 'Scatter Plot NDVI vs Temperature 2023', 'Scatter_NDVI_vs_Temperature_2023', result_path);

% Analysis for temp2 and ndvi2
display_and_save_images({temp2, ndvi2, temp2 - ndvi2}, {'Temperature_2024', 'NDVI_2024', 'Temp_minus_NDVI_2024'}, '2024', result_path);
plot_and_save_histogram(temp2, 'Histogram Temperature 2024', 'Histogram_Temperature_2024', result_path);
plot_and_save_histogram(ndvi2, 'Histogram NDVI 2024', 'Histogram_NDVI_2024', result_path);
scatter_and_save_plot(ndvi2(:), temp2(:), 'NDVI', 'Temperature', 'Scatter Plot NDVI vs Temperature 2024', 'Scatter_NDVI_vs_Temperature_2024', result_path);