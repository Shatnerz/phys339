% triplet_plot (data, fmt)
% Plots dataset conforming to 339 general data specification with
% error-bars and user specified point format.  Arguments are as
% follows:
%   data: matrix with N rows and 3 columns
%   fmt:  specification of point style
%
%  Interpretation of columns in matrix data are as follows:
%   1: Independent variable
%   2: Dependent variable
%   3: Error on dependent variable.
function [data_out] =  triplet_integral (data_in)
[rows,cols] = size (data_in);		% get dimensions of data
if (cols ~= 3)				% make sure data is triplets
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end

%Explode data
x_in = data_in(:,1)';
y_in = data_in(:,2)';
e_in = data_in(:,3)';

% Find dx and dy

counter = 1;
x_out = x_in(1:end-1);
y_out_table = zeros(rows,1);
e_out_table = zeros (rows,1);

for counter = 1:(rows-1) 
    
    x_in_left = x_in(counter);
    x_in_right = x_in(counter+1);
    
    y_in_left = y_in(counter);
    y_in_right = y_in(counter+1);
    
    dx = x_in_right - x_in_left; 
    avg_y = 0.5*(y_in_left+y_in_right);
    
    y_out_table(counter) = avg_y*dx;
    y_out(counter) = sum(y_out_table);
    
    e_out_table(counter) = e_in(counter).^2 + e_in(counter+1).^2;
    e_out(counter) = (dx/2)*sqrt(sum(e_out_table));   
    %added (counter)
    
end



    data_out = cat (2,x_out',y_out',e_out');