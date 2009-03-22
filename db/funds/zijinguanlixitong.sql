 
 -- 1.��λ���ܱ� zj_dwhz

 CREATE TABLE zj_dwhz(
        dwdm VARCHAR2(10),
        dwmc VARCHAR2(50),
        dwlx VARCHAR2(100),
        zjlb VARCHAR2(2),
        ycye NUMBER(16,2),
        jje  NUMBER(16,2),
        dje  NUMBER(16,2),
        jlj  NUMBER(16,2),
        dlj  NUMBER(16,2),
        ye   NUMBER(16,2),
        yf   VARCHAR2(2)
        
 );

select * from zj_dwhz;

insert into zj_dwhz (dwdm,dwmc) values('12','jlsajf');

delete from zj_dwhz 


 -- 2.�����뵥λ��Ӧ�� zj_dwzh
 
 CREATE TABLE zj_dwzh(
        yhdm VARCHAR2(3),
        dwdm VARCHAR2(10)
       
 );
 


 -- 3.������Ϣ zj_jcxx
 
 CREATE TABLE zj_jcxx(
        dqyf VARCHAR2(2),
        rjrq VARCHAR2(8),
        dqrq VARCHAR2(8),
        csh  CHAR(1),
        shsz CHAR(1),
        czsz CHAR(1),
        bz1  VARCHAR2(8),
        bzn  VARCHAR2(10),
        bz10 VARCHAR2(10)
       
 );
 
 
 -- 4.���㷽ʽ zj_jsfs
 
 CREATE TABLE zj_jsfs(
        dm VARCHAR2(2),
        mc VARCHAR2(40)
       
 );
 


 
 -- 5.ƾ֤��ϸ zj_pzmx
 
 CREATE TABLE zj_pzmx(
        pzzh VARCHAR2(12),
        pzfh VARCHAR2(4),
        hh   INTEGER,
        jzrq VARCHAR2(8),
        dwdm VARCHAR2(10),
        jje  NUMBER(16,2),
        dje  NUMBER(16,2),
        zy   VARCHAR2(80),
        bz   CHAR(1),
        dzf  CHAR(1),
        dzrq VARCHAR2(8)
       
 );
 
 
 -- 6.��˸�λ������ zj_shgw
 
 CREATE TABLE zj_shqw(
        shje NUMBER(16,2),
        shgw VARCHAR2(6)
       
 );
 
 
 -- 7.�����ֵ� zj_sjzd
 
 CREATE TABLE zj_sjzd(
        zdhy VARCHAR2(20),
        zdm  VARCHAR2(20),
        sjlx VARCHAR2(20)
     
 );
 
 
 -- 8.�����ڱ� zj_yetj
 
 CREATE TABLE zj_yetj(
        dwzm  NUMBER(16,2),
        dwwdj NUMBER(16,2),
        dwwdd NUMBER(16,2),
        dwye  NUMBER(16,2),
        yhzm  NUMBER(16,2),
        yhwdj NUMBER(16,2),
        yhwdd NUMBER(16,2),
        yhye  NUMBER(16,2),
        yf    VARCHAR2(2)
        
 );
   
 
  -- 9.������Ϣ zj_yh
 
 CREATE TABLE zj_yh(
        yhdm VARCHAR2(3),
        yhmc VARCHAR2(20),
        yhzh VARCHAR2(40)
        
 );
 
 -- 10.���ж��˵���ϸ zj_yhdzd
 
 CREATE TABLE zj_yhdzd(
        num  INTEGER,
        rq   VARCHAR2(8),
        pjh  VARCHAR2(20),
        yhdm VARCHAR2(3),
        jje  NUMBER(16,2),
        dje  NUMBER(16,2),
        lbbz CHAR(1),
        bz   CHAR(1),
        dzf CHAR(1),
        dzrq VARCHAR2(8),
        djrq VARCHAR2(8),
        dwdm VARCHAR2(10),
        zjh  INTEGER
        
 );

   
-- 11.���ж��˵����� zj_yhdzdhz

CREATE TABLE zj_yhdzdhz(
       yhdm VARCHAR2(3),
       ye   NUMBER(16,2),
       yf   VARCHAR2(2)
);


-- 12.���л��� zj_yhhz

CREATE TABLE zj_yhhz(
       yhdm VARCHAR2(3),
       ycye NUMBER(16,2),
       jje  NUMBER(16,2),
       dje  NUMBER(16,2),
       jlj  NUMBER(16,2),
       dlj  NUMBER(16,2),
       ye   NUMBER(16,2),
       yf   VARCHAR2(2)
); 



-- 13.�ʽ���� zj_zjlb

CREATE TABLE zj_zjlb(
       dm VARCHAR2(2),
       mc VARCHAR2(20)
);

 
 -- 14.�ʽ���ϸ�� zj_zjmx
 
 CREATE TABLE zj_zjmx(
        zjh    INTEGER,
        yhdm   VARCHAR2(3),
        dwdm   VARCHAR2(10),
        djrq   VARCHAR2(8),
        pzzh   VARCHAR2(12),
        pzfh   VARCHAR2(4),
        hh     INTEGER,
        zy     VARCHAR2(80),
        jje    NUMBER(16,2),
        dje    NUMBER(16,2),
        zjlb   VARCHAR2(2),
        jsfs   VARCHAR2(2),
        pjh    VARCHAR2(10),
        pjrq   VARCHAR2(8),
        lry    VARCHAR2(6),
        shf    CHAR(1),
        shy    VARCHAR2(6),
        rjf    CHAR(1),
        yhdzf  CHAR(1),
        yhdzrq VARCHAR2(8),
        dwdzf  CHAR(1),
        dwdzrq VARCHAR2(8),
        bz     CHAR(1)
 );
 
 
 -- 15.ת�빫ʽ zj_zrgs
  
 CREATE TABLE zj_zrgs(
        yhdm VARCHAR2(40),
        zdm  VARCHAR2(20),
        bh   INTEGER
        
 );
  
 
 -- 16.����ʽ�� zj_zxzjh
 
 CREATE TABLE zj_zxzjh(
        zjh INTEGER,
        yf  VARCHAR2(2)
 );
 
 
 -- 17.ժҪ zj_zy
 
 CREATE TABLE zj_zy(
        zy  VARCHAR2(80),
        zjm VARCHAR2(10)
 );
 
 --18.���ܴ��� zj_zgcs
 
 CREATE TABLE zj_zgcs(
    zgcsdm VARCHAR2(3),
    zgcsmc VARCHAR2(20)
 );
 
 --19.�������� zj_qyrq
 
 CREATE TABLE zj_qyrq(
    gzqyrq VARCHAR2(8)
 );
 
 select * from zj_dwhz;
 
