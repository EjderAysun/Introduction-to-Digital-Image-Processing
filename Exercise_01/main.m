close all;
clear all;
clc;

in_original_p = imread("Images/OriginalPollen.jpg");
in_low_contrast_p = imread("Images/lowContrastPollen.jpg");
in_light_p = imread("Images/lightPollen.jpg");
in_dark_p = imread("Images/darkPollen.jpg");

ghe_out_original_p = GHE(in_original_p);
lhe_out_original_p = LHE(in_original_p, 11);
ghe_out_low_contrast_p = GHE(in_low_contrast_p);
lhe_out_low_contrast_p = LHE(in_low_contrast_p, 11);
ghe_out_light_p = GHE(in_light_p);
lhe_out_light_p = LHE(in_light_p, 11);
ghe_out_dark_p = GHE(in_dark_p);
lhe_out_dark_p = LHE(in_dark_p, 11);

figure;
subplot(4,3,1); imshow(in_original_p); title("Original Pollen");
subplot(4,3,2); imshow(uint8(ghe_out_original_p)); title("GHE Original Pollen");
subplot(4,3,3); imshow(uint8(lhe_out_original_p)); title("LHE Original Pollen");

subplot(4,3,4); imshow(in_low_contrast_p); title("Low Contrast Pollen");
subplot(4,3,5); imshow(uint8(ghe_out_low_contrast_p)); title("GHE Low Contrast Pollen");
subplot(4,3,6); imshow(uint8(lhe_out_low_contrast_p)); title("LHE Low Contrast Pollen");

subplot(4,3,7); imshow(in_light_p); title("Light Pollen");
subplot(4,3,8); imshow(uint8(ghe_out_light_p)); title("GHE Light Pollen");
subplot(4,3,9); imshow(uint8(lhe_out_light_p)); title("LHE Light Pollen");

subplot(4,3,10); imshow(in_dark_p); title("Dark Pollen");
subplot(4,3,11); imshow(uint8(ghe_out_dark_p)); title("GHE Dark Pollen");
subplot(4,3,12); imshow(uint8(lhe_out_dark_p)); title("LHE Dark Pollen");