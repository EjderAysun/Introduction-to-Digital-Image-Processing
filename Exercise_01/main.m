close all;
clear all;
clc;

orig_p = imread("Images/OriginalPollen.jpg");
ghe_orig_p = GHE(orig_p);
lhe_orig_p = LHE(orig_p, 11);

low_cont_p = imread("Images/lowContrastPollen.jpg");
ghe_low_cont_p = GHE(low_cont_p);
lhe_low_cont_p = LHE(low_cont_p, 11);

light_p = imread("Images/lightPollen.jpg");
ghe_light_p = GHE(light_p);
lhe_light_p = LHE(light_p, 11);

dark_p = imread("Images/darkPollen.jpg");
ghe_dark_p = GHE(dark_p);
lhe_dark_p = LHE(dark_p, 11);

butterfly = imread("Images/butterfly.bmp");
ghe_butterfly = GHE(butterfly);
lhe_butterfly = LHE(butterfly, 11);

butterfly_noisy = imread("Images/butterfly_noisy.bmp");
ghe_butterfly_noisy = GHE(butterfly_noisy);
lhe_butterfly_noisy = LHE(butterfly_noisy, 11);

brain = imread("Images/brain.bmp");
ghe_brain = GHE(brain);
lhe_brain = LHE(brain, 11);

showfig_orig_ghe_lhe(orig_p, uint8(ghe_orig_p), uint8(lhe_orig_p), "Original Pollen");
showfig_orig_ghe_lhe(low_cont_p, uint8(ghe_low_cont_p), uint8(lhe_low_cont_p), "Low Contrast Pollen");
showfig_orig_ghe_lhe(light_p, uint8(ghe_light_p), uint8(lhe_light_p), "Light Pollen");
showfig_orig_ghe_lhe(dark_p, uint8(ghe_dark_p), uint8(lhe_dark_p), "Dark Pollen");
showfig_orig_ghe_lhe(butterfly, uint8(ghe_butterfly), uint8(lhe_butterfly), "Butterfly");
showfig_orig_ghe_lhe(butterfly_noisy, uint8(ghe_butterfly_noisy), uint8(lhe_butterfly_noisy), "Butterfly Noisy");
showfig_orig_ghe_lhe(brain, uint8(ghe_brain), uint8(lhe_brain), "Brain");