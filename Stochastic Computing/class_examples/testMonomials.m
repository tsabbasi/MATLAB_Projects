x = -10:0.01:10;

XMIN =-12;
XMAX = 12;
YMIN =-10;
YMAX = 10;

w_0 = 1;
x_0 = power(x, 0);


w_1 = 1;
x_1 = power(x, 1);


w_2 = 10;
x_2 = power(x, 2);


w_3 = 0.02;
x_3 = power(x, 3);

func = w_0 * x_0 + w_1 * x_1 + w_2 * x_2 + w_3 * x_3;

figure(1);

plot(x, func);
hold on;
axis([XMIN XMAX YMIN YMAX]);
grid on;
