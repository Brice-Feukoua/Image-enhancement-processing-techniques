function [I1_second] = up_samplingBili(I1)
% Bilinear up sampling the down sampled image I1...
% ...using the matlab predefined function imresize
I1_second = imresize(I1, 2, 'bilinear');
figure,imshow(I1_second);
% Saving the image
imwrite(I1_second,'lenna512_Bili.bmp');
end