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
function [data_out] =  triplet_squared (data_in)
[rows,cols] = size (data_in);		% get dimensions of data
if (cols ~= 3)				% make sure data is triplets
  error ('triplet_plot: data is not triplets (%d columns, expected 3)',cols)
end

%Explode data
x_in = data_in(:,1)';
y_in = data_in(:,2)';
e_in = data_in(:,3)';

% Square y_in
x_out = x_in;
y_out = y_in.^2;

%Propagate error
e_out = abs(2.*y_in).*e_in;

% Assemble vectro in triplet form

data_out = cat (2,x_out',y_out',e_out');