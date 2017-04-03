create table alba_member(
	memberid varchar2(100) primary key,
	name varchar2(100) not null,
	address varchar2(100) not null,
	tel varchar2(100) not null,
	residentnumber varchar2(100) not null,
	gender varchar2(100) not null,
	password varchar2(100) not null,
	nickname varchar2(100) not null
)

create table alba_board(
	board_no number primary key,
	category varchar2(100) not null,
	title varchar2(100) not null,
	contents clob not null,
	hits number default 0,
	likes number default 0,
	time_posted date not null,
	memberid varchar2(100) not null,
	constraint alba_id foreign key(memberid) references alba_member(memberid)
)

create sequence no_seq;

create table alba_likes(
	memberid varchar2(100) not null,
	constraint likes_id foreign key(memberid) references alba_member(memberid),
	board_no number not null,
	constraint likes_no foreign key(board_no) references alba_board(board_no)
)


