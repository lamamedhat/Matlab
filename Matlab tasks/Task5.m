img=imread('tire.tif');
Ori_img=img;  % origional image assigned to X
Low=min(min(img));
High=max(max(img));
% size(x,n)-> n indicates the dimensions
% so if we say size(x,1) indicate the length of the first dimension 1 
% and so on ..
for r = 1:size(img,1) 
    for c=1:size(img,2)
        pixels=img(r,c);
        out=((pixels-Low)/(High-Low))*255;
        img(r,c)=out;
    end   
end
subplot(1,2,1)
imshow(Ori_img);
subplot(1,2,2)
imshow(img);