im1 = imread('Desert.jpg');
imgray1 = rgb2gray(im1);
im2 = imread('Penguins.jpg');
imgray2 = rgb2gray(im2);
brightness = 50;
%Add the 2 images
im_add = imgray1 + imgray2;
%Subtract 2 images
im_sub = imgray1 - imgray2;
%Brighten the images
im_brplus = imgray1 + brightness;
imwrite(im_sub,'sub.bmp');
imwrite(im_brplus,'brplus.bmp');
imwrite(im_add,'added.bmp');
num_im = 1;
% Create the images regarding the ratios of 2 images
for i = 0.25:0.5:1.25
    for j = 0.25:0.5:1.25
        imag = imgray1*i + imgray*j;
        subplot(3,3,num_im);
        imshow(imag);
        num_im = num_im + 1;
    end
end

