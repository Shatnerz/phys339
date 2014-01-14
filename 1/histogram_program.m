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

function [data_out] =  histogram_program (data_in)

average = zeros (20,1);

for i=1:20
    
    for counter = 1:20
        
        x = data_in(counter,:)';

        foo(i) = x(counter).*(counter-1)


    end
    
    
end    

