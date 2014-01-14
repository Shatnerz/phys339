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
function [data_out] =  triplet_derivative (data_in)
[rows,cols] = size (data_in);		% get dimensions of data
if (cols ~= 3)				% make sure data is triplets
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end

%Explode data
x_in = data_in(:,1)';
y_in = data_in(:,2)';
e_in = data_in(:,3)';

% Find dx and dy
x_in_left = x_in(1:end-1);
x_in_right = x_in(2:end);
y_in_left = y_in(1:end-1);
y_in_right =y_in(2:end);

e_in_left = e_in(1:end-1);
e_in_right =e_in(2:end);

dx = x_in_right - x_in_left;
dy = y_in_right - y_in_left; 

x_out = x_in(1:end-1);
y_out= dy./dx;

%Propagate error
e_out = sqrt(e_in_right.^2+e_in_left.^2)./dx;

% Assemble vectro in triplet form

data_out = cat (2,x_out',y_out',e_out');