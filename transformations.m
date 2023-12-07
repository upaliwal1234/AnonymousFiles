% perform negative, logarithmic and power law transformations

img = imread('cameraman.tif');
subplot(2,2,1),imshow(img),title('original image');
negativeImg = 255-img;
subplot(2,2,2),imshow(negativeImg),title('negative image');
logarithmicImg = im2double(img);
logarithmicImg = 1000*log(1+logarithmicImg);
subplot(2,2,3),imshow(uint8(logarithmicImg)),title('logarithmic image');
powerTransform = uint8(0.5*power(img,2));
subplot(2,2,4),imshow(powerTransform),title('power image');
