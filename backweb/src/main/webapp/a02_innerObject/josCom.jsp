<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.z01_vo.Job"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
직책선택:
<select name="job">
	<option value=''>직책을 선택</option>
	<option value='1000'>사원</option>
</select>
<%--
# 직책정보를 jsp에서 Comnbo 박스로 출력하세요(- jobs 테이블 참고, DAO, JS)
0. 화면구현
	select는 처리형태 확인 value/화면출력 동일여부 확인
1/ sql 작성
	select *
	FROM jobs
	ORDER BY job_title;
	-- <OPTION value='job_id'>jobTitle(@@~@@)</option>
	-- job_id, job_title, min_salary, max_salary
2. VO작석 string
	private String job_id;
	private String job_title;
	private int min_salary;
	private int max_salary;
3. dao 작성/메서드 추가

4. jsp import(dao/vo)
 --%>
</body>
</html>