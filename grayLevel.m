% To implement gray level slicing in an image

img = imread('cameraman.tif');
subplot(1,3,1), imshow(img), title('original image');

% with background

for i = 1:256
    for j = 1:256
        if img(i,j) >= 9 && img(i,j) <= 23
            img(i,j) = 255;
        end
    end
end
subplot(1,3,2), imshow(img), title('with background');

%without background
img = imread('cameraman.tif');
img1 = uint8(zeros(256));
for i = 1:256
    for j = 1:256
        if img(i,j) >= 9 && img(i,j) <= 23
            img1(i,j) = 255;
        end
    end
end
subplot(1,3,3), imshow(img1), title('without background');