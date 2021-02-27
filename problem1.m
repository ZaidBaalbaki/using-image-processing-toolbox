%Problem 1
%Part b)
%% i)
%get image info
info = imfinfo('cameraman.tif');

%print number of rows (height)
rows = info.Height;
disp('rows:');
disp(rows);

%print number of rows (width)
columns= info.Width;
disp('columns:');
disp(columns);

%total pixels
pixels = rows * columns;
disp('total pixels:');
disp(pixels);

%print file size in bytes
disp('file size:');
disp(info.FileSize);


%% ii)
%generate a .jpg copy from the original .tif
%read original into array A
A = imread('cameraman','tif');
%save as a jpg
imwrite(A,'generatedJPEG.jpg','jpg');

%% iii)
%Jpeg size:
jpgSize= imfinfo('generatedJPEG.jpg').FileSize;
disp('JPEG file size:');
disp(jpgSize);
%.tif size:
tifSize = imfinfo('cameraman.tif').FileSize;
disp('.tif file size:');
disp(tifSize);

%% iv)
%Showing the image 'cameraman.tif' stored in A with color bar
imshow(A);
colorbar;

%% c)
%generate 256x256 square matrix with values in [0,500]
randImage = rand(256)*500;
%show the image using imshow and imgsc each on a figure
figure(1);
imshow(randImage);
figure(2);
imagesc(randImage);
colormap(gray);