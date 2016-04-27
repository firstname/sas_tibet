%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\ws);

ods listing close;
ods  html  file="E:\Tibet\data\out\ws\ws.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.ws,
zcj,
�Ŀ���ѧ,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.ws,
dqmc,����,
zcj);

%basic_analyse(
tibet.ws,
xbmc,�Ա�,
zcj);

%basic_analyse(
tibet.ws,
mzmc,����,
zcj);

%basic_analyse(
tibet.ws,
kslbmc,�������,
zcj);

%basic_analyse(
tibet.ws,
zxmc,ѧУ,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.ws,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,ws);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.ws,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      t1316_13      t1316_14      t1316_15
t1316_16      t17      t18      t19      t20      t21      t22
      t23
      t24
    ,
tibet.ws_items
);


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.ws,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5
xzt_xx6      xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10
xzt_xx11      xzt_xx12,
12);

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';
data tmp11;
        set tibet.ws ;
        if t1a=22;
run;
data tmp12;
        set tibet.ws ;
        if t1a=23;
run;
data tmp13;
        set tibet.ws ;
        if t1a=24;
run;
%nandu(tmp11, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      t1316_13      t1316_14      t1316_15
t1316_16      t17      t18      t19      t20      t21      t22
    , t22, tibet.ws_items,20);******  ѡ����; ******���һ������Ϊѡ�����ֵ;

%nandu(tmp12, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      t1316_13      t1316_14      t1316_15
t1316_16      t17      t18      t19      t20      t21      t23
    , t23, tibet.ws_items,20);******  ѡ����; ******���һ������Ϊѡ�����ֵ;

%nandu(tmp13, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      t1316_13      t1316_14      t1316_15
t1316_16      t17      t18      t19      t20      t21      t24
    , t24, tibet.ws_items,20);******  ѡ����;******���һ������Ϊѡ�����ֵ;

ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\ws\knowledge.rtf ";
%knowledge(tibet.ws, tibet.ws_items, ws, �Ŀ���ѧ, zhishi);
%knowledge(tibet.ws, tibet.ws_items, ws, �Ŀ���ѧ, nengli);
ods rtf close;
ods listing;
