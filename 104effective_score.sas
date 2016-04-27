%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);

ods listing close;
ods  html  file="E:\Tibet\data\out\effective_score.xls" ;
ods noproctitle;

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.zf,
sxlbmc,
klmc,
zf yw yy ws ls wz lz hanyw zangyw,
minzu
);


ods html close;
ods listing;
