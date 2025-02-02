-- 작업 1
-- DM 발송목록 테이블
create table DM_TBL (
  dmno number(8) not null,
  custid varchar2(10 char),
  maildate date,
  contents varchar2(13 char),
  dept char(2),
  grade char(1),
  campain char(2),
  constraint dm_pk primary key (dmno)
);

-- 작업 2
-- 고객정보 테이블
create table customer_tbl (
  custid varchar2(10 char) not null,
  author varchar2(20 char),
  goods varchar2(3 char),
  phone varchar2(13 char),
  email varchar2(20 char),
  area varchar2(20 char),
  constraint customer_pk primary key (custid)
);

-- 작업 3
-- DM발송정보 데이터 생성
insert into DM_TBL values (1, 'aaa', '20171201', '안녕하세요?', '10', '1', 'C1');
insert into DM_TBL values (2, 'bbb', '20171201', '안녕하세요?', '10', '2', 'C1');
insert into DM_TBL values (3, 'ccc', '20171201', '안녕하세요?', '10', '3', 'C1');
insert into DM_TBL values (4, 'ddd', '20171224', '안녕하세요?', '20', 'V', 'C2');
insert into DM_TBL values (5, 'eee', '20171224', '안녕하세요?', '20', 'W', 'C2');
insert into DM_TBL values (6, 'fff', '20171224', '안녕하세요?', '30', '1', 'C3');
commit;

-- 고객정보 데이터 생성
insert into customer_tbl values ('aaa', '김고객', '의류', '010-1111-1111', 'aaa@korea.com', '서울');
insert into customer_tbl values ('bbb', '이고객', '의류', '010-1111-1112', 'bbb@korea.com', '서울');
insert into customer_tbl values ('ccc', '박고객', '식료품', '010-1111-1113', 'ccc@korea.com', '경기');
insert into customer_tbl values ('ddd', '홍고객', '공산품', '010-1111-1114', 'ddd@korea.com', '대전');
insert into customer_tbl values ('eee', '조고객', '컴퓨터', '010-1111-1115', 'eee@korea.com', '대전');
insert into customer_tbl values ('fff', '백고객', '관광', '010-1111-1116', 'fff@korea.com', '울산');
commit;

-- 작업 4
-- 고객발송내역 조회
select
  t1.dmno as 발송번호,
  t1.custid as 고객ID,
  t2.author as 고객명,
  TO_CHAR(t1.maildate, 'YYYY-MM-DD') as 발송일,
  t1.contents as 내용,
  RPAD(t1.campain, 2, 'center') as 캠페인구분
from
  DM_TBL t1
join
  CUSTOMER_TBL t2 on t1.custid = t2.custid
;

-- 작업 5
-- 고객정보 저장 sql
insert into customer_tbl values ('?, ?, ?, ?, ?, ?')

-- 작업 6
-- 지역별 DM 발송 건수 통계 조회
select
  t2.area,
  count(t2.area)
from
  dm_tbl t1
join
  customer_tbl t2 on t1.custid = t2.custid
group by
  t2.area
;
