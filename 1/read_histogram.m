% READ_HISTOGRAM
% Reads data from histogram data provided in 339 exercise
% Returns: histograms, number of intervals
% Structure of histograms is as described in exercise handout
% intervals should be equal to 
function [matrix,intervals] = read_histogram (filename)
fid = fopen (filename);
rows = fscanf (fid,'%d',1);
cols = fscanf (fid,'%d',1);
intervals = fscanf (fid,'%d',1);
for R = 1:rows
  row = fscanf(fid,'%d',cols);
  if R == 1
    matrix = row';
  else
    matrix = cat(1,matrix,row');
  end
end
fclose(fid);