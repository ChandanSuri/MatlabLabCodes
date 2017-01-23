%To count ones and zeros in a black and white image.
function [blackPixs, whitePixs] = countOnesZeros(im_name)
    im = imread(im_name);
    bwimage = im2bw(im);
    %imshow(bwimage);
    [r,c] = size(bwimage);
    whitePixs = 0;
    blackPixs = 0;
    for i=1:r
        for j=1:c
            if bwimage(i,j) == 0
                whitePixs = whitePixs + 1;
            else
                blackPixs = blackPixs + 1;
            end
        end
    end
end