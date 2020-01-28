drop sequence blog_seq;
create sequence blog_seq;

drop table blog_info;
create table blog_info(
    num number primary key,
    title varchar2(2000),
    description varchar2(2000),
    bloggername varchar2(300),
    link varchar2(300)
);
