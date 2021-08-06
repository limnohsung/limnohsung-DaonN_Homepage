<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>DAON&</title>
	<%@ include file="/WEB-INF/include/inc_head.jspf" %>
	<script src="/js/in_out_flow.js"></script>
	<style>
		.lnb li:nth-child(5){background-color: #fff; color: #333;}
		.lnb li:nth-child(5) a{color: #333;}
	</style>
</head>
<body>
	<div class="wrap build in_out_flow">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>시스템 구축</h2>
			<%@ include file="/WEB-INF/include/inc_build_nav.jspf" %>
		</div>

		<div class="section flow">
			<div class="content">
				<h3>입/출차 FLOW (체험)</h3>

				<ul>
					<li class="slide01">
						<div class="back">
							<img src="/imgs/ani/block02.png" alt="">
						</div>
						<div class="car_in">
							<img src="/imgs/ani/car_in.png" alt="">
						</div>
						<div class="middle">
							<img src="/imgs/ani/block01.png" alt="">
						</div>
						<div class="bar_front over">
							<img src="/imgs/ani/bar_front_1.png" alt="">
						</div>
						<div class="body_front over">
							<img src="/imgs/ani/body_front.png" alt="">
						</div>
						<div class="camera_front">
							<img src="/imgs/ani/camera_front.png" alt="">
						</div>
						<div class="count over">
							<img src="/imgs/ani/count.png" alt="">
						</div>
						<div class="camera_back">
							<img src="/imgs/ani/camera_back.png" alt="">
						</div>
						<div class="body_back over">
							<img src="/imgs/ani/body_back.png" alt="">
						</div>
						<div class="bar_back over">
							<img src="/imgs/ani/bar_back_1.png" alt="">
						</div>
						<div class="car_out">
							<img src="/imgs/ani/car_out.png" alt="">
						</div>
						<div class="front">
							<img src="/imgs/ani/block02.png" alt="">
						</div>
						<div class="num">
							<img src="/imgs/ani/num.png" alt="">
						</div>
						<div class="mouse mouse01">
							<img class="outline" src="/imgs/ani/mouse.gif" alt="">
						</div>
						<div class="mouse mouse03">
							<img class="outline" src="/imgs/ani/mouse.gif" alt="">
						</div>
						<div class="mouse mouse02">
							<img class="outline" src="/imgs/ani/mouse.gif" alt="">
						</div>					
					</li>
					<li class="slide02">
						<div class="parking_lot">
							<img src="/imgs/ani/parkinglot_11_b.png" alt="">
						</div>
						<div class="parking_car_in">
							<img src="/imgs/ani/parking_car_in.png" alt="">
						</div>
						<div class="parking_car_out">
							<img src="/imgs/ani/parking_car_out.png" alt="">
						</div>
						<div class="parkinglot_10">
							<img src="/imgs/ani/parkinglot_10.png" alt="">
						</div>
						<div class="red_light">
							<img src="/imgs/ani/red_light.png" alt="">
						</div>
						<div class="green_light">
							<img src="/imgs/ani/green_light.png" alt="">
						</div>
						<div class="arrow">
							<img src="/imgs/ani/arrow.png" alt="">
						</div>
						<div class="arrow_down01">
							<img src="/imgs/ani/arrow_down.gif" alt="">
						</div>
						<div class="arrow_down02">
							<img src="/imgs/ani/arrow_down.gif" alt="">
						</div>
					</li>
				</ul>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>

</html>
