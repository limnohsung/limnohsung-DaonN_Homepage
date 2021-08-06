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
	<div class="wrap build upcs_system">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>시스템 구축</h2>
			<%@ include file="/WEB-INF/include/inc_build_nav.jspf" %>
		</div>
		<div class="scroll">
			<ul>
				<li><a href="javascript:;">UPCS System<span></span></a></li>
				<li><a href="javascript:;">2way<span></span></a></li>
				<li><a href="javascript:;">1way<span></span></a></li>
				<li><a href="javascript:;">1way Devided<span></span></a></li>				
				<li><a href="javascript:;">ParkingLot<span></span></a></li>
			</ul>
		</div>
		<div class="section">
			<div class="content">
				<h3>UPCS System 구성도</h3>
				<!-- <div class="btn_box">
					<div class="btn fr">
						체험하기 Click
						<div class="img">
							<img src="/imgs/click.png" alt="">
						</div>
					</div>
				</div> -->
				<p>
					무인주차관제 시스템(UPCS)은 가장 경제적인 구축비용과 가장 편리하고 스마트한 운영방법을 제공하여<br>
					주차장 운영자에게는 매출 상승과 비용 절감을 운전자 고객에게는 스마트한 Parking Service 제공은 물론<br>
					다양한 주차할인 프로모션을 통해 경제적인 주차환경을 제공합니다.
				</p>
				<div class="img_box">
					<img src="/imgs/UPCS_System.jpg" alt="">
				</div>
			</div>
		</div>
		
		<div class="section" id="part">
			<div class="content">
				<h3>2차로 양방향 시스템</h3>
				<p>
					출입공간이 충분하여 입출구를 두개의 라인으로 설치하는 시스템					
				</p>
				<div class="img_box">
					<img src="/imgs/upcs_2way.png" alt="">
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="content">
				<h3>1차로 양방향 시스템</h3>
				<p>
					출입 공간이 협소하여 입출구를 하나의 라인으로 설치 하는 시스템						
				</p>
				<div class="img_box">
					<img src="/imgs/upcs_1way.png" alt="">
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="content">
				<h3>1차로 분할 시스템</h3>
				<p>
					입구와 출구가 다른 위치에 있을 때 설치 하는 시스템				
				</p>
				<div class="img_box">
					- 입구 -
					<img src="/imgs/upcs_in.png" alt="">
				</div>
				<div class="img_box">
					- 출구 -
					<img src="/imgs/upcs_out.png" alt="">
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="content">
				<h3>주차장 (Parking Lot)</h3>
				<p>
					주차장 유도관제 서비스 설치 후 전경				
				</p>
				<div class="img_box">
					<img src="/imgs/Parking_Lot.jpg" alt="">
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
</body>

</html>
<script>
$(function(){
	
	var cor = -100;
	var i = 0;
	var sec01 = $('.section').eq(0).offset().top + cor,
		sec02 = $('.section').eq(1).offset().top + cor,
		sec03 = $('.section').eq(2).offset().top + cor,
		sec04 = $('.section').eq(3).offset().top + cor,
		sec05 = $('.section').eq(4).offset().top + cor;
	var sec = $('.section').eq(i).offset().top + cor
	
	$('.scroll ul li').mouseenter(function(){
		$(this).find('a').addClass('on');
		$(this).siblings().find('a').removeClass('on');
		//$(this).find('span').addClass('active');
		//$(this).siblings().find('span').removeClass('active');
	});
	$('.scroll ul li').mouseleave(function(){
		$('.scroll ul li').find('a').removeClass('on');
		//$(this).find('span').addClass('active');
		//$(this).siblings().find('span').removeClass('active');
	});
	
	$('.scroll ul li').click(function(){
		var idx = $(this).index();
		var posi = $('.section').eq(idx).offset().top + cor + 20;
		$('html').animate({scrollTop : posi});
	});
	
	
	$(document).scroll(function(){
		var scrtop = $('html').scrollTop();
		if(scrtop > 420){
			$('.upcs_system .scroll').show();
			$('.upcs_system .scroll').css({opacity:1});
		}else{
			
			$('.upcs_system .scroll').css({opacity:0}, function(){
				$('.upcs_system .scroll').hide();
			});
		};
		
		if(scrtop > sec01){
			i = 0;
		};
		if(scrtop > sec02){
			i = 1;
		};
		if(scrtop > sec03){
			i = 2;
		};
		if(scrtop > sec04){
			i = 3;
		};
		if(scrtop > sec05){
			i = 4;
		};
		
		$('.scroll ul li').eq(i).find('a').addClass('on');
		$('.scroll ul li').eq(i).find('span').addClass('active');
		$('.scroll ul li').eq(i).siblings().find('a').removeClass('on');
		$('.scroll ul li').eq(i).siblings().find('span').removeClass('active');
		
	});
});
</script>
