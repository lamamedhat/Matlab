% colored image
RGB_img = imread('English.jpg');
%figure , imshow(RGB_img);     

% gray image
GRAY_img = rgb2gray(RGB_img);
%figure , imshow(GRAY_img);  

% to complement any image make sure the image is uint8 
class(GRAY_img);  % this show that the gray_img is uint8

%to completely complement the image 
%comp_all_image = 255-GRAY_img;
%figure , imshow(comp_all_image); % this is also = figure , imshow(255-GRAY_img);

% complement pixcels grayscale < 128 
% this means dark pixcels are complemented 

[row, col] = size(GRAY_img);   
for i=1:row
    for j=1:col
        if (GRAY_img(i,j) < 128)
            final_img(i,j)=255-GRAY_img(i,j);
        else
            final_img(i,j)=GRAY_img(i,j);
            
        end
    end
end   
            
    

%figure , imshow(final_img);

subplot(1 , 3 , 1) , imshow(RGB_img) , title('RGB image');
subplot(1 , 3 , 2) , imshow(GRAY_img) , title('Gray scale image');
subplot(1 , 3 , 3) , imshow(final_img) , title('solarization image');






















