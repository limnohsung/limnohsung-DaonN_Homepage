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
	<div class="wrap ebook catalog">
		
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		
		<div class="banner">
			<h2>E-BOOK</h2>
			<%@ include file="/WEB-INF/include/inc_ebook_nav.jspf" %>
		</div>
		<div class="section">
			<div class="content">
				<h3>카탈로그</h3>
				<ul>
					<li class="bg">
						<div class="btn"><a href="/download/catalogue.pdf" download>카탈로그 보기</a></div>
					</li>
				</ul>
			</div>
		</div>
		<div class="open_book">
			<div class="hdr_book">
				<div class="download fl">
					<a href="/downloads/catalogue.pdf" download>다운로드&nbsp;
					<span class="bg"></span></a>
				</div>
				<div class="pgnation">
					<div class="left"><i class="fas fa-caret-left"></i></div>
					<div class="page">
						<span class="current">1</span>
						/
						<span class="full">12</span>
					</div>
					<div class="right"><i class="fas fa-caret-right"></i></div>
				</div>
			</div>
			<ul class="book">
				<li class="img img01"></li>
				<li class="img img02"></li>
				<li class="img img03"></li>
				<li class="img img04"></li>
				<li class="img img05"></li>
				<li class="img img06"></li>
				<li class="img img07"></li>
				<li class="img img08"></li>
				<li class="img img09"></li>
				<li class="img img10"></li>
				<li class="img img11"></li>
				<li class="img img12"></li>
			</ul>
			<div class="times"></div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
		
	</div>
</body>
</html>
