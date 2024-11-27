function out = threshold(in, thr)
    in = double(in);

    [rows, cols] = size(in);
    out = zeros(rows, cols);

    for r = 1:rows
        for c = 1:cols
            pix = in(r, c);
            if pix <= thr
                pix = 0;
            else
                pix = 255;
            end
            out(r, c) = pix;
        end
    end
end