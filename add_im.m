%To add 2 images
function final_image = add_im(im1name, im2name,final_imagename)
    im1 = imread(im1name);
    im2 = imread(im2name);
    imgray1 = rgb2gray(im1);
    imgray2 = rgb2gray(im2);
    [r1 c1] = size(imgray1);
    [r2 c2] = size(imgray2);
    r = max(r1,r2);
    c = max(c1, c2);
    for i = 1:r
        for j = 1:c
            final_image(i,j) = imgray1(i,j) + imgray2(i,j);
        end
    end
    imwrite(final_image,final_imagename);
end