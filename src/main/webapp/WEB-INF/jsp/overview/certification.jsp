<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(5){background-color: #fff; color: #333;}
		.lnb li:nth-child(5) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap certification">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>회사소개</h2>
			<%@ include file="/WEB-INF/include/inc_overview_nav.jspf" %>
		</div>

		<div class="section certifi_list">
			<div class="content">
				<h3>Certification</h3>
				<ul>
					<li>
						<div class="img img01"></div>
						<p>사업자등록증</p>
					</li>
					<li>
						<div class="img img02"></div>
						<p>ISO 9001 인증서</p>
					</li>
					<li>
						<div class="img img03"></div>
						<p>영업신고증</p>
					</li>
					<li>
						<div class="img img04"></div>
						<p>정보통신공사업등록증</p>
					</li>
					<li>
						<div class="img img05"></div>
						<p>공장등록증</p>
					</li>
					<li>
						<div class="img img06"></div>
						<p>연구개발전담부서인정서</p>
					</li>
					<li>
						<div class="img img07"></div>
						<p>소프트웨어 저작권등록증</p>
					</li>
					<li>
						<div class="img img08"></div>
						<p>직접생산확인증명서</p>
					</li>
					<li>
						<div class="img img09"></div>
						<p>KC 적합 인증서(LPR)</p>
					</li>
					<li>
						<div class="img img10"></div>
						<p>KC 적합 인증서(무인 정산기)</p>
					</li>
					<li>
						<div class="img img11"></div>
						<p>KC 적합 인증서(입구 전광판)</p>
					</li>
					<li>
						<div class="img img12"></div>
						<p>KC 적합 인증서(층별 전광판)</p>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>