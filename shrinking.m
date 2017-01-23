%Function for shrinking of an Image
function sh_image = shrinking(im_name)
    im = imread(im_name);
    imgray = rgb2gray(im);
    factor = input('Enter the factor by which shrinking has to be done => ');
    [r,c] = size(imgray);
    r_size = r/factor;
    c_size = c/factor;
    num1 = 1;
    num2 = 1;
    for i = 1:r_size
        for j = 1:c_size
            sh_image(i,j) = imgray(num1,num2);
            num2 = num2 + factor;
        end
        num2 = 1;
        num1 = num1 + factor;
    end
    figure
    imshow(sh_image);
    title('Shrinked Image');
end