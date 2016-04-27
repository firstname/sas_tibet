%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\hanyw);

ods listing close;
ods  html  file="E:\Tibet\data\out\hanyw\hanyw.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.hanyw,
zcj,
汉语文,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.hanyw,
dqmc,地区,
zcj);

%basic_analyse(
tibet.hanyw,
xbmc,性别,
zcj);

%basic_analyse(
tibet.hanyw,
mzmc,民族,
zcj);

%basic_analyse(
tibet.hanyw,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.hanyw,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.hanyw,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,hanyw);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.hanyw,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      t1718_17      t1718_18      t1922_19
t2030_20      t2030_21      t1922_22      t2030_23
t2425_24      t2425_25      t2030_26      t2728_27
t2728_28      t2030_29      t2030_30      t31    ,
tibet.hanyw_items
);


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.hanyw,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5      xzt_xx6
xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10      xzt_xx11      xzt_xx12
xzt_xx13      xzt_xx14      xzt_xx15      xzt_xx16     ,
16);

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';

%nandu(tibet.hanyw, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      t1718_17      t1718_18      t1922_19
t2030_20      t2030_21      t1922_22      t2030_23
t2425_24      t2425_25      t2030_26      t2728_27
t2728_28      t2030_29      t2030_30      t31  , t31, tibet.hanyw_items,0);******最后一个参数为选做题分值;




ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\hanyw\knowledge.rtf ";
%knowledge(tibet.hanyw, tibet.hanyw_items, hanyw, 汉语文, zhishi);
%knowledge(tibet.hanyw, tibet.hanyw_items, hanyw, 汉语文, nengli);
ods rtf close;
ods listing;
