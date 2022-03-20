function[] = polynomials()

alpha = 1.5;

S0 = [1]
S1 = [-1, 1 + alpha]
S2 = conv([(-1)/2, (2 * 2 - 1 + alpha)/2], S1) - [0, 0, conv([(2 - 1 + alpha) / 2], S0)]
S3 = conv([(-1)/3, (2 * 3 - 1 + alpha)/3], S2) - [0, 0, conv([(3 - 1 + alpha) / 3], S1)]
S4 = conv([(-1)/4, (2 * 4 - 1 + alpha)/4], S3) - [0, 0, conv([(4 - 1 + alpha) / 4], S2)]
S5 = conv([(-1)/5, (2 * 5 - 1 + alpha)/5], S4) - [0, 0, conv([(5 - 1 + alpha) / 5], S3)]

x = 0:.1:8;
plot(x, polyval(S0,x)), hold on
plot(x, polyval(S1,x))
plot(x, polyval(S2,x))
plot(x, polyval(S3,x))
plot(x, polyval(S4,x))
plot(x, polyval(S5,x))
ylim([-10 10])
legend('S0', 'S1', 'S2','S3', 'S4', 'S5')
grid("on")

end


