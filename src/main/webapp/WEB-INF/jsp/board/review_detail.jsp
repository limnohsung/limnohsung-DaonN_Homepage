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
	<div class="wrap board_detail">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>	
		<div class="banner">
			<h2>게시판</h2>
			<%-- <%@ include file="/WEB-INF/include/inc_board_nav.jspf" %> --%>
		</div>	
		<div class="section">
	      <div class="content">
	       	<h4>${list[0].SUBJECT}</h4>
	        <ul class="info">
	        	<li>작성일 : ${list[0].MOD_DATE}</li>
	        	<li>작성자 : ${list[0].ID}</li>
	        </ul>
	        <div class="contents">
	        	${list[0].CONTENT}
	        </div>
	        <div class="btn_box">
		        <a class="list" href="javascript:history.back();">목록보기</a>
		        <c:if  test="${chk eq 'admin'}">
	       			<a class="list" href="/admin/write.do?seq=${list[0].SEQ }">수정하기</a>
	       			<a class="list del" href="#">삭제</a>
	        	</c:if>
        	</div>
	      </div>
		</div>
	<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
	<c:if  test="${chk eq 'admin'}">
		<script>
			$('.del').click(function(){
				var chk = confirm('삭제하시겠습니까?');
				if(!chk){
					return false;
				};
				
				var seq = ${list[0].SEQ};
				
			    var params = {
			            'seq' :seq
			    };
		 	
			    $.ajax({
			        url:"/admin/deleteArticleInfo.do",
			        type:'POST',
			        data: params,
			        success:function(data){
			        	location.href = '/boardList.do'
			        },
			        error:function(jqXHR, textStatus, errorThrown){
			        }
			    });
				
			});
		</script>
   	</c:if>
</body>
</html>