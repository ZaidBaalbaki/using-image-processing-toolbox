%Problem 2
%Part a)
%% i)
%load image to array I
I = imread('text.png');
% Resize and save to new array J
J = imresize(I,2);
%show resized image
figure(1);
imshow(J);

%% ii)
J = imresize(I,[150 500]); 
figure(2);
imshow(J);
%reduced till words aren't comprehensible: around 0.4 scale
figure(3);
J = imresize(I,0.4);
imshow(J);

%% b)
% Reduce 40 percent (scale to 0.6)
figure(4);
J = imresize(I,0.6);
imshow(J);

% nearest interpolation
figure(5);
title('Nearest Interpolation');
K = imresize(J,2, 'nearest');
imshow(K);

% bilinear interpolation
figure(6);
title('Bilinear Interpolation');
L = imresize(J, 2, 'bilinear');
imshow(L);

% bicubic interpolation
figure(7);
title('Bicubic Interpolation');
M = imresize(J, 2, 'bicubic');
imshow(M);

%% c)
% nearest method timing
tic
K = imresize(J,2, 'nearest');
toc

% bilinear method timing
tic
L = imresize(J, 2, 'bilinear');
toc

% bicubic method timing
tic
M = imresize(J, 2, 'bicubic');
toc