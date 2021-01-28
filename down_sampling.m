function [I1] = down_sampling(A)
I0 = A;
% Convert the image to double
I0 = double(I0);
% Check the number of rows and columns
[M, N] = size(I0);
% Create I1, which is half of I0 size
I1 = zeros(M/2, N/2);
% Perform half downsampling 
for i=1:2:M
   for j=1:2:N
       I1((i+1)/2, (j+1)/2) = (I0(i, j) + I0(i+1, j) + I0(i, j+1) + I0(i+1, j+1))/4;
   end
end
% Change the datatype of the image to display it
I1 = uint8(I1);
figure,imshow(I1);
% Save the image
imwrite(I1,'lenna512_downSample.bmp');
end