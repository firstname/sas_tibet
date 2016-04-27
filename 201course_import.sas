%macro course_imp(course, datafile);

%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
%include 'E:\Tibet\data\991imp_exp.txt';
        %imp_dbf(E:\Tibet\data\raw\score\&datafile..dbf, work.tep);
data _null_;
        put "&course. imported,split will begain";
        run;
%include 'E:\Tibet\data\992split.txt';
        %split_comma(work.tep,work.tmp2,jmxx1,xzt_xx);
        %split_comma_num(work.tmp2,work.tmp3,jmss1,xzt_fs);
data _null_;
        put "&course. splited";
        run;
***************** import score;
data bmk;
        set tibet.zf;
        if &course._qk="N";
        if zf>0 and  &course.>=0;
run;
proc sql;
        create table tibet.&course. as
        select *
        from bmk
        left join tmp3
        on tmp3.zkzh = bmk.zkzh
;
quit;
data _null_;
        put "&course. created";
        run;
**************** import xmb;
%imp_xls(E:\Tibet\data\raw\xmb\&course._items.xls, Sheet1, tibet.&course._items );
data _null_;
        put "&course.itmes imported";
        run;
%mend;

%course_imp(yw, 901yw);
%course_imp(yy, 902yy);
%course_imp(ws, 903ws);
%course_imp(ls, 904ls);
%course_imp(wz, 905wz);
%course_imp(lz, 906lz);
%course_imp(hanyw, 907hanyw);
%course_imp(zangyw, 908zangyw);
