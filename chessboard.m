% create a chessboard
new_zeros = zeros(8,8);

chess = uint8(new_zeros);
chess(2:2:8, :) = 255;
chess(:, 2:2:8) = 255;
chess(2:2:8, 2:2:8) = 0;
imshow(chess);