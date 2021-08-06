$(function(){
	//사이트맵
	var w = $(window).width();
	function isiPhone(){
	    return (
	        (navigator.platform.indexOf("iPhone") != -1) ||
	        (navigator.platform.indexOf("iPod") != -1)
	    );
	};
	var cl_ham = true;
    $('.ham').click(function(){
        var list = $(this).find('li');
        if(cl_ham){
          $('.menu_wrap').animate({'width':'80%'});
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

    //서브 네비
    $(document).scroll(function(){
        var windowTop = $(document).scrollTop();
        
        if(w > 480){       
	        if( windowTop >= 420){
	            $('.banner .lnbWrap').addClass('fixed');
	            $('.banner .lnbWrap .lnb_bg').stop().animate({'width' : '100%'}, 200, 'linear');
	            $('.hdrWrap').hide();
	            $('.ham').hide();
	            $('.top_btn').css({opacity:1});
	            
	        }else{
	            $('.banner .lnbWrap').removeClass('fixed');
	            $('.banner .lnbWrap .lnb_bg').stop().animate({'width' : 1200}, 200, 'linear');
	            $('.hdrWrap').show();
	            $('.ham').show();
	            $('.top_btn').css({opacity:0});
	        };
	        
	        var scrBottom = $("body").height() - $(window).height() - $(window).scrollTop();
	        if(scrBottom < 180){
	        	$('.top_btn').css({'background-color': '#fff', color: '#333'});
	        };
	        if(scrBottom > 180){
	        	$('.top_btn').css({'background-color': 'rgba(236, 28, 36, 0.4)', color: '#5f5f5f'});
	        };
        }
        
    });

    $('.chart .img').mouseenter(function(){
        $(this).stop().animate({'transform':'scale(1.1)', 'z-index':2});
        $(this).siblings('.img').css({'z-index':0});
    });
    $('.chart .img').mouseleave(function(){
        $(this).stop().animate({'transform':'scale(1)', 'z-index':0});
        $(this).siblings('.img').css({'z-index':0});
    });
    
    if (isiPhone()) {
    	
	}else{
		$('.ebook .btn a').attr({'href':'javascript::'});
	};
	
    $('.ebook .btn').click(function(){
    	
    	if (isiPhone()) {
    		
    	}else{
    		$('.open_book').show();
    		$('.gray_bg').show();
    	};
    	
    	
    });
    
    $('.ebook .times').click(function(){
    	$('.open_book').hide();
    	$('.gray_bg').hide();
    });
    
    var cp = 0,
    	tp = $('.ebook .book .img').length -1;
    $('.open_book .left').click(function(){
    	if(cp > 0){
    		cp--;
    		$('.book .img').eq(cp).css({'z-index' : 1}).siblings().css({'z-index' : 0});
    		$('.pgnation .current').text(cp+1);
    	};
    });
    
    $('.open_book .right').click(function(){
    	if(cp < tp){
    		cp++
    		$('.book .img').eq(cp).css({'z-index' : 1}).siblings().css({'z-index' : 0});
    		$('.pgnation .current').text(cp+1);
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
	
	$('.top_btn').click(function(){
		$('html').animate({scrollTop:0});
	});	

	$(".menu_wrap .all_menu_inner .clearfix li .dep2 li a[href$='login.do'], .hdr_lnb_wrap .hdr_lnb li .sub_menu li a[href$='login.do']").click(function(e){
		e.preventDefault();
		alert("서비스 준비중 입니다.");
      });
    /*$('.history h3').animate({'margin-top':-350, 'opacity' : 1}, 1500);
    $('.history .content ul li').eq(0).animate({'left':0, 'opacity' : 1}, 1000);
    $('.history .content ul li').eq(1).animate({'right':0, 'opacity' : 1}, 1500);
    $('.history .content ul li').eq(2).animate({'left':0, 'opacity' : 1}, 2000);
    $('.history .content ul li').eq(3).animate({'right':0, 'opacity' : 1}, 2500);
    $('.history .content ul li').eq(4).animate({'left':0, 'opacity' : 1}, 3000);
    $('.history .content ul li').eq(5).animate({'right':0, 'opacity' : 1}, 3500);
    $('.history .content .bar').animate({'opacity' : 1}, 1500);*/
});