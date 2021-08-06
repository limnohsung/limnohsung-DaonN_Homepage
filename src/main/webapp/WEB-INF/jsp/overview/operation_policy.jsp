<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(3){background-color: #fff; color: #333;}
		.lnb li:nth-child(3) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap operation_policy">

		<%@ include file="/WEB-INF/include/inc_header.jspf" %>

		<div class="banner">
			<h2>회사소개</h2>
			<%@ include file="/WEB-INF/include/inc_overview_nav.jspf" %>
		</div>

		<div class="section">
			<div class="content">
				<h3>Operation Policy</h3>
				<p>DAON&의 경영비전을 소개합니다.</p>
				<div class="img">
					<img src="/imgs/policy_back.jpg" alt="">
					<ul>
						<li>CS 고객만족</li>
						<li>QS 품질관리</li>
					</ul>
				</div>
			</div>
		</div>


		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>
