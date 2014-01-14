% write_latex_table (row_mean,row_var,col_mean,col_var,filename)
% Generates LaTeX code for a table displaying the statistics
% calculated for the histogram part of 339 Intro To PC exercise
% row_mean and row_var should be vectors of equal length,
% col_mean and col_var should also be vector of equal length, in
% fact, all the vectors should be 20 elements long!
function write_latex_table (row_mean,row_var,col_mean,col_var,filename)
    fid = fopen (filename,'w');
    fprintf(fid, '\\begin{tabular}{cc} %% outside table, contains two tables\n');
    fprintf(fid, '\\begin{tabular}{|r|r|r|} %% left inner table\n');
    fprintf(fid, '\\hline\\multicolumn{3}{|c|}{Row Statistics}\\\\ % title spans 3 columns\n');
    fprintf(fid, '\\hline\\hline Row & Mean & Variance \\\\\n\\hline\\hline\n');
    for i = 1:size(row_mean,2)
        fprintf(fid,'%d & %6.3f & %6.3f \\\\\n\\hline\n',i,row_mean(i),row_var(i));
    end
    fprintf(fid, '\\end{tabular} % end right inner table\n');
    fprintf(fid, '\\begin{tabular}{|r|r|r|} % right inner table\n');
    fprintf(fid, '\\hline\\multicolumn{3}{|c|}{Column Statistics}\\\\ % title spans 3 columns\n');
    fprintf(fid, '\\hline\\hline Column & Mean & Variance \\\\\n\\hline\\hline\n');
    for i = 1:size(col_mean,2)
        fprintf(fid,'%d & %6.3f & %6.3f \\\\\n\\hline\n',i,col_mean(i),col_var(i));
    end
    fprintf(fid, '\\end{tabular} % end right inner table\n');
    fprintf(fid, '\\end{tabular} % end outer table\n');
    fclose(fid);
    
