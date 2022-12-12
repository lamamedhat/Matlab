x1 = imread('learn_french.jpg');
x2 = imread('Travel.jpg');

x2_resize=imresize(x2,[339  509]); %resize the the second image 
%figure , imshow(x2_resize);
%figure, imshow(x1);

y1= 5 * x1 + 2 * x2_resize ;
%figure,imshow(y1);

y2 = (x1/2)+(x2_resize+128);
%figure,imshow(y2);

y3 = 255 - x2_resize;
%figure,imshow(y3);

y4 = max(x1,x2_resize);
%figure,imshow(y4);


% to do the average of two img -> first add these two images then divide
% the result by the nymber of images

y5=imadd(x1,x2_resize);
y5_avg=y5/2;
%figure,imshow(y5_avg);


subplot(3 , 2 , 1), imshow(y1) , title('Y1');
subplot(3 , 2 , 2), imshow(y2) ,title('Y2');
subplot(3 , 2 , 3), imshow(y3) , title('Y3');
subplot(3 , 2 , 4), imshow(y4) , title('Y4');
subplot(3 , 2 , 5), imshow(y5_avg) ,title('Y5 avg');
