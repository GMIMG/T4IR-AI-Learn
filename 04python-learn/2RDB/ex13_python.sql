
drop sequence num_seq;
create sequence num_seq;

select num_seq.nextval
from dual;

create table tourinfo(
num number primary key,
title varchar2(2000),
price number
);

insert into tourinfo
values (num_seq.nextval, 'Á¦¸ñ1', 10000000);