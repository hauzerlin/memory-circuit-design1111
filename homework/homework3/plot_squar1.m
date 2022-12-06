function []  = plot_squar1 ( x1, y1, x2, y2 );

% set the angle range = 43~47
up_angle = 47;
low_angle = 43;

plot(x1,y1,'b',LineWidth=3.0);
hold on
plot(x2, y2,'r',LineWidth=3.0);

array1_length = length(x1);
array2_length = length(x2);

axis equal

for i =0:array1_length-1
    for j = 0:array2_length-1
        save_angle(i+1,j+1) = line_angle(x1(i+1),y1(i+1),x2(j+1),y2(j+1));
        save_length(i+1,j+1) = line_length(x1(i+1),y1(i+1),x2(j+1),y2(j+1));
    end
end

cnt = 0;

for i =11:array1_length-10
    for j = 11:array2_length-10
        if(save_angle(i,j)>low_angle && save_angle(i,j)<up_angle)
            list_x(cnt+1) = i;
            list_y(cnt+1) = j;
            cnt = cnt+1;
        end
    end
end

max = 0;
max_x =0;
max_y =0;

for i = 1:length(list_y)
    if(save_length(list_x(i),list_y(i))>max)
        max =save_length(list_x(i),list_y(i));
        max_x = list_x(i);
        max_y = list_y(i);
    end
end

fprintf("square diagonal length : %d\n",save_length(max_x,max_y));


plot([x1(max_x),x2(max_y)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)

plot([x1(max_x),x1(max_x)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)
plot([x1(max_x),x2(max_y)],[y2(max_y),y2(max_y)],'g',LineWidth=3.0)
plot([x2(max_y),x2(max_y)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)
plot([x1(max_x),x2(max_y)],[y1(max_x),y1(max_x)],'g',LineWidth=3.0)

