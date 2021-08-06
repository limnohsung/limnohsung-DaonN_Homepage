<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>

</head>
<body>
	<div class="wrap notice_login">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>		
		<div class="section ad_login">
      <div class="content">
        <h3>로그인</h3>
        <p>로그인을 위하여 아래 아이디와 비밀번호를 입력해 주세요.</p>
        <form action="/select/homepageAdminCnt.do" method="post" name="frm">
          <input type="text" name="ID" id="id" placeholder="아이디">
          <input type="password" name="PASS" id="pass" placeholder="비밀번호">
          <button id="login_btn">로그인</button>
        </form>
        <div class="auto_new">
          <input class="fl" type="checkbox">로그인 상태유지
          <!-- <div class="fr">
            <span><b>회원가입</b>비밀번호 찾기</span>
          </div> -->
        </div>
      </div>
    </div>
    <div class="section reset_pw">
      <div class="content">
        <h3>비밀번호 찾기</h3>
        <p>비밀번호 재설정을 위한 이메일을 보내 드리겠습니다.</p>
        <form action="">
          <input type="text" placeholder="이메일">
          <button>요청하기</button>
        </form>        
      </div>
    </div>		
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
	<script>
		var chk = '${map.resultMsg}';
		if(chk == 'failed'){
			alert('아이디와 비밀번호를 확인해 주세요.');
		}
	</script>
</body>
</html>