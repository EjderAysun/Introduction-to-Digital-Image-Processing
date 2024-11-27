function out = power_law_transform(im, c, gamma)
    im = double(im);
    out = 255 * c .*((im/255).^gamma);
end