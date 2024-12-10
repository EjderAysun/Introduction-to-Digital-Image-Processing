clear all;
close all;
clc;

% sub-task 3
checker = double(imread("Images/checker.tif"));

fSize = 23;
checker_avg_filt_0_pad = averaging_filter(checker, fSize, 0);
checker_avg_filt_1_pad = averaging_filter(checker, fSize, 1);
checker_avg_filt_symmetric_pad = averaging_filter(checker, fSize, "symmetric");

figure;
subplot(221); imshow(uint8(checker)); title("original checker");
subplot(222); imshow(uint8(checker_avg_filt_symmetric_pad)); title("checker average filtering w symmetric padding");
subplot(223); imshow(uint8(checker_avg_filt_0_pad)); title("checker average filtering w 0 padding");
subplot(224); imshow(uint8(checker_avg_filt_1_pad)); title("checker average filtering w 1 padding");

% sub-task 4
% Do not forget to add the “threshold” function from the Exercise_02 folder to the path.
hubble = double(imread("Images/hubble_orig.tif"));

% Smoothing/blurring the image helps to make large objects in the image stand out more easily with threshold.
fSize = 15;
hubble_avg_filt_sz_15 = averaging_filter(hubble, fSize, "symmetric");
hubble_avg_filt_sz_15_thr = threshold(hubble_avg_filt_sz_15, 60);
fSize = 31;
hubble_avg_filt_sz_33 = averaging_filter(hubble, fSize, "symmetric");
hubble_avg_filt_sz_33_thr = threshold (hubble_avg_filt_sz_33, 60);

figure;
subplot(221); imshow(uint8(hubble_avg_filt_sz_15)); title("hubble average filtering, filter size = 15");
subplot(222); imshow(uint8(hubble_avg_filt_sz_15_thr)); title("hubble average filtering (size = 15) & thr = 60");
subplot(223); imshow(uint8(hubble_avg_filt_sz_33)); title("hubble average filtering, filter size = 33");
subplot(224); imshow(uint8(hubble_avg_filt_sz_33_thr)); title("hubble average filtering (size = 33) & thr = 60");

% sub-task 5
board = double(imread("Images/board.tif"));

fSize = 3;
board_my_med_filt = median_filter(board, fSize);
board_built_in_med_filt = medfilt2(board, [fSize, fSize]);
board_my_averaging_filt = averaging_filter(board, fSize, "symmetric");
% I will come back here when I develop a further understanding of the “use both MATLABs conv2()” part:
board_built_in_conv2 = conv2(fSize, fSize, board);

figure;
subplot(321); imshow(uint8(board)); title("original board");
subplot(323); imshow(uint8(board_my_med_filt)); title("board with my median filter");
subplot(324); imshow(uint8(board_built_in_med_filt)); title("board with built-in median filter");
subplot(325); imshow(uint8(board_my_averaging_filt)); title("board with my averaging filter");
subplot(326); imshow(uint8(board_built_in_conv2)); title("board with built-in conv2 ");