XMIN = -7;
XMAX = 7;
YMIN = -1;
YMAX= 1;

x = -8*pi: 0.01: 8*pi;

N=18;

fcn = maclaurin_sinx(x,N);

fcnReal = sin(x);

clf;
figure(1);
plot(x,fcn);
hold on;
plot(x, fcnReal);
axis([XMIN XMAX YMIN YMAX]);
grid on;