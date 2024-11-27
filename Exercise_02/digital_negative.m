function out = digital_negative(in)
    in = double(in);
    
    % [rows, cols] = size(in);
    % out = zeros(rows, cols);
    
    %tic;
    %for r = 1:rows
    %    for c = 1:cols
    %        pix = in(r, c);
    %        pix = 255 - pix;
    %        out(r, c) = pix;
    %    end
    %end
    %toc;
    
    % or

    tic; % start timer
    out = 255 - in;
    toc; % end timer
end