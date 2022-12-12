Orig_image = imread('Travel.jpg');
ch_red = Orig_image(:,:,1);  % the img will be redish
ch_Green = Orig_image(:,:,2); % the img will be Greenish
ch_Blue = Orig_image(:,:,3);  % the img will be Blueish
temp=ch_red;
ch_red=ch_Green;
ch_Green=temp;
image(:,:,1)=ch_red;  % means all rows and all colums of red channel
image(:,:,2)=ch_Green; % means all rows and all colums of Green channel
image(:,:,3)=ch_Blue; % means all rows and all colums of Blue channel
subplot(1,2,1),imshow(Orig_image),title('original image')
subplot(1,2,2),imshow(image), title('from RGB to GRB')




whos
















%%%%%% changing lighting color %%%%%%%%%
%Orig_image = imread('English.jpg');
%ch_red = Orig_image(:,:,1);  % the img will be redish
%ch_Green = Orig_image(:,:,2); % the img will be Greenish
%ch_Blue = Orig_image(:,:,3);  % the img will be Blueish

%ch_red = ch_red+100;
% cat means concatenate 3 channels
%img = cat(3,ch_red,ch_Green,ch_Blue); 

%figure,subplot(2,1,1),imshow(Orig_image),title('original');
%subplot(2,1,2),imshow(img), title('change color');

%%%%%% Swapping %%%%%%
%Orig_image = imread('English.jpg');
%ch_red = Orig_image(:,:,1);  % the img will be redish
%ch_Green = Orig_image(:,:,2); % the img will be Greenish
%ch_Blue = Orig_image(:,:,3);  % the img will be Blueish
%temp=ch_red;
%ch_red=ch_Blue;
%ch_Blue=temp;
%im(:,:,1)=ch_red;  % means all rows and all colums of red channel
%im(:,:,2)=ch_Green; % means all rows and all colums of Green channel
%im(:,:,3)=ch_Blue; % means all rows and all colums of Blue channel
%subplot(1,2,1),imshow(Orig_image),title('original')
%subplot(1,2,2),imshow(im), title(' from RGB to BGR')

%%%%%%%% Eliminating color channels %%%%%%
%Orig_image = imread('English.jpg');
%GB=Orig_image;
%RB=Orig_image;
%RG=Orig_image;
%GB(:,:,1)=0;    % red channel set to 0
%RB(:,:,2)=0;    % Green channel set to 0
%RG(:,:,3)=0;    % Blue channel set to 0
%figure,imshow(GB),title('GB')
%figure,imshow(RB),title('RB')
%figure,imshow(RG),title('RG')




















