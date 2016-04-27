%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
          %cre_dir(E:\Tibet\data\out\lz);

ods listing close;
ods  html  file="E:\Tibet\data\out\lz\lz.xls" ;
ods noproctitle;

**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.lz,
zcj,
理科综合,
five.);

********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';
%basic_analyse(
tibet.lz,
dqmc,地区,
zcj);

%basic_analyse(
tibet.lz,
xbmc,性别,
zcj);

%basic_analyse(
tibet.lz,
mzmc,民族,
zcj);

%basic_analyse(
tibet.lz,
kslbmc,考生类别,
zcj);

%basic_analyse(
tibet.lz,
zxmc,学校,
zcj);

********************** effective score ;
%include 'E:\Tibet\data\906effective_score.txt';
%effective_score(
tibet.lz,
sxlbmc,
klmc,
zcj,
minzu
);



********************** nearby students ;
%include 'E:\Tibet\data\907nearly_stu.txt';
%linjie(tibet.zf,lz);


********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';

%item_analyse(
tibet.lz,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352      t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    ,
tibet.lz_items
);


********************** multichoice ;
%include 'E:\Tibet\data\903multichoice.txt';
%multichoice(
tibet.lz,
xzt_xx1      xzt_xx2      xzt_xx3      xzt_xx4      xzt_xx5      xzt_xx6
xzt_xx7      xzt_xx8      xzt_xx9      xzt_xx10      xzt_xx11      xzt_xx12
xzt_xx13      xzt_xx14      xzt_xx15      xzt_xx16      xzt_xx17      xzt_xx18
xzt_xx19      xzt_xx20      xzt_xx21     ,
21); ******最后一个参数为选择题数量;

********************** nandu_xindu ;
%include 'E:\Tibet\data\904reliability.txt';
data tmp33;
        set tibet.lz ;
        if t101a=33;
run;
data tmp34;
        set tibet.lz ;
        if t101a=34;
run;
data tmp35;
        set tibet.lz ;
        if t101a=35;
run;
%nandu(tmp33, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332
 t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp34, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322       t34_341      t34_342
t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;

%nandu(tmp35, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322
t35_351      t35_352      t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;
data tmp36;
        set tibet.lz ;
        if t201a=36;
run;
data tmp37;
        set tibet.lz ;
        if t201a=37;
run;
data tmp38;
        set tibet.lz ;
        if t201a=38;
run;
%nandu(tmp36, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352      t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp37, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352
t37_371      t37_372      t37_373      t37_374      t37_375
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp38, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352            t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;

data tmp39;
        set tibet.lz ;
        if t301a=39;
run;
data tmp40;
        set tibet.lz ;
        if t301a=40;
run;
%nandu(tmp39, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352      t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
t39_391      t39_392      t39_393
    , t39_393, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;
%nandu(tmp40, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5
xzt_fs6      xzt_fs7      xzt_fs8      xzt_fs9      xzt_fs10
xzt_fs11      xzt_fs12      xzt_fs13      xzt_fs14      xzt_fs15
xzt_fs16      xzt_fs17      xzt_fs18      xzt_fs19      xzt_fs20
xzt_fs21      t22_221      t22_222      t23_231      t23_232      t23_233      t24
t25_251      t25_252      t26_261      t26_262      t26_263      t26_264      t27_271      t27_272      t27_273
t28_281      t28_282      t28_283      t28_284      t29_291      t29_292      t30_301      t30_302      t30_303
t31_311      t31_312      t31_313      t32_321      t32_322      t33_331      t33_332      t34_341      t34_342
t35_351      t35_352      t36_361      t36_362      t36_363      t36_364      t36_365      t36_366      t36_367
t37_371      t37_372      t37_373      t37_374      t37_375      t38_381      t38_382      t38_383      t38_384      t38_385
      t40_401      t40_402      t40_403
    , t40_403, tibet.lz_items,75);******  选做题; ******最后一个参数为选做题分值;
ods html close;


********************** knowledge_skill;
%include 'E:\Tibet\data\908knowledge.txt';

ods rtf file="E:\Tibet\data\out\lz\knowledge.rtf ";
%knowledge(tibet.lz, tibet.lz_items, lz, 理科综合, zhishi);
%knowledge(tibet.lz, tibet.lz_items, lz, 理科综合, nengli);
ods rtf close;
ods listing;
