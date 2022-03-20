function [] = plane()
K = 17;
R = 7;
alpha = 5*(R^2);

ps = 0:.1:pi;
th = 0:.2:2*pi;

[Psi, Theta] = meshgrid(ps, th);

X = R.*sin(Psi).*cos(Theta);
Y = R.*sin(Psi).*sin(Theta);
Z = R.*cos(Psi);

mesh(X,Y), hold on
mesh(-K*exp(-(X.^2 + Y.^2)/alpha))
mesh(X+K, Y+K, Z+((R+K)/(K-R)))

axis("equal")
axis("off")

end
