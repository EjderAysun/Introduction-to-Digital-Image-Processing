% sub-task 1
function out = averaging_filter(in, fSize, padType)
    
    Kernel = ones(fSize, fSize) / (fSize*fSize);
    
    % alternative way:
    % Kernel = fspecial('average', fSize);

    pdSize = (fSize - 1)/2;
    
    in_padded = padarray(in, [pdSize pdSize], padType);

    out_padded = zeros(size(in_padded));

    [rows, cols] = size(in_padded);

    for r = pdSize+1:rows-pdSize
        for c = pdSize+1:cols-pdSize
            neigh = in_padded(r-pdSize:r+pdSize, c-pdSize:c+pdSize);
            % out_padded(r, c) = sum(neigh, "all") / (fSize*fSize); % simple averaging
            out_padded(r, c) = sum(neigh .* Kernel, "all"); % simple averaging
        end
    end

    out = out_padded(pdSize+1:rows-pdSize, pdSize+1:cols-pdSize);
end