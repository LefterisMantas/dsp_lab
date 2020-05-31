%read image as double
I=im2double(imread('photo.jpg')); 
%imshow(I);
%imagesc(I);colormap gray

h=[1,-1];
[dx,dy] = gradient(I);
[dxx, dxy] = gradient(dx);
[dyx, dyy] = gradient(dy);
imagesc(dx);colormap gray
saveas(gca,'dx.png');
imagesc(dy);colormap gray
saveas(gca,'dy.png');
imagesc(dxx);colormap gray
saveas(gca,'dxx.png');
imagesc(dyy);colormap gray
saveas(gca,'dyy.png');
imagesc(dxy);colormap gray
saveas(gca,'dxy.png');
imagesc(dyx);colormap gray
saveas(gca,'dyx.png');

%dx=filter(h,1,I')'; %gradient based on x
%dy=filter(h,1,I);   %gradient based on y 
%{
laplace filter
kernel = -1 * ones(3);
kernel(2,2) = 8;  % Now kernel = [-1,-1,-1; -1,8,-1; -1,-1,-1]
output = conv2(double(I), kernel, 'same');
imagesc(output);colormap gray
%}

quiver(dx,dy,5);
set(gca,'Ydir','reverse');

%erwthma 5
N=[2 10 20];

H1 = ones(N(1)+1)/(N(1)+1)^2;
imshow(filter2(H1,I));
saveas(gca,'car1.png')

H2 = ones(N(2)+1)/(N(2)+1)^2;
imshow(filter2(H2,I));
saveas(gca,'car2.png')

H3 = ones(N(3)+1)/(N(3)+1)^2;
imshow(filter2(H3,I));
saveas(gca,'car3.png')

%erwthma 6
I2 =im2double(imread('photo-deg.jpg'));

H1 = ones(N(1)+1)/(N(1)+1)^2;
imshow(filter2(H1,I2));
saveas(gca,'car1_2.png')

H2 = ones(N(2)+1)/(N(2)+1)^2;
imshow(filter2(H2,I2));
saveas(gca,'car2_2.png')

H3 = ones(N(3)+1)/(N(3)+1)^2;
imshow(filter2(H3,I2));
saveas(gca,'car3_2.png')


%erwthma 7
N = [1 2 3 4 5 6];
imshow(medfilt2(I2, [N(1) N(1)]));
saveas(gca,'car_med1.png')
imshow(medfilt2(I2, [N(2) N(2)]));
saveas(gca,'car_med2.png')
imshow(medfilt2(I2, [N(3) N(3)]));
saveas(gca,'car_med3.png')
imshow(medfilt2(I2, [N(4) N(4)]));
saveas(gca,'car_med4.png')
imshow(medfilt2(I2, [N(5) N(5)]));
saveas(gca,'car_med5.png')
imshow(medfilt2(I2, [N(6) N(6)]));
saveas(gca,'car_med6.png')