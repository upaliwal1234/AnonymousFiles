% dilation in an image

img1 = imread('cameraman.tif');
img = im2bw(img1);
mask = [0 1 0; 1 1 1; 0 1 0];
img2 = imdilate(img, mask);
subplot(2,2,1), imshow(img1), title('original image');
subplot(2,2,2), imshow(img), title('Binary Image');
subplot(2,2,3), imshow(mask), title('Mask');
subplot(2,2,4), imshow(img2), title('Dilated Imgae');
