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
function triplet_plot (data,fmt)
[rows,cols] = size (data);		% get dimensions of data
if (cols ~= 3)				% make sure data is triplets
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end
x = data(:,1)';
y = data(:,2)';
e = data(:,3)';
errorbar(x,y,e,fmt)
