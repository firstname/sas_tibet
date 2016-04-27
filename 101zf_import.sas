%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
%include 'E:\Tibet\data\991imp_exp.txt';
        %imp_dbf(E:\Tibet\data\raw\score\901yw.dbf, work.yw);
        %imp_dbf(E:\Tibet\data\raw\score\902yy.dbf, work.yy);
        %imp_dbf(E:\Tibet\data\raw\score\903ws.dbf, work.ws);
        %imp_dbf(E:\Tibet\data\raw\score\904ls.dbf, work.ls);
        %imp_dbf(E:\Tibet\data\raw\score\905wz.dbf, work.wz);
        %imp_dbf(E:\Tibet\data\raw\score\906lz.dbf, work.lz);
        %imp_dbf(E:\Tibet\data\raw\score\907hanyw.dbf, work.hanyw);
        %imp_dbf(E:\Tibet\data\raw\score\908zangyw.dbf, work.zangyw);
%imp_dbf(E:\Tibet\data\raw\score\luqu_zf.dbf, work.luqufen);******录取用分计算上线用;
%imp_dbf(E:\Tibet\data\raw\score\zcf.dbf, work.zcf)
***************** import score;
data bmk;
        set tibet.bmk;
run;
proc sql;
        create table zf
        as
        select bmk.* ,
        round(yw.zcj,1) as yw label="yw" ,
        round(yy.zcj,1) as yy label="yy" ,
        round(ws.zcj,1) as ws label="ws" ,
        round(ls.zcj,1) as ls label="ls" ,
        round(wz.zcj,1) as wz label="wz" ,
        round(lz.zcj,1) as lz label="lz" ,
        hanyw.zcj as hanyw label="hanyw" ,
        zangyw.zcj as zangyw label="zangyw" ,
        luqufen.tzf as lqf label="luqufen",
zcf.zcf as zcf label="zhengcefen",

        yw.qk as yw_qk label="yw_qk" ,
        yy.qk as yy_qk label="yy_qk" ,
        ws.qk as ws_qk label="ws_qk" ,
        ls.qk as ls_qk label="ls_qk" ,
        wz.qk as wz_qk label="wz_qk" ,
        lz.qk as lz_qk label="lz_qk" ,
        hanyw.qk as hanyw_qk label="hanyw_qk" ,
        zangyw.qk as zangyw_qk label="zangyw_qk"

        from bmk
        left join yw
        on yw.zkzh = bmk.zkzh
        left join yy
        on yy.zkzh = bmk.zkzh
        left join ws
        on ws.zkzh = bmk.zkzh
        left join ls
        on ls.zkzh = bmk.zkzh
        left join wz
        on wz.zkzh = bmk.zkzh
        left join lz
        on lz.zkzh = bmk.zkzh
        left join hanyw
        on hanyw.zkzh = bmk.zkzh
        left join zangyw
        on zangyw.zkzh = bmk.zkzh
        left join luqufen
        on trim(luqufen.ksh) = trim(bmk.ksh)
        left join zcf
        on trim(zcf.ksh) = trim(bmk.ksh)
;
quit;

data zf1;
        set zf;
        ssmzyw = round((round(hanyw,1)+round(zangyw,1))/2,1);
        zf = sum ( of yw  yy  ws  ls  wz  lz  ssmzyw);
        zf_zcf = sum ( of yw  yy  ws  ls  wz  lz  ssmzyw zcf);
        fenshucha=lqf-zf_zcf;
        if kldm = 9 then delete;
        if kslbdm = 5 then delete;
        if fenshucha ^= 0  then delete;
run;

data tibet.zf;
        set zf1;
        if zf>0;
        sxlbmc = "4未上线或其它";
        if minzu = "按照汉族线" and klmc = "文史" and lqf >=315 then sxlbmc = "3专科（高职）"  ;
        if minzu = "按照汉族线" and klmc = "文史" and lqf >=355 then sxlbmc = "2普通本科" ;
        if minzu = "按照汉族线" and klmc = "文史" and lqf >=440 then sxlbmc = "1重点本科" ;
        if minzu = "按照汉族线" and klmc = "理工" and lqf >=280 then sxlbmc = "3专科（高职）";
        if minzu = "按照汉族线" and klmc = "理工" and lqf >=315 then sxlbmc = "2普通本科" ;
        if minzu = "按照汉族线" and klmc = "理工" and lqf >=420 then sxlbmc = "1重点本科" ;

        if minzu = "按照少数民族线" and klmc = "文史" and lqf >=245 then sxlbmc = "3专科（高职）";
        if minzu = "按照少数民族线" and klmc = "文史" and lqf >=285 then sxlbmc = "2普通本科";
        if minzu = "按照少数民族线" and klmc = "文史" and lqf >=325 then sxlbmc = "1重点本科";
        if minzu = "按照少数民族线" and klmc = "理工" and lqf >=190 then sxlbmc = "3专科（高职）";
        if minzu = "按照少数民族线" and klmc = "理工" and lqf >=235 then sxlbmc = "2普通本科";
        if minzu = "按照少数民族线" and klmc = "理工" and lqf >=280 then sxlbmc = "1重点本科";

        ljlbmc = "4非临界或其它";
        if minzu = "按照汉族线" and klmc = "文史" and 0>(zf - 315)> -15 then ljlbmc = "3专科临界";
        if minzu = "按照汉族线" and klmc = "文史" and 0>(zf - 355)> -10 then ljlbmc = "2普本临界";
        if minzu = "按照汉族线" and klmc = "文史" and 0>(zf - 440)> -5 then ljlbmc = "1重本临界";
        if minzu = "按照汉族线" and klmc = "理工" and 0>(zf - 280)> -15 then ljlbmc = "3专科临界";
        if minzu = "按照汉族线" and klmc = "理工" and 0>(zf - 315)> -10 then ljlbmc = "2普本临界";
        if minzu = "按照汉族线" and klmc = "理工" and 0>(zf - 420)> -5 then ljlbmc = "1重本临界";

        if minzu = "按照少数民族线" and klmc = "文史" and 0>(zf - 245)> -15 then ljlbmc = "3专科临界";
        if minzu = "按照少数民族线" and klmc = "文史" and 0>(zf - 285)> -10 then ljlbmc = "2普本临界";
        if minzu = "按照少数民族线" and klmc = "文史" and 0>(zf - 325)> -5 then ljlbmc = "1重本临界";
        if minzu = "按照少数民族线" and klmc = "理工" and 0>(zf - 190)> -15 then ljlbmc = "3专科临界";
        if minzu = "按照少数民族线" and klmc = "理工" and 0>(zf - 235)> -10 then ljlbmc = "2普本临界";
        if minzu = "按照少数民族线" and klmc = "理工" and 0>(zf - 280)> -5 then ljlbmc = "1重本临界";
        run;
