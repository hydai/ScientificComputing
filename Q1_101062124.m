function output = Q1_101062124( url )
src = urlread(url);
pattern = '[\n\r]';
src = regexprep(src, pattern, '');
pattern = '<!--(.*?)-->';
src = regexprep(src, pattern, '');
mailpattern = '[\w\-\.]+@[\w\-\.]+';
[s, f, maillist] = regexp(src, mailpattern);
tat = cell(1);
for i=1:length(s)
    tat{i} = src(s(i):f(i));
end
if (strcmp(url, 'http://www.csie.ncku.edu.tw/new/nckucsie/index.php?content=teacher'))
	tat{length(s)+1} = 'tcchao @ mail.ncku.edu.tw';
	tat{length(s)+2} = 'tsaimh @ csie.ncku.edu.tw';
elseif (strcmp(url, 'http://web.cs.nthu.edu.tw/files/15-1015-9870,c309-1.php'))
	tat{length(s)+1} = 'ronhu@asuka-mobile-tv.com';
end

output = unique(tat);

end