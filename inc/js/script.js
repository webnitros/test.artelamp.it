function menuBars(){
	$('.c-hamburger').click(function(e){
		e.preventDefault();
		$('.c-hamburger').toggleClass('is-active');
		$('.b2').toggleClass('active');
	});
}

function pointMainMenu(){

	var er2 = $('.main_menu>ul>li.open').length;
	if(er2){
		var c2 = $('.main_menu>ul>li.open').width();
		var d2 = $('.main_menu>ul>li.open').offset().left;
		$('.header_menu_point .ic').css('left', d2+(+c2/2));
	}
	$('.main_menu>ul>li').mouseenter(function(){
		$('.header_menu_point .ic').addClass('active');
		var a = $(this).offset().left;
		var b = $(this).width();
		$('.header_menu_point .ic').css('left', a+(+b/2));
	});

	$('.main_menu').mouseleave(function(){
		var er = $('.main_menu>ul>li.open').length;
		if(er){
			var c = $('.main_menu>ul>li.open').width();
			var d = $('.main_menu>ul>li.open').offset().left;
			$('.header_menu_point .ic').css('left', d+(+c/2));
		}
		else{
			$('.header_menu_point .ic').removeClass('active');
		}
	});
}

function fixHeader(){
	$(window).scroll(function(){
		pointMainMenu();
		var a = $('.header').height();
		if($(this).scrollTop()>a){
			$('.header_menu_point .ic').removeAttr('style');
			$('body').addClass('fix');
		}else{
			$('body').removeClass('fix');
		}
		if($(this).scrollTop()>a){
			$('body').addClass('topright');
		}else{
			$('body').removeClass('topright');
		}
	});
}

function fixHeaderSearch(){
	$('.js_btn_open').click(function(){
		$('.header_search_controll').addClass('active');
	});
	$('.btn_close_search').click(function(){
		$('.header_search_controll').removeClass('active');
	});
	// $(document).mouseup(function (e){ // событие клика по веб-документу
	// 	var div = $(".header_search_controll"); // тут указываем ID элемента
	// 	if (!div.is(e.target) // если клик был не по нашему блоку
	// 	    && div.has(e.target).length === 0) { // и не по его дочерним элементам
	// 		$('.header_search_controll').removeClass('active'); // скрываем его
	// 	}
	// });
}

function menuPopup(){
	$('.main_menu>ul>li>a').mouseenter(function(){
		$('.main_menu>ul>li>.plate').removeClass('active');
		$(this).closest('li').find('.plate').addClass('active');
	});

	$('.main_menu').mouseleave(function(){
		$('.main_menu>ul>li>.plate').removeClass('active');
	});
}

function listingSelects(){
	$('.listing_filters_units .the_select').niceSelect();
}

function listingFiltersListOpen(){
	$('.listing_filters_units .js_btn').click(function(){
		$(this).closest('.unit').find('.the_list').slideToggle(300);
		$(this).toggleClass('active');
	});
}

function polzunFiltersCatalog(){
		var stepsSlider = document.getElementById('slider-value');
		var input0 = document.getElementById('input0');
		var input1 = document.getElementById('input1');
		var inputs = [input0, input1];
		var min = parseInt($('#slider-value').attr('data-min'));
		var max = parseInt($('#slider-value').attr('data-max'));
		var minval = parseInt($('#slider-value').attr('data-minval'));
		var maxval = parseInt($('#slider-value').attr('data-maxval'));

		noUiSlider.create(stepsSlider, {
		start: [min, max],
		connect: true,
		range: {
		'min': minval,
		'max': maxval
		  }
		});

		stepsSlider.noUiSlider.on('update', function (values, handle) {
			inputs[handle].value = values[handle];
		});

		inputs.forEach(function (input, handle) {

	input.addEventListener('change', function () {
		stepsSlider.noUiSlider.setHandle(handle, this.value);
	});

	input.addEventListener('keydown', function (e) {

		var values = stepsSlider.noUiSlider.get();
		var value = Number(values[handle]);

		// [[handle0_down, handle0_up], [handle1_down, handle1_up]]
		var steps = stepsSlider.noUiSlider.steps();

		// [down, up]
		var step = steps[handle];

		var position;

		// 13 is enter,
		// 38 is key up,
		// 40 is key down.
		switch (e.which) {

			case 13:
				stepsSlider.noUiSlider.setHandle(handle, this.value);
				break;

			case 38:

				// Get step to go increase slider value (up)
				position = step[1];

				// false = no step is set
				if (position === false) {
					position = 1;
				}

				// null = edge of slider
				if (position !== null) {
					stepsSlider.noUiSlider.setHandle(handle, value + position);
				}

				break;

			case 40:

				position = step[0];

				if (position === false) {
					position = 1;
				}

				if (position !== null) {
					stepsSlider.noUiSlider.setHandle(handle, value - position);
				}

				break;
				}
			});
		});
}

function listFilterClean(){

	var a = $('.listing_filters_units').offset().left;
	var w = $('.listing_filters_units').width();
	var b = +a-0;
	var a2 = $('.listing_filters').offset().top;
	var a3 = $('.listing_filters').height();
	$('.clean_filters').css({'left': b-20, 'width': w+39});
	$(window).scroll(function(){
		var g2 = $('.listing .dflex').height();
		var g1 = $('.listing .dflex').offset().top;
		var g3 = +g2 - g1 - 130;
		if ($(this).scrollTop() > g3) {
			$('.clean_filters').addClass('active');
		}else{
			$('.clean_filters').removeClass('active');
		};
	});
}

function selectCustom(){
	$('.top_filter_menu_select select').niceSelect();
	$('.val_goods_select').niceSelect();
	var c = $('.option_select select option').length;
	for(var i = 1; i <= c; i++){
		var b = $('.option_select select option:nth-child('+ i +')').attr('data-ic');
		$('.nice-select.option_select .list .option:nth-child('+ i +')').attr('data-ic', b);
	}
	var cur = $('.option_select select option:nth-child('+ 1 +')').attr('data-ic');
	$('.top_filter_menu_select .nice-select .current').attr('data-ic', cur);
	$('.nice-select.option_select .list .option').mouseup(function(){
		var ic = $(this).attr('data-ic');
		$(this).closest('.nice-select').find('.current').attr('data-ic', ic);
	});
}

function selectCustom2(){
	$('.listing_filters_units_headline select').niceSelect();
	var c = $('.option_select2 select option').length;
	for(var i = 1; i <= c; i++){
		var b = $('.option_select2 select option:nth-child('+ i +')').attr('data-ic');
		$('.option_select2 .nice-select .list .option:nth-child('+ i +')').attr('data-ic', b);
		console.log(b);
	}
	var cur = $('.option_select2 select option:nth-child('+ 1 +')').attr('data-ic');
	$('.top_filter_menu_select .nice-select .current').attr('data-ic', cur);
	$('.option_select2 .nice-select .list .option').mouseup(function(){
		var ic = $(this).attr('data-ic');
		$(this).closest('.nice-select').find('.current').attr('data-ic', ic);
	});
}

function readMore(){
	$('.listing_content_catalog_units .unit').slice(0,6).show();
	$('.listing_content_catalog_units .more_units .js_btn').click(function(){
		$('.listing_content_catalog_units .unit:hidden').slice(0,6).show();
	});
}

function sliders(){
	var swiper = new Swiper('.lastlook_slider .swiper-container', {
  // Default parameters
	  slidesPerView: 1,
	  spaceBetween: 10,
	  speed: 1000,
	  // Responsive breakpoints
	  navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
	  breakpoints: {
	    // when window width is >= 320px
	    320: {
	      slidesPerView: 1,
	      spaceBetween: 10
	    },
	    450: {
	      slidesPerView: 1.5,
	      spaceBetween: 10
	    },
	    600: {
	      slidesPerView: 2,
	      spaceBetween: 20
	    },
	    // when window width is >= 480px
	    // when window width is >= 640px
	    1280: {
	      slidesPerView: 3,
	      spaceBetween: 20
	    }
	  }
	})
}

function mainFiltersMobileOpener(){
	$('.listing_content_filter .js_open_filter_mobile').click(function(){
		$('.listing_filters').show();
	});
	$('.listing_filters_units_headline .the_close').click(function(){
		$('.listing_filters').hide();
	});
}


$(document).ready(function() {

	selectCustom2();
	////////listFilterClean();
	menuBars();
	pointMainMenu();
	fixHeader();
	fixHeaderSearch();
	menuPopup();
	listingSelects();
	listingFiltersListOpen();
	////////polzunFiltersCatalog();
	selectCustom();
	//readMore();
	sliders();
	mainFiltersMobileOpener();

	$(".the_list_scroll").mCustomScrollbar({
		axis:"y"
	});

});