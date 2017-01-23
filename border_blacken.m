%Frame the image
im = imread('Desert.jpg');
imgray = rgb2gray(im);
[r c] = size(imgray);
frame_width = 15;
for i = 1:r
    for j = 1:c
        imgray(1:frame_width,j) = 0;
        imgray(end:-1:end-frame_width,j) = 0;
        imgray(i,1:frame_width) = 0;
        imgray(i,end:-1:end-frame_width) = 0;
    end
end
imwrite(imgray,'first.bmp');