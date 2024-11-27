clear all;
close all;
clc;

% sub-task 1
breast_Xray = imread("Images/breast_Xray.tif");
negative_breast_Xray = digital_negative(breast_Xray);

figure; 
subplot(1,2,1); imshow(uint8(breast_Xray)); title("breast Xray original");
subplot(1,2,2); imshow(uint8(negative_breast_Xray)); title("negative breast Xray");

% sub-task 2
moon = imread("Images/moon.tif");
threshold_moon = threshold(moon, 60);

figure; 
subplot(1,2,1); imshow(uint8(moon)); title("moon original");
subplot(1,2,2); imshow(uint8(threshold_moon)); title("thr = 60 moon");

% sub-task 3
DFT_no_log = imread("Images/DFT_no_log.tif");
log_transform_DFT = log_transform(1, DFT_no_log);

figure;
subplot(1,2,1); imshow(uint8(DFT_no_log)); title("DFT no log");
subplot(1,2,2); imshow(uint8(log_transform_DFT)); title("log transform DFT");

% sub-task 4
washed_aerial = imread("Images/washed_aerial.tif");
power_law_transform_washed_aerial_g3 = power_law_transform(washed_aerial, 1, 3.0);
power_law_transform_washed_aerial_g4 = power_law_transform(washed_aerial, 1, 4.0);
power_law_transform_washed_aerial_g5 = power_law_transform(washed_aerial, 1, 5.0);

figure;
subplot(1,4,1); imshow(uint8(washed_aerial)); title("washed aerial original");
subplot(1,4,2); imshow(uint8(power_law_transform_washed_aerial_g3)); title("washed aerial, gamma = 3");
subplot(1,4,3); imshow(uint8(power_law_transform_washed_aerial_g4)); title("washed aerial, gamma = 4");
subplot(1,4,4); imshow(uint8(power_law_transform_washed_aerial_g5)); title("washed aerial, gamma = 5");

% sub-task 5
fractured_spine = imread("Images/fractured_spine.tif");
power_law_transform_fractured_spine_g03 = power_law_transform(fractured_spine, 1, 0.3);
power_law_transform_fractured_spine_g04 = power_law_transform(fractured_spine, 1, 0.4);
power_law_transform_fractured_spine_g05 = power_law_transform(fractured_spine, 1, 0.5);

figure;
subplot(1,4,1); imshow(uint8(fractured_spine)); title("fractured_spine original");
subplot(1,4,2); imshow(uint8(power_law_transform_fractured_spine_g03)); title("fractured_spine, gamma = 0.3");
subplot(1,4,3); imshow(uint8(power_law_transform_fractured_spine_g04)); title("fractured_spine, gamma = 0.4");
subplot(1,4,4); imshow(uint8(power_law_transform_fractured_spine_g05)); title("fractured_spine, gamma = 0.5");

% sub-task 6
% to be added