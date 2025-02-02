-- 회원 정보 테이블
create table custom_01 (
  p_id varchar2(10) not null,
  p_pw varchar2(10),
  c_name varchar2(20),
  c_email varchar2(20),
  c_tel varchar2(14),
  constraint custom_pk primary key (p_id)
);

-- 회원 정보 샘플 데이터
insert into custom_01 values ('aaa', '1234', '김회원', 'aaa@korea.com', '010-1111-1111');
insert into custom_01 values ('bbb', '1234', '이회원', 'bbb@korea.com', '010-1111-1112');
insert into custom_01 values ('ccc', '1234', '박회원', 'ccc@korea.com', '010-1111-1113');
insert into custom_01 values ('ddd', '1234', '오회원', 'ddd@korea.com', '010-1111-1114');
insert into custom_01 values ('eee', '1234', '최회원', 'eee@korea.com', '010-1111-1115');
insert into custom_01 values ('fff', '1234', '조회원', 'fff@korea.com', '010-1111-1116');
commit;