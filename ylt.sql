-----------------------------------------------------
-- Export file for user YLT_P                      --
-- Created by zhengchenglei on 2017/4/11, 16:40:56 --
-----------------------------------------------------

spool ylt.log

prompt
prompt Creating table STOCK_DAY_INFO
prompt =============================
prompt
create table STOCK_DAY_INFO
(
  ID                  VARCHAR2(32) not null,
  STOCK_CODE          VARCHAR2(9),
  OPEN_PLATE_PRICE    NUMBER(9,2),
  CLOSE_PLATE_PRICE   NUMBER(9,2),
  Y_CLOSE_PLATE_PRICE NUMBER(9,2),
  MAX_PRICE           NUMBER(9,2),
  LOW_PRICE           NUMBER(9,2),
  DEAL_STOCK_NUM      NUMBER(32),
  DEAL_STOCK_PRICE    NUMBER(32),
  LRRQ                DATE,
  XGRQ                DATE,
  YXBJ                CHAR(1),
  K_PICTURE           VARCHAR2(500),
  T_PICTURE           VARCHAR2(500),
  TRADE_TIME          VARCHAR2(20)
)
;
comment on table STOCK_DAY_INFO
  is '��Ʊ��Ϣ�ձ�';
comment on column STOCK_DAY_INFO.ID
  is 'ID';
comment on column STOCK_DAY_INFO.STOCK_CODE
  is '��Ʊ����';
comment on column STOCK_DAY_INFO.OPEN_PLATE_PRICE
  is '���տ��̼�';
comment on column STOCK_DAY_INFO.CLOSE_PLATE_PRICE
  is '�������̼�';
comment on column STOCK_DAY_INFO.Y_CLOSE_PLATE_PRICE
  is '�������̼�';
comment on column STOCK_DAY_INFO.MAX_PRICE
  is '������߼�';
comment on column STOCK_DAY_INFO.LOW_PRICE
  is '������ͼ�';
comment on column STOCK_DAY_INFO.DEAL_STOCK_NUM
  is '���ճɽ���Ʊ��';
comment on column STOCK_DAY_INFO.DEAL_STOCK_PRICE
  is '���ճɽ���';
comment on column STOCK_DAY_INFO.LRRQ
  is '¼������';
comment on column STOCK_DAY_INFO.XGRQ
  is '�޸�����';
comment on column STOCK_DAY_INFO.YXBJ
  is '��Ч���';
comment on column STOCK_DAY_INFO.K_PICTURE
  is '��K��ͼ';
comment on column STOCK_DAY_INFO.T_PICTURE
  is 'ʮ��ͼ';
comment on column STOCK_DAY_INFO.TRADE_TIME
  is '����ʱ��';

prompt
prompt Creating table STOCK_DETAIL_INFO
prompt ================================
prompt
create table STOCK_DETAIL_INFO
(
  ID                VARCHAR2(32),
  STOCK_CODE        VARCHAR2(32),
  FLOW_STOCK_NUM    NUMBER(9),
  FLOW_STOCK_PRICE  NUMBER(9,2),
  TOTAL_STOCK_PRICE NUMBER(9,2),
  TOTAL_STOCK_NUM   NUMBER(9),
  LRRQ              DATE,
  XGRQ              DATE,
  YXBJ              CHAR(1)
)
;
comment on column STOCK_DETAIL_INFO.ID
  is 'ID';
comment on column STOCK_DETAIL_INFO.STOCK_CODE
  is '��Ʊ����';
comment on column STOCK_DETAIL_INFO.FLOW_STOCK_NUM
  is '��ͨ��';
comment on column STOCK_DETAIL_INFO.FLOW_STOCK_PRICE
  is '��ֵͨ';
comment on column STOCK_DETAIL_INFO.TOTAL_STOCK_PRICE
  is '����ֵ';
comment on column STOCK_DETAIL_INFO.TOTAL_STOCK_NUM
  is '�ܹɱ�';
comment on column STOCK_DETAIL_INFO.LRRQ
  is '¼������';
comment on column STOCK_DETAIL_INFO.XGRQ
  is '�޸�����';
comment on column STOCK_DETAIL_INFO.YXBJ
  is '��Ч���';

prompt
prompt Creating table STOCK_INFO
prompt =========================
prompt
create table STOCK_INFO
(
  ID             VARCHAR2(32) not null,
  STOCK_CODE     VARCHAR2(9),
  STOCK_NAME     VARCHAR2(50),
  BLOCK_ID       VARCHAR2(32),
  STOCK_ORG_CODE VARCHAR2(32),
  STOCK_ORG_NAME VARCHAR2(32),
  ZXBS           CHAR(1),
  LRRQ           DATE,
  XGRQ           DATE,
  YXBJ           CHAR(1)
)
;

prompt
prompt Creating table STOCK_MINUTE_INFO
prompt ================================
prompt
create table STOCK_MINUTE_INFO
(
  ID               VARCHAR2(32),
  STOCK_CODE       VARCHAR2(9),
  STOCK_PRICE      NUMBER(9,3),
  BUY_ONE_PRICE    NUMBER(9,3),
  BUY_TOW_PRICE    NUMBER(9,3),
  BUY_THREE_PRICE  NUMBER(9,3),
  BUY_FOUR_PRICE   NUMBER(9,3),
  BUY_FIVE_PRICE   NUMBER(9,3),
  BUY_ONE_NUM      NUMBER(20),
  BUY_TOW_NUM      NUMBER(20),
  BUY_THREE_NUM    NUMBER(20),
  BUY_FOUR_NUM     NUMBER(20),
  BUY_FIVE_NUM     NUMBER(20),
  LRRQ             DATE,
  XGRQ             DATE,
  YXBJ             CHAR(1),
  SALE_ONE_PRICE   NUMBER(9,3),
  SALE_TOW_PRICE   NUMBER(9,3),
  SALE_THREE_PRICE NUMBER(9,3),
  SALE_FOUR_PRICE  NUMBER(9,3),
  SALE_FIVE_PRICE  NUMBER(9,3),
  SALE_ONE_NUM     NUMBER(20),
  SALE_TOW_NUM     NUMBER(20),
  SALE_THREE_NUM   NUMBER(20),
  SALE_FOUR_NUM    NUMBER(20),
  SALE_FIVE_NUM    NUMBER(20),
  TRADE_NUM        NUMBER(20),
  TRADE_PRICE      NUMBER(20),
  TRADE_TIME       VARCHAR2(20),
  COLLECT_TIME     DATE
)
;
comment on column STOCK_MINUTE_INFO.ID
  is 'ID';
comment on column STOCK_MINUTE_INFO.STOCK_CODE
  is '��Ʊ����';
comment on column STOCK_MINUTE_INFO.STOCK_PRICE
  is '��ǰʱ�̹�Ʊ�۸�';
comment on column STOCK_MINUTE_INFO.BUY_ONE_PRICE
  is '��һ�۸�';
comment on column STOCK_MINUTE_INFO.BUY_TOW_PRICE
  is '����۸�';
comment on column STOCK_MINUTE_INFO.BUY_THREE_PRICE
  is '�����۸�';
comment on column STOCK_MINUTE_INFO.BUY_FOUR_PRICE
  is '���ļ۸�';
comment on column STOCK_MINUTE_INFO.BUY_FIVE_PRICE
  is '����۸�';
comment on column STOCK_MINUTE_INFO.BUY_ONE_NUM
  is '��һ��';
comment on column STOCK_MINUTE_INFO.BUY_TOW_NUM
  is '�����';
comment on column STOCK_MINUTE_INFO.BUY_THREE_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.BUY_FOUR_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.BUY_FIVE_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.LRRQ
  is '¼������';
comment on column STOCK_MINUTE_INFO.XGRQ
  is '�޸�����';
comment on column STOCK_MINUTE_INFO.YXBJ
  is '��Ч���';
comment on column STOCK_MINUTE_INFO.SALE_ONE_PRICE
  is '��һ�۸�';
comment on column STOCK_MINUTE_INFO.SALE_TOW_PRICE
  is '�����۸�';
comment on column STOCK_MINUTE_INFO.SALE_THREE_PRICE
  is '�����۸�';
comment on column STOCK_MINUTE_INFO.SALE_FOUR_PRICE
  is '���ļ۸�';
comment on column STOCK_MINUTE_INFO.SALE_FIVE_PRICE
  is '����۸�';
comment on column STOCK_MINUTE_INFO.SALE_ONE_NUM
  is '��һ��';
comment on column STOCK_MINUTE_INFO.SALE_TOW_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.SALE_THREE_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.SALE_FOUR_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.SALE_FIVE_NUM
  is '������';
comment on column STOCK_MINUTE_INFO.TRADE_NUM
  is '��ǰʱ�佻����';
comment on column STOCK_MINUTE_INFO.TRADE_PRICE
  is '��ǰʱ�佻�׶�';
comment on column STOCK_MINUTE_INFO.TRADE_TIME
  is '����ʱ���';
comment on column STOCK_MINUTE_INFO.COLLECT_TIME
  is '�ɼ�ʱ��';
create unique index STOCK_MINUTE_INFO_INDEX on STOCK_MINUTE_INFO (STOCK_CODE, TRADE_TIME);


spool off
