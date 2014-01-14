function [int_y] = integrate(x,y)
    x_left = x(1:end-1);
    x_right = x(2:end);
    y_left = y(1:end-1);
    y_right = y(2:end);
    dx = x_right - x_left;
    int_y = sum(0.5*(y_left + y_right).* dx);