X=imread('pout.tif');
Original_photo=X;
subplot(1,2,1),imshow(Original_photo);

frequency=zeros(255,1); %histogram
pdf=zeros(255,1); %pdf
for r = 1:size(X,1)
    for c=1:size(X,2)
        value=X(r,c);
        frequency(value)=frequency(value)+1;
    end
end

pixels_num=size(X,1)*size(X,2);
for i= 1:255
    pdf(i)=frequency(i)/pixels_num;
end
cdf=zeros(255,1);

cdf(1)=pdf(1); %First element in cdf

for i= 2:255
    cdf(i)=cdf(i-1)+pdf(i);
end

for r = 1:size(X,1)
    for c=1:size(X,2)
        value=X(r,c);
        GetCdf=cdf(value);
        X(r,c)=255*GetCdf;
    end
end

subplot(1,2,2),imshow(X)