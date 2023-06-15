<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="project.saramin.JobPostingDao"
    import="project.saramin.JobPosting"
%>
<%
JobPostingDao dao = new JobPostingDao();
List<JobPosting> jlist = dao.getJobPosting();
SceduleDao dao2 = new SceduleDao();
List<Schedule> slist = dao2.getSchedule();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<%for(JobPosting job:jlist){%>
     <form action="jobposting.php" method="post">
         <h3 style="text-align: left; color: #3157dd;">기업 정보</h3>
         <div class="saramin">
            <label for="name">공고번호</label>
            <input type="text" id="name" name="incharge_name" value="<%=job.getPostId() %>" required>
         </div>
         <div class="saramin">
            <label for="name">기업명</label>
            <input type="text" id="name" name="incharge_name" placeholder="쌍용" value="<%=job.getComName() %>" required>
         </div>
         <div class="saramin">
           <label for="phone">연락처</label>
           <input type="tel" id="phone" name="incharge_phone" placeholder="000-0000-0000" value="<%=job.getPhoneNum() %>" pattern=(\d{3})-?\s?(\d{4})-?\s?(\d{4}) required>
         </div>
         <div class="saramin">
           <label for="email">이메일 주소</label>
           <input type="email" id="email" name="incharge_email" placeholder="xxxxxx@xxxx.xxx" required>
         </div>

         <div class="saramin">
           <label for="loc">대표 근무지역</label>
          </div>
         <div class="saramin">
           <input type="text" name="postcode" id="postcode" placeholder="우편번호" value="<%=job.getPlaceOfWork()%>" style="width: 420px; float: left;" readonly />
         </div>
         <div class="saramin">
           <button type="button" onclick="execDaumPostcode()" style="float: right;">우편번호 찾기</button>
         </div>
         <br>
         <br>
         <div class="saramin">
           <input
             type="text"
             name="address"
             id="address"
             placeholder="도로명 주소"
             readonly
           />
         </div>
         <div class="saramin">
           <input
             type="text"
             name="detailAddress"
             placeholder="상세 주소"
             required
             />
         </div>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d202544.252034099!2d126.89365310000001!3d37.51372124999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca1563e76bc39%3A0x438fa7c6bd828a18!2z7ZWc64-F67mM65Sp!5e0!3m2!1sko!2skr!4v1686060301494!5m2!1sko!2skr" width="650" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
         <br>
         <br>
         <hr>
         <h3 style="text-align: left; color: #3157dd;">모집분야</h3>
         <div class="saramin">
          <label for="kind">모집분야명</label>
          <input type="text" id="kind" name="appicant_fieldName" placeholder="인사담당자" value="<%=job.getFieldName() %>"required>
        </div>
         <div class="saramin">
          <label for="exp">경력 여부</label>
          <select id="exp" name="appicant_exp" required>
            <option value="new">신입</option>
            <option value="old">경력</option>
            <option value="career" selected>경력무관</option>
          </select>
        </div>
         <div class="saramin">
            <label for="res">담당 업무</label>
            <input type="text" id="res" name="appicant_taskInCharge" placeholder="인사 업무 전반" value="<%=job.getTaskInCharge() %>" required>
          </div>
          <div class="saramin">
            <label for="rar">직급/직책</label>
            <input type="text" id="rar" name="appicant_rar" placeholder="사원" required>
          </div>
          <div class="saramin">
            <label for="required">필수/우대조건</label>
            <input type="text" id="required" name="appicant_required">
          </div>
          <hr>
          <h3 style="text-align: left; color: #3157dd;">자격/조건</h3>
          <div class="saramin">
            <label for="sco">학력</label>
            <select id="text" name="appicant_sco" style="width: 366px;" value="<%=job.getEducation() %>" required>
              <option value="scol" selected>대학교 졸업(4년제)</option>
              <option value="semi">대학교 졸업(2년제)</option>
              <option value="high">고등학교 졸업</option>
            </select>
            <input type="text" id="detail" name="appicant_sco" placeholder="[선택]기타 학력사항" style="width: 366px;" required>
          </div>
          <div class="saramin">
            <label for="sex">지원자 성별</label>
            <select id="text" name="appicant_gender" value="<%=job.getGender() %>" required>
              <option value="woman">여자</option>
              <option value="man">남자</option>
              <option value="anyone" selected>성별무관</option>
            </select>
          </div>
          <div class="saramin">
            <label for="sal">연봉/급여</label>
            <select id="text" name="appicant_sal" style="width: 366px;" value="<%=job.getSalary() %>" required>
              <option value="two">2800~3000</option>
              <option value="three" selected>3000~3200</option>
              <option value="three-five">3200~3500</option>
            </select>
            <input type="text" id="sal" name="appicant_sal" style="width: 366px;" placeholder="[선택]기타 급여사항" value="<%=job.getSalary() %>"required>
          </div>
          <div class="saramin">
            <label for="res">근무 형태</label>
            <select id="text" name="appicant_rule" required>
              <option value="woman" selected>정규직</option>
              <option value="man">계약직</option>
              <option value="anyone">아르바이트</option>
              <option value="anyone">프리랜서</option>
              <option value="anyone">파트</option>
              <option value="anyone">파견직</option>
              <option value="anyone">위촉직</option>
            </select>
          </div>
          <hr>
          <h3 style="text-align: left; color: #3157dd;">채용절차</h3>
          <div class="saramin">
            <label for="start-date">시작 날짜</label>
            <input type="date" id="start-date" name="start" style="width: 500px;" value="<%=job.getRecruitmentDate() %>" required>
            <label for="end-date">종료 날짜</label>
            <input type="date" id="end-date" name="end" style="width: 500px;"  required>
            <button onclick="checkDateRange()">확인</button>
            <p id="error-message" style="color: red;"></p>
          </div>
          <div class="saramin">
            <label for="res">지원 접수 방법</label>
            <select id="text" name="appicant_method" value="<%=job.getReceptionMethod() %>" required>
              <option value="woman" selected>사람인접수</option>
              <option value="man">홈페이지</option>
              <option value="anyone">우편</option>
              <option value="anyone">방문</option>
              <option value="anyone">전화</option>
              <option value="anyone">FAX</option>
            </select>
            <div>
              <input type="button" value=" 추가 " onclick="add_item()"><br>
            </div>
          </div>
          <div class="saramin">
            <label for="res">전형절차</label>
            <input type="text" id="res" name="appicant_responsibilities" placeholder="서류전형" required>
            <input type="text" id="res" name="appicant_responsibilities" placeholder="1차 면접" required>
            <input type="text" id="res" name="appicant_responsibilities" placeholder="2차 면접" required>
          </div>
          <div class="saramin">
            <label for="res">제출서류</label>
            <select id="text" name="appicant_method" required>
              <option value="woman" selected>인적성검사</option>
              <option value="man">사전인터뷰</option>
              <option value="anyone">참고자료</option>
              <option value="anyone">직접입력</option>
            </select>
          </div>
          <button onclick="posting()" style="vertical-align:middle;" type="submit" name="post" value="submit">공고 등록 완료</button>
         <br>
         <br>
        </form>
        
</body>
</html>