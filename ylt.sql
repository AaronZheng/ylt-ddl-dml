-----------------------------------------------------
-- Export file for user YLT                        --
-- Created by zhengchenglei on 2017/4/10, 19:36:56 --
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
  T_PICTURE           VARCHAR2(500)
)
;
comment on table STOCK_DAY_INFO
  is '股票信息日表';
comment on column STOCK_DAY_INFO.ID
  is 'ID';
comment on column STOCK_DAY_INFO.STOCK_CODE
  is '股票编码';
comment on column STOCK_DAY_INFO.OPEN_PLATE_PRICE
  is '今日开盘价';
comment on column STOCK_DAY_INFO.CLOSE_PLATE_PRICE
  is '今日收盘价';
comment on column STOCK_DAY_INFO.Y_CLOSE_PLATE_PRICE
  is '昨日收盘价';
comment on column STOCK_DAY_INFO.MAX_PRICE
  is '今日最高价';
comment on column STOCK_DAY_INFO.LOW_PRICE
  is '今日最低价';
comment on column STOCK_DAY_INFO.DEAL_STOCK_NUM
  is '今日成交股票数';
comment on column STOCK_DAY_INFO.DEAL_STOCK_PRICE
  is '今日成交额';
comment on column STOCK_DAY_INFO.LRRQ
  is '录入日期';
comment on column STOCK_DAY_INFO.XGRQ
  is '修改日期';
comment on column STOCK_DAY_INFO.YXBJ
  is '有效标记';
comment on column STOCK_DAY_INFO.K_PICTURE
  is '日K线图';
comment on column STOCK_DAY_INFO.T_PICTURE
  is '十分图';

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
  is '股票编码';
comment on column STOCK_DETAIL_INFO.FLOW_STOCK_NUM
  is '流通股';
comment on column STOCK_DETAIL_INFO.FLOW_STOCK_PRICE
  is '流通值';
comment on column STOCK_DETAIL_INFO.TOTAL_STOCK_PRICE
  is '总市值';
comment on column STOCK_DETAIL_INFO.TOTAL_STOCK_NUM
  is '总股本';
comment on column STOCK_DETAIL_INFO.LRRQ
  is '录入日期';
comment on column STOCK_DETAIL_INFO.XGRQ
  is '修改日期';
comment on column STOCK_DETAIL_INFO.YXBJ
  is '有效标记';

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
  TRADE_TIME       VARCHAR2(20)
)
;
comment on column STOCK_MINUTE_INFO.ID
  is 'ID';
comment on column STOCK_MINUTE_INFO.STOCK_CODE
  is '股票编码';
comment on column STOCK_MINUTE_INFO.STOCK_PRICE
  is '当前时刻股票价格';
comment on column STOCK_MINUTE_INFO.BUY_ONE_PRICE
  is '买一价格';
comment on column STOCK_MINUTE_INFO.BUY_TOW_PRICE
  is '买二价格';
comment on column STOCK_MINUTE_INFO.BUY_THREE_PRICE
  is '买三价格';
comment on column STOCK_MINUTE_INFO.BUY_FOUR_PRICE
  is '买四价格';
comment on column STOCK_MINUTE_INFO.BUY_FIVE_PRICE
  is '买五价格';
comment on column STOCK_MINUTE_INFO.BUY_ONE_NUM
  is '买一量';
comment on column STOCK_MINUTE_INFO.BUY_TOW_NUM
  is '买二量';
comment on column STOCK_MINUTE_INFO.BUY_THREE_NUM
  is '买三量';
comment on column STOCK_MINUTE_INFO.BUY_FOUR_NUM
  is '买四量';
comment on column STOCK_MINUTE_INFO.BUY_FIVE_NUM
  is '买五量';
comment on column STOCK_MINUTE_INFO.LRRQ
  is '录入日期';
comment on column STOCK_MINUTE_INFO.XGRQ
  is '修改日期';
comment on column STOCK_MINUTE_INFO.YXBJ
  is '有效标记';
comment on column STOCK_MINUTE_INFO.SALE_ONE_PRICE
  is '卖一价格';
comment on column STOCK_MINUTE_INFO.SALE_TOW_PRICE
  is '卖二价格';
comment on column STOCK_MINUTE_INFO.SALE_THREE_PRICE
  is '卖三价格';
comment on column STOCK_MINUTE_INFO.SALE_FOUR_PRICE
  is '卖四价格';
comment on column STOCK_MINUTE_INFO.SALE_FIVE_PRICE
  is '卖五价格';
comment on column STOCK_MINUTE_INFO.SALE_ONE_NUM
  is '卖一量';
comment on column STOCK_MINUTE_INFO.SALE_TOW_NUM
  is '卖二量';
comment on column STOCK_MINUTE_INFO.SALE_THREE_NUM
  is '卖三量';
comment on column STOCK_MINUTE_INFO.SALE_FOUR_NUM
  is '卖四量';
comment on column STOCK_MINUTE_INFO.SALE_FIVE_NUM
  is '卖五量';
comment on column STOCK_MINUTE_INFO.TRADE_NUM
  is '当前时间交易量';
comment on column STOCK_MINUTE_INFO.TRADE_PRICE
  is '当前时间交易额';
comment on column STOCK_MINUTE_INFO.TRADE_TIME
  is '交易时间点';


spool off
