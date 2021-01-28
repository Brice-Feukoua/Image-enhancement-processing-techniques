function [im_enh] = ContrastEnh(B)
    % Adjust contrast of original image
    im_enh = histeq (B);
    % Plot images and histograms
    subplot(2,2,1);imshow(B);title('Original Image');
    subplot(2,2,2);imhist(B);title('Histogram of original Image');
    subplot(2,2,3);imshow(im_enh);title('Enhanced Image');
    subplot(2,2,4);imhist(im_enh);title('Histogram of enhanced Image');
end