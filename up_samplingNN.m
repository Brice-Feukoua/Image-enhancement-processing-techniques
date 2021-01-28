function [I1_prime] = up_samplingNN(I1,A)
I0 = A;
% Checking I0 size
[M, N] = size(I0);
% Create I1_prime, which has the same size as I0
I1_prime = zeros(M, N);
% Up sampling
for i=1:2:M
   for j=1:2:N
       I1_prime(i, j) = I1((i+1)/2, (j+1)/2);
       I1_prime(i, j+1) = I1((i+1)/2, (j+1)/2);
       I1_prime(i+1, j) = I1((i+1)/2, (j+1)/2);
       I1_prime(i+1, j+1) = I1((i+1)/2, (j+1)/2);
   end
end
I1_prime = uint8(I1_prime);
figure,imshow(I1_prime);
% Save the image
imwrite(I1_prime,'lenna512NN.bmp');
end