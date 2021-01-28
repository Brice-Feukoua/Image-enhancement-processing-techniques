function psnr = PSNR_measurement(B,A)
    % Convert images A & B to double
    im = A;
    im2 = B;
    % M represents rows and N columns
    % Check the number of rows and columns
    [M, N] = size(im);
    %Perform the mean square error
    mse = sum((im - im2).^2);
    MSE = sum(mse) / (M * N );
    % Calculate the PSNR
    PSNR = 10*log10((255^2)/ MSE);
    fprintf('\n The Peak Signal To Noise Ratio(PSNR) value is %0.4f', PSNR);
    
end