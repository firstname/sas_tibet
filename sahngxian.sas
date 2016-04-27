%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);

ods listing close;
ods  html  file="E:\Tibet\data\out\shangxian.xls"  ;
ods noproctitle;

proc tabulate data=tibet.zf;
        class klmc minzu sxlbmc;
        table  (klmc="科类" * sxlbmc="上线类别"), minzu="民族" * n="" / box="上线人数";
        run;
proc sort   data=tibet.zf ;
        by klmc ; run;

proc freq data=tibet.zf ;
        by klmc ;
        tables zf_zcf*minzu  /norow nocol nopercent out=shangxian;
        run;
proc sort data=shangxian;
        by klmc minzu zf_zcf;
        run;
proc print data=shangxian noobs;
        var klmc minzu zf_zcf count;
        run;


ods html close;
ods listing;
