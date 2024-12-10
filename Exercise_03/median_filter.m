% sub-task 2
function out = median_filter(in, fSize)

    pdSize = (fSize - 1)/2;

    in_padded = padarray(in, [pdSize pdSize], 'symmetric');

    out_padded = zeros(size(in_padded));

    [rows, cols] = size(in_padded);

    for r = pdSize+1:rows-pdSize
        for c = pdSize+1:cols-pdSize
            neigh = in_padded(r-pdSize:r+pdSize, c-pdSize:c+pdSize);
            tmp = sort(neigh(:));
            out_padded(r, c) = tmp((fSize^2+1)/2); % median filtering
        end
    end

    out = out_padded(pdSize+1:rows-pdSize, pdSize+1:cols-pdSize);
end