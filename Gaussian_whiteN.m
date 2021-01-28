function [im_wn] = Gaussian_whiteN(A)
    im = A;
    % Convert the image to double
    im = im2double(im);
    % Checking size of original image
    [M, N] = size(im);
    % Build noisy image with same size of original
    im_wn = zeros(M, N);
    % Compute the variance
    vardb = 10;
    mean = 0;
    var = 1/(1*(10^(vardb/10))); %var=0.1
    % Initialize the noise signal
    noise = sqrt(var).*randn(size(im)) + mean ;
    % Create the noisy image
    for i=M
        for j=N
            im_wn = im+noise;
        end
    end
    figure,imshow(im_wn);
    % Save the image
    imwrite(im_wn,'lenna512_AGWN.bmp');
end