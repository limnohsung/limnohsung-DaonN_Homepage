$(function(){
	var w = $(window).width();
	function isiPhone(){
	    return (
	        (navigator.platform.indexOf("iPhone") != -1) ||
	        (navigator.platform.indexOf("iPod") != -1)
	    );
	};
	var myFullpage = new fullpage('#fullpage', {
        anchors: ['1', '2', '3', '4', '5', '6'],
        navigation: true,
        navigationPosition: 'right',
        afterResponsive: function(){
        },
        afterLoad: function( section, origin, destination, direction){
			var loadedSlide = this;
			$('#fp-nav ul li a span, .fp-slidesNav ul li a span').css({'background-color' : '#fff'});
			if(origin.anchor == '1'){
				//$('#video').get(0).play();
			};

			if(origin.anchor == '2'){
				$('.overview h3').animate({'top':0, 'opacity' : 1}, 1500);
				$('.overview p').animate({'top':0, 'opacity' : 1}, 1500);
                /*$('.overview li').eq(0).animate({'transform':'scale(1)'}, 300, function(){
                    $('.overview li').eq(1).animate({'transform':'scale(1)'}, 300, function(){
                        $('.overview li').eq(2).animate({'transform':'scale(1)'}, 300, function(){
                            $('.overview li').eq(3).animate({'transform':'scale(1)'}, 300, function(){
                                $('.overview li').eq(4).animate({'transform':'scale(1)'}, 300, function(){

                                }); 
                            });
                        });
                    });
                });*/
                $('.overview li').eq(0).animate({'transform':'scale(1)'}, 500);
                $('.overview li').eq(1).animate({'transform':'scale(1)'}, 700);
                $('.overview li').eq(2).animate({'transform':'scale(1)'}, 900);
                $('.overview li').eq(3).animate({'transform':'scale(1)'}, 1100);
                $('.overview li').eq(4).animate({'transform':'scale(1)'}, 1300);
			};
			if(w <= 480){
				
			}else{
				if(origin.anchor == '3'){
	                $('.history h3').animate({'top':0, 'opacity' : 1}, 1500);
	                $('.history p').animate({'top':0, 'opacity' : 1}, 1500);
	                $('.history li').animate({'opacity' : 1}, 1500);
					 $('.history .line01').animate({'width':'80%'}, 500, 'linear', function(){
	                    $('.history .line02').animate({'width':'80%'}, 500, 'linear');
	                 });
				};
			};
			

			if(origin.anchor == '4'){
                $('.policy h3').animate({'top':0, 'opacity' : 1}, 1500);
                $('.policy p').animate({'top':0, 'opacity' : 1}, 1500);
				$('.policy ul').animate({'opacity' : 1}, 1500);
			};
		}
    });

    //메인 베너 페이드인아웃
    var mainBannerIndex = 1,
    	mainBannerTime = 3000;
    var mainFadeInOut = function(){
    	$('.mainBanner ul li').eq(mainBannerIndex).animate({opacity : 1}, mainBannerTime);
    	$('.mainBanner ul li').eq(mainBannerIndex).siblings().animate({opacity : 0}, mainBannerTime);
    	mainBannerIndex++;
    	mainBannerIndex = mainBannerIndex%3;
    };

    var startBanner = setInterval(function(){
    	mainFadeInOut();
    }, mainBannerTime*2);

    var cl_ham = true;
    $('.ham').click(function(){
        var list = $(this).find('li');
        if(cl_ham){
          $('.menu_wrap').animate({'width':'73%'});
            $(this).animate({'transform':'scale(0)'}, 1, function(){
                $(this).animate({'transform':'scale(1)'});
            });
            list.css({'background-color':'#000'});
            list.eq(1).hide();
            list.eq(0).css({'bottom':0,'transform':'rotate(45deg)'});
            list.eq(2).css({'top':0,'transform':'rotate(-45deg)'});
            $('.gray_bg').show();
            cl_ham = false;
        }else{
            list.css({'background-color':'#fff'});
            list.eq(1).show();
            list.eq(0).css({'bottom':'auto','transform':'rotate(0)'});
            list.eq(2).css({'top':'auto','transform':'rotate(0)'});
            $('.menu_wrap').animate({'width':'0%'});
            $(this).css({'transform':'scale(1)'});
            $('.gray_bg').hide();
            cl_ham = true;
        };
    });
    //lnb 베너 드롭다운
   
	$('.hdrCat').mouseover(function(){
		$('.hdr_lnb_wrap').show();
		$('.header').css({
			'background-color':'#ffffff',
		    'border-bottom': '1px solid rgba(0, 0, 0, 0.4)'
			});
		$('.ham ul li').css('background-color','#000');
		$('.header .hdrCat li a').css('color','#000');
		$('.header .logo').css('background-image',"url('/imgs/black_logo.png')")
   
    	});
    	$('.hdrWrap').mouseleave(function(){
		$('.hdr_lnb_wrap').hide();	
		$('.header').css({
				'background-color':'rgba(0, 0, 0, 0.7)',
				'border-bottom': ''
			});
		$('.ham ul li').css('background-color','#fff');
		$('.header .hdrCat li a').css('color','#ffffff');
		$('.header .logo').css('background-image',"url('/imgs/logo.png')")
    });
    	
	$(".menu_wrap .all_menu_inner .clearfix li .dep2 li a[href$='login.do'], .hdr_lnb_wrap .hdr_lnb li .sub_menu li a[href$='login.do']").click(function(e){
		e.preventDefault();
		alert("서비스 준비중 입니다.");
		
	})
    
});