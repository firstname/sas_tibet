%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
%include 'E:\Tibet\data\991imp_exp.txt';

ods listing close;
ods  html  file="E:\Tibet\data\out\people.xls" ;
ods noproctitle;
%macro people(lb,lblabel, titl);
proc tabulate data=tibet.zf;
        class &lb.;
         table
       (&lb.='')
        ,( n='人数'  pctn='比例' )
       /box="&lblabel." row=float  ;
        label &lb.="&lblabel.";
       title "&titl. - 按照&lblabel.分类";
run;
%mend;
%macro people2(lb1,lblabel1, lb2, lblabel2, titl);
proc tabulate data=tibet.zf;
        class &lb2. &lb1.;
         table
      &lb1.="" ,   &lb2.="" *
        ( n='人数'  pctn='比例' )
       /box="&lblabel1.-&lblabel2." row=float  ;
        label &lb1.="&lblabel1." &lb2.="&lblabel2.";
       title "&titl. - 按照&lblabel1.、&lblabel2.分类";
run;
%mend;
%people( sxlbmc ,上线类别 ,上线人数分布);
%people2( dqmc , 地区  ,sxlbmc ,上线类别 ,上线人数分布);
%people2( mzmc ,民族   ,sxlbmc ,上线类别 ,上线人数分布);
%people2( klmc , 科类 ,sxlbmc ,上线类别 ,上线人数分布);
%people2( kslbmc ,考生类别  ,sxlbmc ,上线类别 ,上线人数分布);
%people2( xbmc ,性别  ,sxlbmc ,上线类别 ,上线人数分布);
%people2( zxmc , 学校 ,sxlbmc ,上线类别 ,上线人数分布);

%people( ljlbmc ,临界类别 ,临界人数分布);
%people2( dqmc , 地区  ,ljlbmc ,临界类别 ,临界人数分布);
%people2( mzmc ,民族   ,ljlbmc ,临界类别 ,临界人数分布);
%people2( klmc , 科类 ,ljlbmc ,临界类别 ,临界人数分布);
%people2( kslbmc ,考生类别  ,ljlbmc ,临界类别 ,临界人数分布);
%people2( xbmc ,性别  ,ljlbmc ,临界类别 ,临界人数分布);
%people2( zxmc , 学校 ,ljlbmc ,临界类别 ,临界人数分布);

%people( dqmc , 地区 ,考生人数分布);
%people( mzmc ,民族   ,考生人数分布 );
%people( minzu ,生源类别   ,考生人数分布 );
%people( klmc , 科类 ,考生人数分布);
%people( kslbmc ,考生类别  ,考生人数分布);
%people(  xbmc ,性别  ,考生人数分布);
%people(  zxmc , 学校 ,考生人数分布);

%people2( dqmc , 地区, mzmc ,民族  ,考生人数分布  );
%people2(  dqmc , 地区,klmc , 科类 ,考生人数分布);
%people2(  dqmc , 地区,kslbmc ,考生类别 ,考生人数分布 );
%people2(  dqmc , 地区,xbmc ,性别  ,考生人数分布);
%people2(  zxmc , 学校 ,dqmc , 地区 ,考生人数分布);
ods html close;
ods listing;
