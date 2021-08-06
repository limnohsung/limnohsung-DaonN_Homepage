<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(2){background-color: #fff; color: #333;}
		.lnb li:nth-child(2) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap history">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>회사소개</h2>
			<%@ include file="/WEB-INF/include/inc_overview_nav.jspf" %>
		</div>
		<div class="section">
			<div class="content">
				<h3>Company History</h3>
				<div class="bar bg"></div>
				<ul>
					<li class="fl">
						<h5>2018</h5>
						<p>정보통신공사업 면허 취득<br>주차관제 Biz.면허 취득</p>
					</li>
					<li class="fr">
						<h5>2017</h5>
						<p>연구개발 전담 부서 개설<br>UPCS Program 개발 <span>(Web&Mobile)</span></p>
					</li>
					<li class="fl">
						<h5>2016</h5>
						<p>자본금 증자 (3.5억 원)<br>-</p>
					</li>
					<li class="fr">
						<h5>2015</h5>
						<p>ISO 9001 인증 취득<br>경영혁신형 중소기업 인증</p>
					</li>
					<li class="fl">
						<h5>2014</h5>
						<p>관리 System 구축<br>(Homepage, Group ware 등)</p>
					</li>
					<li class="fr">
						<h5>2013</h5>
						<p>시설물 관리(FM) Start up<br>무역업 취득</p>
					</li>
				</ul>				
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>	
	</div>
</body>
</html>