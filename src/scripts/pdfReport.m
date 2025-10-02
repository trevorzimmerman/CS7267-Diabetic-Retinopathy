%{
---------------------------------------------------------------------------
This function uses the script mergePdfs.m written by not me.

This function combines all the pdf files into 1 pdf file and deletes the
generated temp pdfs.
---------------------------------------------------------------------------
%}

function [pdfFinal] = pdfReport(REPLY)
set(gcf,'Units','inches');
set(gcf,...
    'PaperPosition',[0 0 11 8.5],...
    'PaperSize',[11 8.5],...
    'Visible','off');

pdfFinal = 'Final_Report.pdf';
pg1 = 'pdf/Cover.pdf';
pg2 = 'pdf/pg2.pdf';
p_2 = 'pdf/pg2_retrain.pdf';
pg3 = 'pdf/cmTemp.pdf';
pg4 = 'pdf/data.pdf';       
pg5 = 'pdf/barTemp.pdf';

if REPLY == 0
    mergeFiles = {pg1, pg2, pg3, pg4, pg5};
else
    mergeFiles = {pg1, p_2, pg3, pg5};
end
mergePdfs(mergeFiles, pdfFinal);
delete ('pdf/*Temp.pdf');
pdfFinal = [pdfFinal,' completed!'];
end