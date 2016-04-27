%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\zangyw);

ods listing close;
ods  html  file="E:\Tibet\data\out\zangyw\zangyw.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.zangyw,
zcj,
藏语文,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.zangyw,
dqmc,地区,
zcj);

%basic_analyse(
tibet.zangyw,
xbmc,性别,
zcj);

%basic_analyse(
tibet.zangyw,
mzmc,民族,
zcj);

%basic_analyse(
tibet.zangyw,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.zangyw,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.zangyw,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,zangyw);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.zangyw,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24      t2527_25
t2527_26      t2527_27      t2829_28      t2829_29      t3031_30
t3031_31      t3236_32      t3236_33      t3236_34      t3236_35
t3236_36      t37
t381_381      t381_391      t381_401      t381_411      t381_421      t381_431
t382_382      t382_392      t382_402      t382_412      t382_422      t382_432
t383_383      t383_393      t383_403      t383_413      t383_423      t383_433
t44
    ,
tibet.zangyw_items
);


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.zangyw,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5
xzt_xx6      xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10
xzt_xx11      xzt_xx12      xzt_xx13      xzt_xx14      xzt_xx15
xzt_xx16      xzt_xx17      xzt_xx18      xzt_xx19      xzt_xx20
xzt_xx21      xzt_xx22      xzt_xx23      xzt_xx24     ,
24); ******最后一个参数为选择题数量;

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';
data tmp33;
        set tibet.zangyw ;
        if t101a=381;
run;
data tmp34;
        set tibet.zangyw ;
        if t101a=382;
run;
data tmp35;
        set tibet.zangyw ;
        if t101a=383;
run;
%nandu(tmp33, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24      t2527_25
t2527_26      t2527_27      t2829_28      t2829_29      t3031_30
t3031_31      t3236_32      t3236_33      t3236_34      t3236_35
t3236_36      t37
t381_381      t381_391      t381_401      t381_411      t381_421      t381_431
t44
    , t44, tibet.zangyw_items,30);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp34, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24      t2527_25
t2527_26      t2527_27      t2829_28      t2829_29      t3031_30
t3031_31      t3236_32      t3236_33      t3236_34      t3236_35
t3236_36      t37
t382_382      t382_392      t382_402      t382_412      t382_422      t382_432
t44
    , t44, tibet.zangyw_items,30);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp35, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24      t2527_25
t2527_26      t2527_27      t2829_28      t2829_29      t3031_30
t3031_31      t3236_32      t3236_33      t3236_34      t3236_35
t3236_36      t37
t383_383      t383_393      t383_403      t383_413      t383_423      t383_433
t44
    , t44, tibet.zangyw_items,30);******  选做题; ******最后一个参数为选做题分值;

ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\zangyw\knowledge.rtf ";
%knowledge(tibet.zangyw, tibet.zangyw_items, zangyw, 藏语文, zhishi);
%knowledge(tibet.zangyw, tibet.zangyw_items, zangyw, 藏语文, nengli);
ods rtf close;
ods listing;
