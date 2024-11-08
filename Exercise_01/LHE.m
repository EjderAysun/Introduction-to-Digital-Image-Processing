function out = LHE(in, W) % W odd number

    in = double(in);
    
    padSz = (W-1)/2;
    
    in_pad = padarray(in, [padSz, padSz], "symmetric");
    
    [rows, cols] = size(in_pad);
    out_pad = zeros(rows, cols);
    
    for r = (padSz+1):rows-padSz
        for c = (padSz+1):cols-padSz
            lhe_reg = in_pad(r-padSz:r+padSz, c-padSz:c+padSz);
            ghe = GHE(lhe_reg);
            out_pad(r, c) = ghe(padSz+1, padSz+1);
        end
    end

    out = out_pad(padSz+1:rows-padSz, padSz+1:cols-padSz);
end