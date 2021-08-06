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
	<div class="wrap build upcs_device">
		<%@ include file="/WEB-INF/include/inc_header.jspf" %>
		<div class="banner">
			<h2>시스템 구축</h2>
			<%@ include file="/WEB-INF/include/inc_build_nav.jspf" %>
		</div>
		<div class="section">
			<div class="content">
				<h3>UPCS 주요 장비 현황</h3>
				<ul>
					<li>
						<img src="imgs/device01.png" alt="">
						<p>정기권관리서버</p>
						<div></div>
						<div>						
							<dl>
							   <dt>기능</dt>
								<dd>
									각 관제실 컴퓨터 이용하여 브라우저를 통해 접속한다.
									주차장의 정보는 웹페이지로 접근하여 DAON& 중앙서버에서
									계정별로 관리할 수 있다. 원격지의 입출차 차단기를 수동제어 할 수 있다.								     
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
								   PC : 인터넷에 연결된 관제실 컴퓨터 이용
							  	</dd>							  	
							</dl>
						</div>
					</li>
					<li>
						<img src="imgs/device02.png" alt="">
						<p>차단기</p>
						<div></div>
						<div>						
							<dl>
							   <dt>기능</dt>
								<dd>
								     차번인식과 연동, 자동Open및 Loop Coil감지로 자동 Close 됨.<br>
									정전시 수동개폐핸들 조작. 추가 감지기 연결가능함.<br>
									Break 기능을 통한 차단기 Bar의 떨림 최소화.
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
								   동작형식 : 크랭크식 간접구동방식<br>
				       			   입력전원 : AC 220V, 60Hz<br>
								   SIZE : 594(W)x350(D)x1368.8(H)mm<br>
								   무게  : 약 65kg<br>
								   개폐기능 : 전면도어및 상부카바 오픈<br>
								   도장 : 옥외용 분체도장<br>
								   바길이 : 알루미늄 3M 최대 4M<br>
									동작시간 : 차단바 상승/하강 1.5~3초
							  	</dd>
							  	<dt>모델명</dt>
							  	<dd>
								    독립형 :  DCG- 2010<br> 
									LPR, 전광판 일체형 :  DCG- 2011								    
							  	</dd>
							</dl>
						</div>
					</li>
					<li>
						<img src="imgs/device03.png" alt="">
						<p>LPR 단방향</p>
						<div></div>
						<div>							
							<dl>
							   <dt>기능</dt>
								<dd>
								     차번인식 Camera 전송영상 분석을 통한 인식.<br>
								     차번인식을 통한 영상화면 전송<br>
								     차번인식을 통하여 Local Server에 저장과 동시에 Cloud Server에도 저장됨.<br>
								     User는 Web & Mobile App.으로 확인가능함.
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
								   Camera 사양<br>
								   *동기방식 : 내/외 동기방식<br>
								   *셔터속도 : 0.02ms ~ 2,000ms<br>
								   *조명장치 : IR – LED 조명<br>
								   *조명각도 : 현장여건에 따라 조정<br>
								   * 해상도 - 수평 1600 Px, - 수직 1200 Px<br>
								   * 통신방식 : LAN ( TCP / IP ) 10/100Mbps
							  	</dd>
							  	<dt>모델명</dt>
							  	<dd>								    
								    자립형 :  DP-LPR 20
							  	</dd>
							</dl>
						</div>
					</li>
					<li>
						<img src="imgs/device04.png" alt="">
						<p>LPR 양방향</p>
						<div></div>
						<div>							
							<dl>
							   <dt>기능</dt>
								<dd>
								     차번인식 Camera 전송영상 분석을 통한 인식.<br>
								     차번인식을 통한 영상화면 전송<br>
								     차번인식을 통하여 Local Server에 저장과 동시에 Cloud Server에도 저장됨.<br>
								     User는 Web & Mobile App.으로 확인가능함.
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
								   Camera 사양<br>
								   *동기방식 : 내/외 동기방식<br>
								   *셔터속도 : 0.02ms ~ 2,000ms<br>
								   *조명장치 : IR – LED 조명<br>
								   *조명각도 : 현장여건에 따라 조정<br>
								   * 해상도 - 수평 1600 Px, - 수직 1200 Px<br>
								   * 통신방식 : LAN ( TCP / IP ) 10/100Mbps
							  	</dd>
							  	<dt>모델명</dt>
							  	<dd>								    
								    자립형 :  DP-LPR-B30
							  	</dd>
							</dl>
						</div>
					</li>
					<li>
						<img src="imgs/device05.png" alt="">
						<p>무인정산기</p>
						<div></div>
						<div>							
							<dl>
							   <dt>기능</dt>
								<dd>
									차량 운전자가 주차장에서 출차시 요금을 자가 정산을 하며, 사전무인정산기와 App 그리고 웹에서 미리 요금 결제처리된 차량은 출차시
									차단기와 연동처리되어 신속한 출차가 가능하다.<br>
									비상시 호출버튼을 사용하면 voip전화로 고객센터와 연결가능하다.
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
									*동작형식 : 중앙서버 연동 요금계산<br>
							   		*입력전원 : AC 220V, 60Hz<br>
									*SIZE : 750x600x1555(mm)<br>
									*무게  :  약 70kg
							  	</dd>
							  	<dt>모델명</dt>
							  	<dd>
								    DOP- 2011
							  	</dd>
							</dl>
					</li>
					<li>
						<img src="imgs/device05.png" alt="">
						<p>사전무인정산기</p>
						<div></div>
						<div>							
							<dl>
							   <dt>기능</dt>
								<dd>
									차량 운전자가 주차장에서 출차전 요금을 자가 정산을 하며, App 및 웹에서 미리 요금 결제처리된 차량은 출차시 차단기와 연동처리되어 신속한 출차가 가능하다.<br>
									비상시 화면상의 고객센터연결 버튼을 사용하면 voip전화로 고객센터와 연결가능하다.
						   		</dd>
							  	<dt>제품 사양</dt>
							  	<dd>
									*동작형식 : 중앙서버 연동 요금계산<br>
							   		*입력전원 : AC 220V, 60Hz<br>
									*SIZE : 750x600x1555(mm)<br>
									*무게  :  약 70kg
							  	</dd>
							  	<dt>모델명</dt>
							  	<dd>
								    DKP- 2011T
							  	</dd>
							</dl>
					</li>
				</ul>
			</div>
		<%@ include file="/WEB-INF/include/inc_footer.jspf" %>
	</div>
</body>
<script>
	$('.upcs_device .section dl').click(function(){
		$(this).parent().css(opacity, 1);
	})
</script>
</html>
