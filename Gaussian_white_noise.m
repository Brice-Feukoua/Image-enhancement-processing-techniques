function [noise] = Gaussian_white_noise(A)
    im = A;
    % Convert the image to double
    im =  im2double(im);
    % Compute the variance
    vardb = 10;
    var = 1/(0.01*(10^(vardb/10))); %var=10
    mean = 0; %mean=0
    % Initialize the noise signal
    noise = sqrt(var).*randn(size(im))+ mean;
    % Creating the noisy image
    im_wn = im + noise;
    figure,imshow(im_wn);
    % Saving the image
    imwrite(im_wn,'lenna512_GWN.bmp');
end