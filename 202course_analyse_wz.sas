%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\wz);

ods listing close;
ods  html  file="E:\Tibet\data\out\wz\wz.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.wz,
zcj,
文科综合,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.wz,
dqmc,地区,
zcj);

%basic_analyse(
tibet.wz,
xbmc,性别,
zcj);

%basic_analyse(
tibet.wz,
mzmc,民族,
zcj);

%basic_analyse(
tibet.wz,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.wz,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.wz,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,wz);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.wz,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42            t43       t44
      t45_451      t45_452      t46_461      t46_462      t47_471
    t47_472      t47_473      t48_481      t48_482      t48_483
    ,
tibet.wz_items
);


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.wz,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5      xzt_xx6
xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10      xzt_xx11      xzt_xx12
xzt_xx13      xzt_xx14      xzt_xx15      xzt_xx16      xzt_xx17      xzt_xx18
xzt_xx19      xzt_xx20      xzt_xx21      xzt_xx22      xzt_xx23      xzt_xx24
xzt_xx25      xzt_xx26      xzt_xx27      xzt_xx28      xzt_xx29      xzt_xx30
xzt_xx31      xzt_xx32      xzt_xx33      xzt_xx34      xzt_xx35,
35);

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';
data tmp42;
        set tibet.wz ;
        if t101a=42;
run;
data tmp43;
        set tibet.wz ;
        if t101a=43;
run;
data tmp44;
        set tibet.wz ;
        if t101a=44;
run;
%nandu(tmp42, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42
      t45_451      t45_452      t46_461      t46_462      t47_471
    t47_472      t47_473      t48_481      t48_482      t48_483
    , t42, tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp43, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
      t43
      t45_451      t45_452      t46_461      t46_462      t47_471
    t47_472      t47_473      t48_481      t48_482      t48_483
    , t43, tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp44, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
     t44
      t45_451      t45_452      t46_461      t46_462      t47_471
    t47_472      t47_473      t48_481      t48_482      t48_483
    , t44, tibet.wz_items,65);******  选做题;******最后一个参数为选做题分值;
data tmp45;
        set tibet.wz ;
        if t201a=45;
run;
data tmp46;
        set tibet.wz ;
        if t201a=46;
run;
data tmp47;
        set tibet.wz ;
        if t201a=47;
run;
data tmp48;
        set tibet.wz ;
        if t201a=48;
run;
%nandu(tmp45, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42            t43       t44
      t45_451      t45_452
    , t45_452, tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp46, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42            t43       t44
      t46_461      t46_462
    , t46_462, tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp47, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42            t43       t44
      t47_471
    t47_472      t47_473
    , t47_473 , tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp48, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10      xzt_fs11      xzt_fs12
xzt_fs13      xzt_fs14      xzt_fs15      xzt_fs16      xzt_fs17      xzt_fs18
xzt_fs19      xzt_fs20      xzt_fs21      xzt_fs22      xzt_fs23      xzt_fs24
xzt_fs25      xzt_fs26      xzt_fs27      xzt_fs28      xzt_fs29      xzt_fs30
xzt_fs31      xzt_fs32      xzt_fs33      xzt_fs34      xzt_fs35      t3612_361
t3612_362      t3634_363      t3634_364      t3713_371      t3724_372      t3713_373
t3724_374      t381      t382      t391      t392      t393      t401      t402      t41
t42            t43       t44
      t48_481      t48_482      t48_483
    , t48_483, tibet.wz_items,65);******  选做题; ******最后一个参数为选做题分值;

ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\wz\knowledge.rtf ";
%knowledge(tibet.wz, tibet.wz_items, wz, 文科综合, zhishi);
%knowledge(tibet.wz, tibet.wz_items, wz, 文科综合, nengli);
ods rtf close;
ods listing;
