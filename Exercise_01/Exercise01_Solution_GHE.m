close all;
clear all;
clc;

im = imread("Images/lowContrastPollen.jpg");
im = double(im);

h = zeros(1, 256);

[rows, cols] = size(im);

for r = 1:rows
    for c = 1:cols
        pix = im(r, c); % 0 - 255
        h(1, pix+1) = h(1, pix+1)+1;
    end
end

pmf = h / (rows*cols);
cmf = pmf;

for c = 2:256
    cmf(1, c) = cmf(1, c-1) + cmf(1, c);
end

output_h = cmf * 255;
out = zeros(rows, cols);

for r = 1:rows
    for c = 1:cols
        pix = im(r, c); % 0 - 255
        out(r, c) = output_h(1, pix+1);
    end
end

figure;
subplot(2,3,1); imshow(uint8(im)); title("Original Image");
subplot(2,3,2); stem(h); title("h");
subplot(2,3,3); stem(pmf); title("pmf");
subplot(2,3,4); stem(cmf); title("cmf");
subplot(2,3,5); stem(output_h); title("output h");
subplot(2,3,6); imshow(uint8(out)); title("Output Image");