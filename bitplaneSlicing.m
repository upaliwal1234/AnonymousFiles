% Implement Bit Plane Slicing

img = imread('cameraman.tif');
subplot(3,3,1), imshow(img), title('original image');
for i = 1:8
    B = bitget(img,i);
    subplot(3,3,i+1),imshow(logical(B)), title(['Bit plane ', num2str(i)]);
end