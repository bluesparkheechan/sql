SELECT *
FROM student

char(2000) --> '          3'
varchar2(4000) --> '3'
number(10,2) 99999999.99;  --> 전체 10자리중 마지막 2자리는 소수자리임.

SELECT 3*'2'
FROM DUAL;   --> 묵시적(자동)형 변환 예시

SELECT NAME  as "NAME"
      ,TEL
      ,SUBSTR(TEL, 0, INSTR(TEL,')')-1) as "AREA CODE"
      
  
FROM student
WHERE DEPTNO1 = 201;

SELECT name 
      ,tel
      ,replace(tel, substr(tel, instr(tel,')')+1, 3), '****') as "replace"
      
--      ,replace(tel, INSTR(TEL,')'), '*') as "replace"
      
FROM student
WHERE DEPTNO1 = 102;

SELECT name
      ,tel
      ,replace(tel, substr(tel, instr(tel,'-')+1, 4), '****') as "replace"
      FROM student
      WHERE deptno1 = 101;

SELECT empno
      ,sal as "연봉"
      ,round(sal/12, 2) as  "월급"
      ,trunc(sal/12, 2) as "월급_버림"
      ,MOD(sal,12) as "월급_나머지"
      ,CEIL(sal/12) as "월급_근접큰정수"  -- 올림은 소수자리 선택 안됨
      ,FLOOR(sal/12) as "월급_근접작은정수"
      ,POWER(sal,3) as "월급_거듭제곱"
from emp;

SELECT sysdate
FROM dual;

SELECT *
FROM EMP
WHERE hiredate > '1982/01/01';  -- 오라클에서는 RR.MM.DD OR RRRR.MM.DD 둘다 사용함

SELECT months_between('10/01/01', '15/01/01') ;-- 앞 날짜가 크면 양수, 뒷 날짜가 크면 음수가 나옴.
       
select       add_months(sysdate, 2)
from dual;

SELECT add_months(sysdate, 2), next_day(sysdate+1, '목') as "next_day"
      ,last_day(add_months(sysdate, 1)) as "last"
from dual;


SELECT SYSDATE, TO_CHAR (sysdate, 'yyyy/mm/DD hh24:mi:ss') AS "TODAY"
from dual;

SELECT to_date ('2025-05-05 13', 'rrrr, mm, dd hh24') as "date"
FROM DUAL;

