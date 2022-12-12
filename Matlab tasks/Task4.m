img = imread('travel.jpg');
subplot(1,2,1),imshow(img);
title('origional image');

r=img(:,:,1);  % R channel
g=img(:,:,2);  % G channel
b=img(:,:,3);  % B channel
% get the size of rows and cols of each channel
[row_r, col_r] = size(r);
[row_g, col_g] = size(g);
[row_b, col_b] = size(b);

% get the mean of each channel by mean2() function
r_mean = mean2(r);
g_mean = mean2(g);
b_mean = mean2(b);

for i =1:row_r
    for j= 1:col_r
        if (r(i,j)+ r_mean)> 255;
            r(i,j)=255;
        else
            r(i,j) = r(i,j)+r_mean;
        end    
    end   
end
f_red = r;

for i = 1:row_g
    for j = 1:col_g
        if ((g(i,j)+g_mean) > 255)
            g(i,j)= 255;
        else
            g(i,j) = g(i,j)+g_mean;
        end
    end
end
f_green = g;

for i = 1:row_b
    for j = 1:col_b
        if ((b(i,j)+b_mean) > 255)
            b(i,j)= 255;
        else
            b(i,j) = b(i,j)+b_mean;
        end
    end
end
f_blue = b;

final_Image = cat(3, f_red,f_green,f_blue); % 3 is the number of dimensions
                                            % 3 channel means three dimensions   
subplot(1,2,2), imshow(final_Image);

