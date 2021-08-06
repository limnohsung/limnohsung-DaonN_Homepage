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
	<div class="wrap board">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>	
		<div class="banner">
			<h2>게시판</h2>
			<%-- <%@ include file="/WEB-INF/include/inc_board_nav.jspf" %> --%>
		</div>	
		<div class="section ad_login">
      <div class="content">
        <!-- <h3>전체 게시판</h3> -->
        <div class="board_list">
          <ul>
	            <c:forEach var="resultList" items="${resultList}">
				  <li i="${resultList.SEQ} ">
				  <!-- <div class="img_box" style="background-image:url(/imgs/jordan.jpg)"></div> -->
				  <div class="img_box" style="background-image:url(${resultList.MAIN_IMG})"></div>
	              <h4>${resultList.SUBJECT}</h4>
	              </li>
				</c:forEach>
          </ul>
          <c:if  test="${chk eq 'admin'}">
       		<a href="/admin/write.do" class="fr write">글쓰기</a>
     	 	</c:if>
        </div>
      </div>
      <div class="pagenation">
        <div class="divide_wrap">
	        <div id="pagination" class="divide">
				<ui:pagination paginationInfo="${paginationInfo}" type="customRenderer" jsFunction="linkToPage" />
			</div>   
		</div>
      </div>		
	</div>
	<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
	
	<script>
		$('.board_list ul li').click(function(){
			var i = $(this).attr('i');
			location.href = '/reviewDetail.do?seq=' + i;
		});
	</script>
</body>
</html>