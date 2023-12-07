boa=zeros(8);
board=uint8(boa);
board(1:2:7, 1:8) = 255;
board(2:2:8, 2:2:8) = 0;
board
%board(2:2:8, 1:8) = 255
imshow(board)