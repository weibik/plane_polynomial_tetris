function [] = tetris(M)
xcord = 12;
ycord = 30;
XB = [0,0,xcord,xcord];
YB = [0,ycord,ycord,0];

x1 = [0,0,4,4];
y1 = [0,1,1,0];

x2 = [0,0,1,1,2,2,3,3];
y2 = [0,1,1,2,2,1,1,0];

x3 = [0,0,1,1,3,3];
y3 = [0,2,2,1,1,0];

x4 = [0,0,2,2];
y4 = [0,2,2,0];

x5 = [0,0,2,2,3,3];
y5 = [0,1,1,2,2,0];

x6 = [0,0,1,1,3,3,2,2];
y6 = [0,1,1,2,2,1,1,0];

x7 = [0,2,2,3,3,1,1,0];
y7 = [2,2,1,1,0,0,1,1];

color1 = [0.4 0.8 1];
color2 = [0.8 0 0.9];
color3 = [0.3 0 0.8];
color4 = [1 1 0.1];
color5 = [1 0.6 0.2];
color6 = [0.5 1 0.2];
color7 = [1 0 0.2];
 
fill(XB,YB,'w'), hold on
title("Polygons and colours")
axis([0,30,0,30]);

for i = 1:xcord
    fill([i i], [0 ycord], 'b')
end
for i = 1:ycord
    fill([0 xcord], [i i], 'b')
end

    for i = 1:size(M,1)
        a = M(i, 1);
        b = M(i, 2);
        c = M(i, 3);
        d = M(i, 4);
        
        switch a
        case 1
            switch b
                case 1
                    fill(x1 + c, y1 + d, color1)
                case 2
                    fill(-x1 + c, y1 + d, color1)
                case 3
                    fill(x1 + c, -y1 + d, color1)
                case 4
                    fill(-x1 + c, -y1 + d, color1)
            end
        case 2 
            switch b
                case 1
                    fill(x2 + c, y2 + d, color2)
                case 2
                    fill(-x2 + c, y2 + d, color2)
                case 3
                    fill(x2 + c, -y2 + d, color2)
                case 4
                    fill(-x2 + c, -y2 + d, color2)
            end
        case 3 
            switch b
                case 1
                    fill(x3 + c, y3 + d, color3)
                case 2
                    fill(-x3 + c, y3 + d, color3)
                case 3
                    fill(x3 + c, -y3 + d, color3)
                case 4
                    fill(-x3 + c, -y3 + d, color3)
            end
        case 4
            switch b
                case 1
                    fill(x4 + c, y4 + d, color4)
                case 2
                    fill(-x4 + c, y4 + d, color4)
                case 3
                    fill(x4 + c, -y4 + d, color4)
                case 4
                    fill(-x4 + c, -y4 + d, color4)
            end
        case 5 
            switch b
                case 1
                    fill(x5 + c, y5 + d, color5)
                case 2
                    fill(-x5 + c, y5 + d, color5)
                case 3
                    fill(x5 + c, -y5 + d, color5)
                case 4
                    fill(-x5 + c, -y5 + d, color5)
            end
        case 6 
            switch b
                case 1
                    fill(x6 + c, y6 + d, color6)
                case 2
                    fill(-x6 + c, y6 + d, color6)
                case 3
                    fill(x6 + c, -y6 + d, color6)
                case 4
                    fill(-x6 + c, -y6 + d, color6)
            end
        case 7
            switch b
                case 1
                    fill(x7 + c, y7 + d, color7)
                case 2
                    fill(-x7 + c, y7 + d, color7)
                case 3
                    fill(x7 + c, -y7 + d, color7)
                case 4
                    fill(-x7 + c, -y7 + d, color7)
            end
        end
    end
end