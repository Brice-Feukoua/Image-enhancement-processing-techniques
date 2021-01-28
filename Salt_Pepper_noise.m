function noisySaP = Salt_Pepper_noise(A)
    im_SP = A;
    % noise density 10% pixels
    den = 0.1; 
    whitP = 0.5; % 50% white pixels
    N = numel(im_SP(:,:,1)); % number of elements in the image array
    R = fix(den*N); % round elements
    nbr = randperm(N, R); %randomly returns row vector of image elements
    k = fix(whitP*R);
    nbr1 = nbr(1:k);
    nbr2 = nbr(k+1:end);
    % Build noisy image
    nbr1 = nbr1' + N.*(0:size(im_SP,3)-1);
    nbr1 = nbr1(:);
    nbr2 = nbr2' + N.*(0:size(im_SP,3)-1);
    nbr2 = nbr2(:);
    im_SP(nbr1) = 255; % Implement maximum noise
    im_SP(nbr2) = 0; % Implement minimum noise
    % Display and save the image
    figure,imshow(im_SP);
    imwrite(im_SP,'lenna512_SaltAndPepperN.bmp');
end