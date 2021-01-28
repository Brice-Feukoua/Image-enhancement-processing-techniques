function [im,I1,I1_prime,I1_second,I1_third,im_wn,im_SP] = HistogramIm(A,I1,I1_prime,I1_second,I1_third,im_wn,im_SP)
    im=(A);
    subplot(4,2,1);imhist(im);title('Original Image');
    subplot(4,2,2);imhist(I1);title('Down-sampled Image');
    subplot(4,2,3);imhist(I1_prime);title('Nearest neighbor up-sampled image');
    subplot(4,2,4);imhist(I1_second);title('Bilinear up-sampled image');
    subplot(4,2,5);imhist(I1_third);title('Bicubic up-sampled image');
    subplot(4,2,6);imhist(im_wn);title('Gaussian noise image');
    subplot(4,2,7),imhist(im_SP);title('Salt & Pepper noise image');
end