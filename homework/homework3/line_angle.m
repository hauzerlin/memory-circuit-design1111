function [ angle ] = line_angle(x1, y1, x2, y2);
x = x1-x2;
y = y1-y2;
angle = atan(y/x)*180/pi;