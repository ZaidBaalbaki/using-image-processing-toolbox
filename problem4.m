%Problem 4
%% Part a)
I = imread('lena.jpg');
figure(1);
imshow(I);

%% Part b)
% using nearest interpolation
J = imrotate(I,30,'nearest','crop');
figure(2);
imshow(J);

% using bilinear interpolation
K = imrotate(I,30,'bilinear','crop');
figure(3);
imshow(K);

% using bicubic interpolation
L = imrotate(I,30,'bicubic','crop');
figure(4);
imshow(L);

%% Part c)
M= imtranslate(I,[100, 100],'OutputView','full');
figure(5);
imshow(M);





