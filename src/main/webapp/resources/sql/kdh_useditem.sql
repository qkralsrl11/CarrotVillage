drop table useditem
create table useditem (
	num number primary key,
	id varchar2(20) unique,
	subject varchar2(90),
	content varchar2(900),
	register_date date,
	price number,
	location varchar2(90),
	sold varchar2(1) default 'n' check(sold in ('y', 'n')),
	image varchar2(100)
)
create sequence useditem_seq;
/*
 * id 외래키로 바꾸기
 */

select * from useditem