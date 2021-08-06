<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(4){background-color: #fff; color: #333;}
		.lnb li:nth-child(4) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap parking_system op_service">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>주차 시스템</h2>
			<%@ include file="/WEB-INF/include/inc_system_nav.jspf" %>
		</div>

		<div class="mgt_type section">
			<div class="content">
				<h3>Parking Mgt. for Type</h3>
				<ul>
					<li></li>
				</ul>			
			</div>
		</div>

		<div class="mgt_bar section">
			<div class="content">
				<h3>Parking Mgt. with Bar</h3>
				<ul>
					<li></li>
				</ul>			
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>