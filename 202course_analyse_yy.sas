%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\yy);

ods listing close;
ods  html  file="E:\Tibet\data\out\yy\yy.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.yy,
zcj,
英语,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.yy,
dqmc,地区,
zcj);

%basic_analyse(
tibet.yy,
xbmc,性别,
zcj);

%basic_analyse(
tibet.yy,
mzmc,民族,
zcj);

%basic_analyse(
tibet.yy,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.yy,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.yy,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,yy);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.yy,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34
xzt_fs35      xzt_fs36      xzt_fs37      xzt_fs38      xzt_fs39      xzt_fs40
xzt_fs41      xzt_fs42      xzt_fs43      xzt_fs44      xzt_fs45      xzt_fs46
xzt_fs47      xzt_fs48      xzt_fs49      xzt_fs50      xzt_fs51      xzt_fs52
xzt_fs53      xzt_fs54      xzt_fs55      xzt_fs56      xzt_fs57      xzt_fs58
xzt_fs59      xzt_fs60      t6170_61
t6170_62      t6170_63      t6170_64      t6170_65      t6170_66      t6170_67
t6170_68      t6170_69      t6170_70      t7180_71      t7180_72      t7180_73
t7180_74      t7180_75      t7180_76      t7180_77      t7180_78      t7180_79
t7180_80      t81     ,
tibet.yy_items
);


/********************** items analyse2;

%include 'E:\Tibet\data\9020item_analyse.txt';

%item_analyse(
tibet.yy,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10     t11     t12           t1315      t1617_16
t1617_17      t18    ,
tibet.yy_items ,
dqmc,地区
);
***********/


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.yy,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5      xzt_xx6
xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10      xzt_xx11      xzt_xx12
xzt_xx13      xzt_xx14      xzt_xx15      xzt_xx16      xzt_xx17      xzt_xx18
xzt_xx19      xzt_xx20      xzt_xx21      xzt_xx22      xzt_xx23      xzt_xx24
xzt_xx25      xzt_xx26      xzt_xx27      xzt_xx28      xzt_xx29      xzt_xx30
xzt_xx31      xzt_xx32      xzt_xx33      xzt_xx34
xzt_xx35      xzt_xx36      xzt_xx37      xzt_xx38      xzt_xx39      xzt_xx40
xzt_xx41      xzt_xx42      xzt_xx43      xzt_xx44      xzt_xx45      xzt_xx46
xzt_xx47      xzt_xx48      xzt_xx49      xzt_xx50      xzt_xx51      xzt_xx52
xzt_xx53      xzt_xx54      xzt_xx55      xzt_xx56      xzt_xx57      xzt_xx58
xzt_xx59      xzt_xx60,
60);

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';

%nandu(tibet.yy, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34
xzt_fs35      xzt_fs36      xzt_fs37      xzt_fs38      xzt_fs39      xzt_fs40
xzt_fs41      xzt_fs42      xzt_fs43      xzt_fs44      xzt_fs45      xzt_fs46
xzt_fs47      xzt_fs48      xzt_fs49      xzt_fs50      xzt_fs51      xzt_fs52
xzt_fs53      xzt_fs54      xzt_fs55      xzt_fs56      xzt_fs57      xzt_fs58
xzt_fs59      xzt_fs60      t6170_61
t6170_62      t6170_63      t6170_64      t6170_65      t6170_66      t6170_67
t6170_68      t6170_69      t6170_70      t7180_71      t7180_72      t7180_73
t7180_74      t7180_75      t7180_76      t7180_77      t7180_78      t7180_79
t7180_80      t81    , t81, tibet.yy_items,0);******最后一个参数为选做题分值;




ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\yy\knowledge.rtf ";
%knowledge(tibet.yy, tibet.yy_items, yy, 英语, zhishi);
%knowledge(tibet.yy, tibet.yy_items, yy, 英语, nengli);
ods rtf close;
ods listing;
