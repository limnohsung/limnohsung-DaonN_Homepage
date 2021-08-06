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
	<div class="wrap parking_system parking_control">
		
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		
		<div class="banner">
			<h2>주차 시스템</h2>
			<%@ include file="/WEB-INF/include/inc_system_nav.jspf" %>
		</div>

		<div class="section">
			<div class="content">
				<h3>주차 제어 솔루션</h3>
				<ul>
					<li>
						<div class="img img01 fl"></div>
						<div class="article fr">
							<span>Parking Control Service</span><br>
							LPR(차량번호인식) 기능<br>
							무인 요금 정산 기능<br>
							Mobile 사전 정산 기능<br>
							자동요금할인 기능<br>
							주차장 차량사고 및<br>
							파손 등 자동 감식 기능<br>
							주차 예약제 등
						</div>
					</li>
					<li>
						<div class="img img02 fr"></div>
						<div class="article fl">
							<span>Access Control System</span><br>
							실시간 주차공간 안내<br>
							차량 위치 확인 Service 제공<br>
							Mobile Service 제공 등
						</div>
					</li>
					<li>
						<div class="img img03 fl"></div>
						<div class="article fr">
							<span>Parking & Envir. Service</span><br>
							노후 주차장 개선 사업 / 수익창출<br>
							주차장 Floor<br>
							주차장 Ceiling<br>
							주차장 Wall<br>
							LED, 게시물 등
						</div>
					</li>
					<li>
						<div class="img img04 fr"></div>
						<div class="article fl">
							<span>Web & Mobile Service</span><br>
							주차장 검색 및 비교선택<br>
							Mobile 주차 정기권 할인 구매 등<br>
							차량 주차위치 확인 Service<br>
							Mobile 사전결제<br>
							Parking Navigation 사용 가능 등
						</div>
					</li>
				</ul>			
			</div>
		</div>

		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>	
	</div>
</body>
</html>