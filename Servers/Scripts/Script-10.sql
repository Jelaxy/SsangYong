오전 복습 문제 입니다.
1. `nvl` 함수는 어떤 데이터 처리에 효과적으로 사용될 수 있습니까?
    a) Null값일 때의 에러 처리
    b) String 데이터의 변환
    c) 데이터의 정렬
    d) 데이터베이스 연결 관리
답: A

2. `nvl2` 함수는 어떤 경우에 유용하게 사용될 수 있습니까?
    a) Null값이 아닐 때와 Null일 때를 구분하여 처리할 경우
    b) 데이터 정렬에 필요한 경우
    c) 데이터 타입을 변환할 경우
    d) 데이터를 저장할 경우
답: A

3. `nullif` 함수는 무엇을 반환하나요?
    a) 두 데이터가 동일하면 첫 번째 데이터를 반환
    b) 두 데이터가 동일하면 null을 반환
    c) 두 데이터가 동일하지 않으면 null을 반환
    d) 두 데이터가 동일하지 않으면 첫 번째 데이터를 반환
답: B

4. `decode` 함수는 어떤 언어의 어떤 기능과 비슷한가요?
    a) Python의 for loop
    b) Java의 switch-case 문
    c) JavaScript의 forEach 함수
    d) C++의 while loop
답: B

5. `case` 함수는 무엇을 확장한 형태인가요?
    a) nvl 함수
    b) nullif 함수
    c) decode 함수
    d) extract 함수
답: C

6. `sign` 함수는 어떤 값을 반환하나요?
    a) 양수인 경우 1, 음수인 경우 -1, 0인 경우 0
    b) 양수인 경우 1, 음수인 경우 0
    c) 양수인 경우 0, 음수인 경우 -1
    d) 양수인 경우 0, 음수인 경우 1
답: A

7. `extract` 함수는 어떤 데이터로부터 무엇을 추출하나요?
    a) 날짜 데이터로부터 연도, 월, 일을 추출
    b) 문자열 데이터로부터 특정 문자를 추출
    c) 숫자 데이터로부터 소수점을 추출
    d) 배열 데이터로부터 특정 요소를 추출
답: A

8. `decode` 함수와 `sign` 함수를 함께 사용하면 어떤 효과가 있나요?
    a) 데이터 정렬에 유용하다
    b) 여러 조건에 따라 데이터를 다르게 처리할 수 있다
    c) 데이터 타입을 변환할 수 있다
    d) 데이터베이스 연결을 관리할 수 있다
답: B

9. case 함수는 어떤 연산을 통해 비교가 가능하게 해주는가?
   a) 산술 연산만 가능
   b) 관계 연산만 가능
   c) 논리 연산만 가능
   d) 산술, 관계, 논리 연산 모두 가능
답: D

10. sign 함수는 어떤 값을 반환하는가?
   a) n < 0 : -1, n = 0 : 0, n > 0 : 0
   b) n < 0 : 0, n = 0 : 1, n > 0 : 1
   c) n < 0 : -1, n = 0 : 0, n > 0 : 1
   d) n < 0 : -1, n = 0 : -1, n > 0 : 1
답: C

문제 1:
사원들의 보너스를 계산하려 합니다. 보너스는 comm 값에 10%를 더한 값입니다. 만약 comm이 null인 경우에는 sal의 20%로 보너스를 설정하고, 이 보너스의 합산 금액을 출력하시오.
(문제에서는 nvl 함수를 활용해야 합니다.)
SELECT ename, sal, comm, comm*0.15 보너스,
	nvl(comm, sal*0.2)
FROM emp;

문제 2:
각 사원의 보너스를 계산하되, 만약 comm 값이 null이면 sal의 15%로, null이 아니라면 comm 값에 sal의 5%를 더하여 보너스를 계산하려 합니다. 10단위로 절삭한 보너스 금액을 출력하시오.
(문제에서는 nvl2 함수를 활용해야 합니다.)
SELECT ename, sal commm,
trunc(nvl2(comm, COMM+sal*0.05, sal*0.15),-1)
FROM emp;

문제 3:
모든 사원의 보너스를 계산하려 합니다. 만약 comm이 0인 경우에는 null을 반환하고, 그렇지 않으면 comm을 그대로 출력하시오. 각 사원의 사원명, 급여, 보너스를 출력하시오.
(문제에서는 nullif 함수를 활용해야 합니다.)
SELECT ename, sal, nullif(comm,0) "보너스" 
FROM emp;

문제 4:
각 사원에 대한 급여 등급을 부여하려 합니다. 5000 이상의 급여를 받는 사원은 'A' 등급, 3000 ~ 4999는 'B' 등급, 2000 ~ 2999는 'C' 등급, 그 외는 'D' 등급을 부여하려 합니다. 각 사원의 이름과 급여 등급을 출력하시오.
(문제에서는 CASE WHEN 구문을 활용해야 합니다.)
SELECT ename, sal,
       CASE WHEN sal>=5000 THEN 'A'
            WHEN sal>=4000 THEN 'B'
            WHEN sal>=3000 THEN 'C'
            WHEN sal>=2000 THEN 'D'
            ELSE  'E'
      END 등급      
FROM emp; 

문제 5:
사원들의 입사일이 1982년 이후인지 여부를 확인하려 합니다. 1982년 이후에 입사한 사원의 경우 'Y', 그렇지 않은 경우 'N'으로 출력하시오.
(문제에서는 extract와 decode 함수를 활용해야 합니다.) 
SELECT ename, 
	  extract(YEAR FROM hiredate) 입사년도,
	  extract(month FROM hiredate) 입사월,
	  extract(day FROM hiredate) 입사일,
	  decode( sign(
	  		    extract(YEAR FROM hiredate)-1982), 
	  		    -1,'N','Y') "1982년전후"
FROM EMP;