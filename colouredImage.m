% read the coloured image and check attributes.

custom_image = imread('peppers.png');
imshow(custom_image);

% extract the color channels
red_channel = custom_image(:,:,1);
green_channel = custom_image(:,:,2);
blue_channel = custom_image(:,:,3);

subplot(2,2,1),imshow(custom_image);
subplot(2,2,2),imshow(red_channel);
subplot(2,2,3),imshow(green_channel);
subplot(2,2,4),imshow(blue_channel);