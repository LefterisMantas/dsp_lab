%erwthma a
%sampling
f = 5;
Ts=[0.02 0.05 0.1];
figure;
for i=1:length(Ts)
    n=0:10/Ts(i);
    x=sin(2*pi*f*n*Ts(i));
    %plot signal
    plot(n*Ts(i),x,'x-');
	hold on
    %erwthma b
    %reconstruction of signal
    sampling_reconstruction(Ts(i),f,0);
end
hold off
%erwthma c
%sampling
Ts_new = 0.1;
n_new=0:10/Ts_new;
x=sin(2*pi*f*n_new*Ts_new);
plot(n_new*Ts_new,x,'x-');
hold on
x_new=sin(2*pi*f*n*Ts_new+pi/4);
plot(n_new*Ts_new,x_new,'o-');

%erwthma d
Ts_d = 0.005;
f0= [40,240,4040];
n_d =0:1/Ts_d;
x_d1 = sin(2*pi*f0(1)*n_d*Ts_d);
figure;
plot(n_d*Ts_d,x_d1,'x-');
%saveas(gcf,'f40.png')

x_d2 = sin(2*pi*f0(2)*n_d*Ts_d);
figure;
plot(n_d*Ts_d,x_d2,'x-');
%saveas(gcf,'f240.png')

x_d3 = sin(2*pi*f0(3)*n_d*Ts_d);
figure;
plot(n_d*Ts_d,x_d3,'x-');
%saveas(gcf,'f4040.png')
sampling_reconstruction(Ts_d,f0(1),0);
sampling_reconstruction(Ts_d,f0(2),0);
sampling_reconstruction(Ts_d,f0(3),0);