function showfig_orig_ghe_lhe(im_orig, im_ghe, im_lhe, t)
    figure;
    subplot(1,3,1); imshow(im_orig); title(t);
    subplot(1,3,2); imshow(im_ghe); title("GHE " + t);
    subplot(1,3,3); imshow(im_lhe); title("LHE " + t);
end