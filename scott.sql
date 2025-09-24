//테이블이 없으면 밥은 바닥에서 먹지
CREATE TABLE student (
  sno NUMBER,  --column : 학생번호
  sna VARCHAR2(100), --column : 학생이름
  score number  --column : 학생점수
);


SELECT sno, sna, score FROM student; -- 조회

insert INTO student (sno, sna) values (100, '홍귈동');

update student set score = 80
where sno = 100;

INSERT INTO student (sno, sna, score) values (200, '박희찬', 77);

update student
set  score = 90
where sno = 200;

//select + (column)+ from + (테이블이름);
select * from bonus;
select * from dept;
select * from emp;
select * from salgrade;
select * from student; 