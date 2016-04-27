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
        ,( n='����'  pctn='����' )
       /box="&lblabel." row=float  ;
        label &lb.="&lblabel.";
       title "&titl. - ����&lblabel.����";
run;
%mend;
%macro people2(lb1,lblabel1, lb2, lblabel2, titl);
proc tabulate data=tibet.zf;
        class &lb2. &lb1.;
         table
      &lb1.="" ,   &lb2.="" *
        ( n='����'  pctn='����' )
       /box="&lblabel1.-&lblabel2." row=float  ;
        label &lb1.="&lblabel1." &lb2.="&lblabel2.";
       title "&titl. - ����&lblabel1.��&lblabel2.����";
run;
%mend;
%people( sxlbmc ,������� ,���������ֲ�);
%people2( dqmc , ����  ,sxlbmc ,������� ,���������ֲ�);
%people2( mzmc ,����   ,sxlbmc ,������� ,���������ֲ�);
%people2( klmc , ���� ,sxlbmc ,������� ,���������ֲ�);
%people2( kslbmc ,�������  ,sxlbmc ,������� ,���������ֲ�);
%people2( xbmc ,�Ա�  ,sxlbmc ,������� ,���������ֲ�);
%people2( zxmc , ѧУ ,sxlbmc ,������� ,���������ֲ�);

%people( ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( dqmc , ����  ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( mzmc ,����   ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( klmc , ���� ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( kslbmc ,�������  ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( xbmc ,�Ա�  ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);
%people2( zxmc , ѧУ ,ljlbmc ,�ٽ���� ,�ٽ������ֲ�);

%people( dqmc , ���� ,���������ֲ�);
%people( mzmc ,����   ,���������ֲ� );
%people( minzu ,��Դ���   ,���������ֲ� );
%people( klmc , ���� ,���������ֲ�);
%people( kslbmc ,�������  ,���������ֲ�);
%people(  xbmc ,�Ա�  ,���������ֲ�);
%people(  zxmc , ѧУ ,���������ֲ�);

%people2( dqmc , ����, mzmc ,����  ,���������ֲ�  );
%people2(  dqmc , ����,klmc , ���� ,���������ֲ�);
%people2(  dqmc , ����,kslbmc ,������� ,���������ֲ� );
%people2(  dqmc , ����,xbmc ,�Ա�  ,���������ֲ�);
%people2(  zxmc , ѧУ ,dqmc , ���� ,���������ֲ�);
ods html close;
ods listing;
