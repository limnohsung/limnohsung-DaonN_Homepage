<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<style>
		.lnb li:nth-child(1){background-color: #fff; color: #333;}
		.lnb li:nth-child(1) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap build bz_area">
		
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		
		<div class="banner">
			<h2>시스템 구축</h2>
			<%@ include file="/WEB-INF/include/inc_build_nav.jspf" %>
		</div>
		<div class="section">
			<div class="content">
				<h3>주차 제어 솔루션</h3>
				<ul>
					<li>
						<div class="img img01 fl"></div>
						<div class="article fr">
							<span>FM</span><br>							
							시설 관리(전기, 설비, 조경 등)<br>
							전산 관리(관리비 등)
						</div>
					</li>
					<li>
						<div class="img img02 fr"></div>
						<div class="article fl">
							<span>유도관제</span><br>
							초음파 유도 System<br>
							주차위치 확인 System<br>
							LED 조명제어 System
						</div>
					</li>
					<li>
						<div class="img img03 fl"></div>
						<div class="article fr">
							<span>주차관제</span><br>
							출입보안 System<br>
							유무인 정산 System<br>
							사전할인 System<br>
							주차공유 Service System
						</div>
					</li>
					<li>
						<div class="img img04 fr"></div>
						<div class="article fl">
							<span>CCTV</span><br>
							외관 촬영기<br>
							시설, 주차장내 CCTV<br>
							지능형 CCTV System<br>
							생체인식 System
						</div>
					</li>
				</ul>
			</div>

		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
		
	</div>
</body>
</html>
