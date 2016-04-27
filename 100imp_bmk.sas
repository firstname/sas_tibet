%include 'E:\Tibet\data\990dm.txt';
          %cre_lib(tibet,E:\Tibet\data\lib);
%include 'E:\Tibet\data\991imp_exp.txt';
        %imp_dbf(E:\Tibet\data\raw\bmk\000allnew.dbf, work.bmk1);
        *%imp_dbf(E:\Tibet\bmk\dm\td_bylbdm2.dbf, work.bylbdm);
        *%imp_dbf(E:\Tibet\bmk\dm\td_ysjzdm2.dbf, work.ysjzdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_zxdm2.dbf, work.zxdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_mzdm2.dbf, work.mzdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_kldm2.dbf, work.kldm);
        %imp_dbf(E:\Tibet\bmk\dm\td_kslbdm2.dbf, work.kslbdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_wyyzdm2.dbf, work.wyyzdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_xbdm2.dbf, work.xbdm);
        %imp_dbf(E:\Tibet\bmk\dm\td_zzmmdm2.dbf, work.zzmmdm);
        %imp_dbf(E:\Tibet\bmk\dm\sylbdm2.dbf, work.sylbdm);
data diqu;
input dqdm $6. dqmc $ 14.;
cards;
5401   拉萨市
5421   昌都市
5422   山南地区
5423   日喀则市
5424   那曲地区
5425   阿里地区
5426   林芝地区
5427   西格办
5428   西藏民族大学
5499   其它地区
;
run;
proc sql;
        create table bmk as
        select *
        from bmk1
        left join zxdm
        on bmk1.zxdm = zxdm.zxdm
        left join mzdm
        on bmk1.mzdm = mzdm.mzdm
        left join kldm
        on bmk1.kldm= kldm.kldm
        left join kslbdm
        on bmk1.kslbdm= kslbdm.kslbdm
        left join wyyzdm
        on bmk1.wyyzdm= wyyzdm.wyyzdm
        left join xbdm
        on bmk1.xbdm= xbdm.xbdm
        left join zzmmdm
        on bmk1.zzmmdm= zzmmdm.zzmmdm
        left join diqu
        on substr(bmk1.dqdm,1,4) =  diqu.dqdm
        left join sylbdm
        on bmk1.ksh =  sylbdm.ksh
;
quit;
data tibet.bmk;
        set bmk;
        mzmc='汉族及区外少数民族';
        if mzdm='54' then mzmc='藏族（区内）';
        if mzdm='55' then mzmc='藏族（区内）';
        if mzdm='90' then mzmc='藏族（区内）';
        if mzdm='91' then mzmc='藏族（区内）';
        if mzdm='92' then mzmc='藏族（区内）';
        if mzdm='93' then mzmc='藏族（区内）';
        if mzdm='94' then mzmc='藏族（区内）';
        if mzdm='95' then mzmc='藏族（区内）';
        if mzdm='96' then mzmc='藏族（区内）';
        if mzdm='97' then mzmc='藏族（区内）';
        if mzdm='98' then mzmc='藏族（区内）';
        minzu="按照少数民族线";
        if sylbdm='0' then minzu='按照汉族线';
run;
