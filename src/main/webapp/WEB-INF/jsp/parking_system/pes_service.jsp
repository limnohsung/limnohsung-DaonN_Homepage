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
	<div class="wrap parking_system pes_service">

		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		
		<div class="banner">
			<h2>주차 시스템</h2>
			<%@ include file="/WEB-INF/include/inc_system_nav.jspf" %>
		</div>

		<div class="section">
			<div class="content">
				<h3>Parking Environment Service</h3>
				<p>
					주차장 통합 관리 프로그램에 기반을 두고, 노후화된 기존의 주차장 시설(바닥, 천정, 벽, 게시물 및 LED 등)의<br>
					Renewal을 통한 살아있는 주차공간을 생성하는 새로운 Service입니다.
				</p>
				<div class="img_box">
					<div class="fl before">
						<ul>
							<li>Before</li>
							<li>
								<div class="img">
									<img src="imgs/Before01.jpg" alt="">
								</div>
							</li>
							<li>
								<div class="img">
									<img src="imgs/Before02.jpg" alt="">
								</div>
							</li>
						</ul>
					</div>
					<div class="fr after">
						<ul>
							<li>After</li>
							<li>
								<div class="img">
								<img src="imgs/After01.jpg" alt="">
							</div>
						</li>
							<li>
								<div class="img">
								<img src="imgs/After02.jpg" alt="">
							</div>
						</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
</html>
