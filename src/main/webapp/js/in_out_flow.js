$(function(){

	//현재 페이지
	var flow_page = 0;

	// 슬라이드2 초록색 점멸
	var greenLight = setInterval(function(){
		$('.green_light').animate({opacity: 0},1000 , function(){
			$(this).animate({opacity: 1}, 1000);
		});
	}, 2000);

	

	// 마우스를 올렸을때 투명도
	$('.slide01 > .over').mouseenter(function(){
		$(this).css('opacity','0.5');
	});
	$('.slide01 > div').mouseleave(function(){
		$(this).css('opacity','1');
	});

	// 자동차이동
	$('.body_back, .bar_back').click(function(){
		if(flow_page == 0){
			$('.car_in img').attr({src: '/imgs/ani/car_in.gif'});
			$('.car_in').animate({top: 180, left:-380}, 2000, function(){
				$('.bar_back').animate({transform: 'rotate(5deg)'},function(){
					$('.slide01').animate({opacity: 0, 'z-index': 0},1500);
					$('.slide02').animate({opacity: 1, 'z-index': 1},1500);
					flow_page = 1;
					$('.car_in').animate({opacity: 0},1500, function(){
						$('.car_in').hide();
					});
				})
			});
			// 차단기 올라가기
			$('.bar_back').animate({transform: 'rotate(89deg)'});
		};
		
	})
	// 슬라이드2 실행

	$('.green_light').click(function(){
		$('.parking_car_in').animate({
			top: 475, left: 260},2500,function(){
			$('.red_light, .parkinglot_10').show();
			$('.parking_car_in').animate({opacity: 0,},1500);
			$('.parking_car_out').show();
			$('.parking_car_out').animate({opacity: 1,},1500);
			$('.arrow').show();
			$('.green_light').hide();
			$('.arrow').animate({opacity: 0},1000 , function(){
				$(this).animate({opacity: 1}, 1000);
			});
			setInterval(function(){
				$('.arrow').animate({opacity: 0},1000 , function(){
					$(this).animate({opacity: 1}, 1000);
				});
			}, 2000);
		});
	});

	// 화살표 눌렀을때
	$('.arrow').click(function(){
		$('.parking_car_out').animate({top: 400, left: 370}, 600, 'linear',function(){
			$('.red_light, .parkinglot_10').hide();
			$('.parking_car_out').animate({top: 100, left: 810}, 2100, 'linear',function(){
				$('.arrow').hide();
				$('.slide02').animate({opacity: 0,'z-index': 0},1500);
				$('.slide01').animate({opacity: 1,'z-index': 1},1500);
				$('.car_out').show();
				$('.mouse01').hide();
				$('.mouse02').css({opacity:1});
			});
		});
	});

	// 출차할때
	$('.count').click(function(){
		if(flow_page){
			$('.car_out img').attr({src: '/imgs/ani/car_out.gif'});
			$('.car_out').animate({top: 170, left: 350},1000, function(){
				$('.num').show();
				$('.car_out img').attr({src: '/imgs/ani/car_out.png'});
				$('.mouse02').animate({opacity:0}, 1000);
				$('.mouse03').animate({opacity:1}, 1000);
			});
		};
	});
	$('.bar_front, .body_front').click(function(){
		if(flow_page){
			$('.car_out img').attr({src: '/imgs/ani/car_out.gif'});
			$('.bar_front').animate({transform: 'rotate(-90deg)'});
			$('.car_out').animate({top: 30, left: 1180},2000, function(){
				$('.car_out').animate({opacity: 0},2000, function(){
					$('.car_out').hide();
				});
				$('.bar_front').animate({transform: 'rotate(15deg)'}, function(){
					$('.num').hide();
					$('.mouse03').animate({opacity:0}, 1000);
				});
			});
		};	
	});

	//마우스 움직임
	setInterval(function(){
		$('.mouse .click').animate({top: 35}, 'linear', function(){
			$('.mouse .click').animate({top: 45}, 'linear');
		});
	}, 1000);

});