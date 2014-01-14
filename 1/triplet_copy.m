% TRIPLET_COPY - copies a 339 triplet data set.
% input - data_in : N rows by 3 columns, see specification below
% output - data_out: Identical to data_in
%
%  Interpretation of columns in matrix data are as follows:
%   1: Independent variable
%   2: Dependent variable
%   3: Error on dependent variable
%
% While not an obviously useful function, "B = A", would be
% equivalent to "B = triplet_copy (A)", it provides a template for
% building more complicated functions to read and return triplet
% data.
function [data_out] = triplet_copy (data_in)
[rows,cols] = size (data_in);		% get dimensions of data
if (cols ~= 3)				% make sure data is triplets
  error ('%s: data is not triplets (%d columns, expected 3)',mfilename,cols)
end
% Explode triplet format in to vectors
x_in = data_in(:,1)';
y_in = data_in(:,2)';
e_in = data_in(:,3)';

% Do complicated operations here.
x_out = x_in;
y_out = y_in;
e_out = e_in;

% Assemble vectors back into triplet format
data_out = cat(2,x_out',y_out',e_out');
