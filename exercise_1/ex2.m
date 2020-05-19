%y[n]=(1/2)*(x[n]-x[n+1])+(1/2)*(x[n]-x[n-1]); %paragogos forward-backword
%y[n]=-(1/2)*x[n-2]+x[n-1]-(1/2)*x[n];

h=[-1/2,1,-1/2];
[H,W]=freqz(h,1);
figure;
plot(W,abs(H)); %metro
hold on
plot(W,angle(H)); %fash
hold off
figure

n=0:16000;
x = cos(pi/4*n)-sin(pi/2*n)+(-1/2).^n;
filt = filter(h,1,x);
conv = conv(h,x);

plot(conv(1:100));
hold on
figure;
plot(x(1:1000));
hold on
plot(filt(1:1000));
hold on

X=abs(fftshift(fft(x)));
x(1)=1;
x(2)=1;
y=zeros(length(x),1);
for n =3:length(x)
    y(n)=-(1/2)*x(n-2)+x(n-1)-(1/2)*x(n);
end
Y=abs(fftshift(fft(y)));

figure;
plot(X(1:16000));
hold on
plot(Y,'r')