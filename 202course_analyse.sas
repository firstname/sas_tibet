%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\yw);

ods listing close;
ods  html  file="E:\Tibet\data\out\yw\yw.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.yw,
zcj,
语文,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.yw,
dqmc,地区,
zcj);

%basic_analyse(
tibet.yw,
xbmc,性别,
zcj);

%basic_analyse(
tibet.yw,
mzmc,民族,
zcj);

%basic_analyse(
tibet.yw,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.yw,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.yw,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,yw);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.yw,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10    t11      t12           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items
);


/********************** items analyse2;

%include 'E:\Tibet\data\9020item_analyse.txt';

%item_analyse(
tibet.yw,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10     t11     t12           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items ,
dqmc,地区
);
***********/


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.yw,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5      xzt_xx6,
6);

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';
data tmp11;
        set tibet.yw ;
        if t2a=11;
run;
data tmp12;
        set tibet.yw ;
        if t2a=12;
run;
%nandu(tmp11, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t11           t1315      t1617_16
t1617_17      t18    , t18, tibet.yw_items,25);****** only item 11, because item 11/12 is 选做题;

%nandu(tmp12, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t12           t1315      t1617_16
t1617_17      t18    , t18, tibet.yw_items,25); ****** only item 12, because item 11/12 is 选做题;


ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\yw\knowledge.rtf ";
%knowledge(tibet.yw, tibet.yw_items, yw, 语文, zhishi);
%knowledge(tibet.yw, tibet.yw_items, yw, 语文, nengli);
ods rtf close;
ods listing;
