% create the horizontal and vertical strips

% create a zeros matriz
new_zeros = zeros(10, 20);

% Horizontal Strips
hor_strip = uint8(new_zeros);
hor_strip(2:2:10, :) = 255;
subplot(1,2,1),imshow(hor_strip);

%vertical strips
ver_strip = uint8(new_zeros);
ver_strip(:, 2:2:20) = 255;
subplot(1,2,2),imshow(ver_strip);