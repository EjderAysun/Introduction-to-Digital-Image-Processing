function out = log_transform(c, in)
    in = double(in);
    out = c.*log(in+1);
    out = 255*out/max(max(out));
end