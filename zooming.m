%Function for Zooming
function final_image = zooming(im_name)
    im = imread(im_name);
    imgray = rgb2gray(im);
    factor = input('Enter the factor by which the image is to be zoomed => ');
    [r, c] = size(imgray);
    r_size = r*factor;
    c_size = c*factor;
    num1 = 1;
    num2 = 1;
    for i = 1:factor:r_size
        for j = 1:factor:c_size
            final_image(i,j) = imgray(num1, num2);
            num2 = num2 + 1;
        end
        num2 = 1;
        num1 = num1 + 1;
    end
    
    for i = 1:factor:r_size
        for j = 2:factor:c_size-factor
            final_image(i,j) = (final_image(i,j-1) + final_image(i,j+1))*0.5;
        end
    end
    
    for j = 1:factor:c_size
        for i = 2:factor:r_size-factor
            final_image(i,j) = (final_image(i-1,j) + final_image(i+1,j))*0.5;
        end
    end
    
    for i = 2:factor:r_size-factor
        for j = 2:factor:c_size-factor
            final_image(i,j) = (final_image(i,j-1) + final_image(i,j+1))*0.5;
        end
    end
    figure
    imshow(imgray);
    title('Original Image');
    figure
    imshow(final_image);
    title('Zoomed Image');
end