XMIN = -40;
XMAX = 40;
YMIN = -10;
YMAX= 40;

x = -20: .01: 20;

N=55;

fcn = maclaurin_ex(x,N);

fcnReal = exp(x);

% difference between the curves fcn and fcnReal 
fcnDiff = fcnReal - fcn;

clf;
figure(1);
hold on;
plot(x,fcn);
plot(x, fcnReal);
grid on;
axis([XMIN XMAX YMIN YMAX]);
figure(2);
plot(x, fcnDiff);
axis([XMIN XMAX YMIN YMAX]);
grid on;