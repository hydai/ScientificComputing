function output = Q1_101062124( url )
src = urlread(url);
pattern = '[\n\r]';
src = regexprep(src, pattern, '');
pattern = '<!--(.*?)-->';
src = regexprep(src, pattern, '');
mailpattern = '([[\.\-a-zA-Z0-9]+]+[ \.\-a-zA-Z0-9]+)@([ \.\-a-zA-Z]+[[ \.\-a-zA-Z]+]+)';
%mailpattern = '<a href="mailto:(.*?)">';
[s, f, maillist] = regexp(src, mailpattern);
tat = cell(1);
for i=1:length(s)
    tat{i} = strcat(src(maillist{i}(1,1):maillist{i}(1,2)), '@', src(maillist{i}(2,1):maillist{i}(2,2)));
end
output = unique(tat);

end