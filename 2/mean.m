% mean (array) - returns mean of each row assuming
% column 1 represents the number of 0 occurences
% column 2 represents the number of 1 occurences
% column 3 represents the number of 2 occurences
% etc
% just a quick hack until i figure out how we analyzed the hist in lab1

function [data_out] = mean (data_in)
[rows,cols] = size (data_in);		% get dimensions of data

means = zeros(cols,1)';
size_data = sum(data_in(1,:)); %number to divide total by to get the mean

for y=1:cols
  total = 0;
  disp(data_in(y,1));
  for x = 1:rows
    total = total + (x-1)*data_in(y,x);
  end
  means(y) = total/size_data;
end

data_out = means;
