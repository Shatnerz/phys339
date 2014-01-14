
function [x,y,e] = triplet_explode (data)
[rows,cols] = size (data);	
if (cols ~= 3)			
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end
x = data(:,1)';
y = data(:,2)';
e = data(:,3)';

