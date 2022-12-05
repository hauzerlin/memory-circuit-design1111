function [value] = line_length( x1, y1, x2, y2);
value = sqrt((abs(x1)-abs(x2))^2 + (abs(y1)-abs(y2))^2);
