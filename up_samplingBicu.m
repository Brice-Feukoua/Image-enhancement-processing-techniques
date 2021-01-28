function [I1_third] = up_samplingBicu(I1)
% Bicubic up sampling the down sampled image I1...
% ...using the matlab predefined function imresize
I1_third = imresize(I1, 2, 'bicubic');
figure,imshow(I1_third);
% Saving the image
imwrite(I1_third,'lenna512_Bicu.bmp');
end