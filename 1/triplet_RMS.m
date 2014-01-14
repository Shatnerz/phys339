
function [data_out] = triplet_RMS (data_in)
[rows,cols] = size (data_in);	
if (cols ~= 3)			
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end

data_sq_int_sqrt = triplet_integral( triplet_squared(data_in) ) ;


x_in = data_sq_int_sqrt(:,1)';
y_in = data_sq_int_sqrt(:,2)';
e_in = data_sq_int_sqrt(:,3)';

x_out = x_in;
y_out = y_in./x_in;
e_out = e_in./x_in;

data_out = triplet_squareroot(cat(2,x_out',y_out',e_out'));

