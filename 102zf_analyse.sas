/*
ע�⣺�����ʹ�õ���8.2�汾��SAS������ʹ����GOPTIONS��䣬
SAS��������ʽģ���жԱ���ͽ�ע��ָ����������ʽ����ʹ��TITLE��FOOTNOT����ж������ʽ��
*/
proc template;
define style Styles.Custom;
parent = Styles.RTF;
replace fonts /
'TitleFont' = ("Times Roman",13pt,Bold) /* Titles from TITLE statements */
'TitleFont2' = ("Times Roman",12pt,Bold Italic) /* Procedure titles ("The _____
Procedure")*/
'StrongFont' = ("Times Roman",10pt,Bold)
'EmphasisFont' = ("Times Roman",10pt,Italic)
'headingEmphasisFont' = ("Times Roman",11pt,Bold Italic)
'headingFont' = ("Times Roman",10pt) /* Table column and row headings */
'docFont' = ("Times Roman",10pt) /* Data in table cells */
'footFont' = ("Times Roman",10pt) /* Footnotes from FOOTNOTE statements */
'FixedEmphasisFont' = ("Courier",9pt,Italic)
'FixedStrongFont' = ("Courier",9pt,Bold)
'FixedHeadingFont' = ("Courier",9pt,Bold)
'BatchFixedFont' = ("Courier",6.7pt)
'FixedFont' = ("Courier",9pt);
replace color_list /
'link' = blue /* links */
'bgH' = white /* row and column header background */
'fg' = black /* text color */
'bg' = white; /* page background color */;
replace Body from Document /
bottommargin = 0.25in
topmargin = 0.25in
rightmargin = 0.25in
leftmargin = 0.25in;
replace Table from Output /
frame = hsides /* outside borders: void, box, above/below, vsides/hsides, lhs/rhs */
rules = groups /* internal borders: none, all, cols, rows, groups */
cellpadding = 5pt /* the space between table cell contents and the cell border */
cellspacing = 0pt /* the space between table cells, allows background to show */
borderwidth = 0.5pt /* the width of the borders and rules */;
* Leave code below this line alone ;
style SystemFooter from SystemFooter /
font = fonts("footFont");
end;
run;
*ods rtf file="style.custom" style=style;

%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);

ods listing close;
ods  rtf  file="E:\Tibet\data\out\zf2.doc" bodytitle startpage=no ;
ods noproctitle;



********************** basic_analyse ;
%include 'E:\Tibet\data\905basic_analyse.txt';

%basic_analyse(
tibet.zf,
dqmc,����,
zf);

%basic_analyse(
tibet.zf,
klmc ,���� ,
zf);

%basic_analyse(
tibet.zf,
xbmc ,�Ա� ,
zf);

%basic_analyse(
tibet.zf,
mzmc ,���� ,
zf);

%basic_analyse(
tibet.zf,
kslbmc ,������� ,
zf);

%basic_analyse(
tibet.zf,
zxmc ,ѧУ ,
zf);
********************** basic_analyse2 ;
%include 'E:\Tibet\data\9052basic_analyse.txt';

%basic_analyse2(
tibet.zf,
dqmc,����,
klmc ,���� ,
zf);

%basic_analyse2(
tibet.zf,
dqmc,����,
xbmc ,�Ա� ,
zf);

%basic_analyse2(
tibet.zf,
dqmc,����,
mzmc ,���� ,
zf);

%basic_analyse2(
tibet.zf,
dqmc,����,
kslbmc ,������� ,
zf);

%basic_analyse2(
tibet.zf,
dqmc,����,
zxmc ,ѧУ ,
zf);
**********************  distribution ;
%include 'E:\Tibet\data\901distribution.txt';
%distribution(tibet.zf,
zf,
�ܷ�,
fifty.);
%distribution2(tibet.zf,
zf_zcf,
�ܷ�(�����߼ӷ�),
fifty.,
minzu,��Դ���);
/********************** items analyse;

%include 'E:\Tibet\data\902item_analyse.txt';
data tmp11;
        set tibet.yw ;
        if t2a=11;
run;
data tmp12;
        set tibet.yw ;
        if t2a=12;
run;
%item_analyse(
tmp11,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t11           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items
); *********************************** only item 11, because item 11/12 is ѡ����;

%item_analyse(
tmp12,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t12           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items
);*********************************** only item 12, because item 11/12 is ѡ����; */

/*
********************** items analyse2;

%include 'E:\Tibet\data\9020item_analyse.txt';
data tmp11;
        set tibet.yw ;
        if t2a=11;
run;
data tmp12;
        set tibet.yw ;
        if t2a=12;
run;
%item_analyse(
tmp11,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t11           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items  ,
dqmc,����
); *********************************** only item 11, because item 11/12 is ѡ����;

%item_analyse(
tmp12,
zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t12           t1315      t1617_16
t1617_17      t18    ,
tibet.yw_items ,
dqmc,����
);*********************************** only item 12, because item 11/12 is ѡ����;




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
t1617_17      t18    , t18, tibet.yw_items);****** only item 11, because item 11/12 is ѡ����;

%nandu(tmp12, zcj,
xzt_fs1      xzt_fs2      xzt_fs3      xzt_fs4      xzt_fs5      xzt_fs6
t7      t89_8      t89_9      t10      t12           t1315      t1617_16
t1617_17      t18    , t18, tibet.yw_items); ****** only item 12, because item 11/12 is ѡ����;

 */


 ods rtf close;
ods listing;
