%Problem 3
%% Part a)
% loading images to respective arrays
A1 = imread('image1.png');
A2 = imread('image2.png');
A3 = imread('image3.png');

%% Part b)
%% i)
figure(1);
B = A1 + A2;
imshow(B);

%% ii) 
figure(2);
R1 = imadd(A1,A2,'uint16');
colormap(gray);
imagesc(B2);
colorbar

%% Part c)
% a = 0.1
figure(3);
A3u = uint16(A3);
a = 0.1;
b =1-a;
R2 = imadd(R1*a,A3u*b,'uint16');
colormap(gray);
imagesc(R2);

% a = 0.5
figure(4);
A3u = uint16(A3);
a = 0.5;
b =1-a;
R3 = imadd(R1*a,A3u*b,'uint16');
colormap(gray);
imagesc(R3);


