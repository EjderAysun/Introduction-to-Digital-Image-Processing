close all;
clear all;
clc;

in = imread("Images/lowContrastPollen.jpg");

ghe_out = GHE(in);
lhe_out = LHE(in, 11);

figure;
subplot(1,3,1); imshow(in); title("Original Image");
subplot(1,3,2); imshow(uint8(ghe_out)); title("GHE Output Image");
subplot(1,3,3); imshow(uint8(lhe_out)); title("LHE Output Image");