% Histogram Equalization

img = imread('cameraman.tif');

% Compute the histogram
hist_values = imhist(img);

% Compute the cumulative distribution function (CDF)
cdf = cumsum(hist_values) / sum(hist_values);

% Map the intensities using the CDF
equalized_img = uint8(255 * cdf(double(img) + 1));

% Display the results
subplot(2,3,1), imshow(img), title('original image');
subplot(2,3,2), imhist(img), title('original histogram');
subplot(2,3,3), plot(cdf), ;

% Display the equalized image and its histogram
subplot(2,3,4), imshow(equalized_img);
title('Equalized Image');
subplot(2,3,5), imhist(equalized_img);
title('Equalized Histogram');
