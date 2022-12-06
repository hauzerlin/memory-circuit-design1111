function []  = plot_squar2 ( x1, y1, x2, y2 );


% set the angle range = 43~47
up_angle = 47;
low_angle = 43;

array1_length = length(x1);
array2_length = length(x2);

plot(x1,y1,'b',LineWidth=3.0);
hold on
plot(x2, y2,'r',LineWidth=3.0);



axis equal

for i =0:array1_length-1
    for j = 0:array2_length-1
        save_angle(i+1,j+1) = line_angle(x1(i+1),y1(i+1),x2(j+1),y2(j+1));
        save_length(i+1,j+1) = line_length(x1(i+1),y1(i+1),x2(j+1),y2(j+1));
    end
end

cnt = 0;

for i =1:array1_length
    for j = 1:array2_length
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

fprintf("right square diagonal length : %d\n",save_length(max_x,max_y));

plot([x1(max_x),x2(max_y)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)

plot([x1(max_x),x1(max_x)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)
plot([x1(max_x),x2(max_y)],[y2(max_y),y2(max_y)],'g',LineWidth=3.0)
plot([x2(max_y),x2(max_y)],[y1(max_x),y2(max_y)],'g',LineWidth=3.0)
plot([x1(max_x),x2(max_y)],[y1(max_x),y1(max_x)],'g',LineWidth=3.0)
hold on

for i =0:array1_length-1
    for j = 0:array2_length-1
        save_angle_left(i+1,j+1) = line_angle(x2(i+1),y2(i+1),x1(j+1),y1(j+1));
        save_length_left(i+1,j+1) = line_length(x2(i+1),y2(i+1),x1(j+1),y1(j+1));
    end
end

cnt = 0;

for i =1:array1_length
    for j = 1:array2_length
        if(save_angle_left(i,j)>low_angle && save_angle_left(i,j)<up_angle)
            list_x_left(cnt+1) = i;
            list_y_left(cnt+1) = j;
            cnt = cnt+1;
        end
    end
end

max_left = 0;
max_x_left =0;
max_y_left =0;

for i = 1:length(list_y_left)
    if(save_length_left(list_x_left(i),list_y_left(i))>max_left)
        max_left =save_length_left(list_x_left(i),list_y_left(i));
        max_x_left = list_x_left(i);
        max_y_left = list_y_left(i);
    end
end

fprintf("left square diagonal length : %d\n",save_length_left(max_x_left,max_y_left));


plot([x2(max_x_left),x1(max_y_left)],[y2(max_x_left),y1(max_y_left)],'g',LineWidth=3.0)

plot([x2(max_x_left),x2(max_x_left)],[y2(max_x_left),y1(max_y_left)],'g',LineWidth=3.0)
plot([x2(max_x_left),x1(max_y_left)],[y1(max_y_left),y1(max_y_left)],'g',LineWidth=3.0)
plot([x1(max_y_left),x1(max_y_left)],[y2(max_x_left),y1(max_y_left)],'g',LineWidth=3.0)
plot([x2(max_x_left),x1(max_y_left)],[y2(max_x_left),y2(max_x_left)],'g',LineWidth=3.0)




end