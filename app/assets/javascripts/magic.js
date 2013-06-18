// Funcion Carga Ajax

$.ajaxSetup({'beforeSend' : function(xhr) {
		if (xhr.overrideMimeType) {
			//FF & Chrome
			xhr.overrideMimeType('text/html; charset=UTF-8');
		}
	}
});

/* Funciones */
$(function(){
	$('#content').preloader();

// Slider noticias index

	photoPosNews = 0;
	photoCntNews = $('#header-inside .homeslider .content .ph').size();
	photoSizeNews = photoCntNews * 610;
 	$('#header-inside .homeslider .content').css('width', photoSizeNews);

 	if(photoCntNews>1){
	 	var myCounter = setInterval(function(){
		 	if(photoPosNews<photoCntNews-1){
			 	photoPosNews+=1;
			 	$('#header-inside .homeslider .content .ph').fadeOut(400, function(){
					$('#header-inside .homeslider .content .ph').eq(photoPosNews).show();
				});
			
		 	}else if(photoPosNews==photoCntNews-1){
			 	photoPosNews = 0;
			 	$('#header-inside .homeslider .content .ph').fadeOut(400, function(){
					$('#header-inside .homeslider .content .ph').eq(photoPosNews).show();
				});
		 	}
	 	}, 5000);
 	};
	
	$('.thumbox').off('click').on('click', function(event){
		photoPosNews = $(this).index();
		$('#header-inside .homeslider .content .ph').fadeOut(400, function(){
			$('#header-inside .homeslider .content .ph').eq(photoPosNews).show();
		});
		 clearInterval(myCounter);
	});



//VIEW MORE 
	$('.thumb').hover(
		function(){
			$(this).find('.over').fadeIn(300);
			$(this).find('.viewmore').fadeIn(300);
		},
		function(){
			$(this).find('.over').fadeOut(300);
			$(this).find('.viewmore').fadeOut(300);
		}
	);


// MENU DROP
	$('ul.dropdown').hover(
		function() {
			$(this).find('li').slideDown();
			$(this).find('.drop-inside').hide();
			$(this).find('.drop-inside-2').hide();
		},
		function(){
			$(this).find('li').hide();
			$(this).find('li.active').show();
		}
	);

// Drop inside
		$('li.active-inside').hover(
			function(){
				$(this).find('.drop-inside').slideDown();
			},
			function(){
				$(this).find('.drop-inside').hide();
			}
		);

		// Segundo nivel
		$('ul.dropdown .inside-1').hover(

			function(){
				$(this).find('.inside-1-li').slideDown();
			},
			function(){
				$(this).find('.inside-1-li').hide();
			}
		);


		$('ul.dropdown .inside-2').hover(

			function(){
				$(this).find('.inside-2-li').slideDown();
			},
			function(){
				$(this).find('.inside-2-li').hide();
			}
		);

// MEDIA
// Slider de fotos
		photoPos = 1;
		photoCnt = $('.fotos .container .ph').size();
		newsSize = photoCnt * 307;
		prev = $('.prev');
		next = $('.next');

		$('.fotos .container').css('width', newsSize);

		$('.prev').off('click').on('click', function(event){
			event.preventDefault();
			if (photoPos > 1){
				photoPos--;
				$('.fotos .container ').animate({"left": "+=307px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(photoPos, photoCnt, prev, next);
			}
		});
		$('.next').off('click').on('click', function(event){
			event.preventDefault();
			if (photoPos < photoCnt){
				photoPos++;
				$('.fotos .container').animate({"left": "-=307px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(photoPos, photoCnt, prev, next);
			}
		});
		sliderPosition(photoPos, photoCnt, prev, next);

		// Si hay solo una imagen ocultamos las flechas
		if(photoCnt==1){
			$('.next').hide();
			$('.prev').hide();
		}
		
		// Slider de fotos News Internas
		photoPos_News = 1;
		photoCnt_News = $('.phslider img').size();
		newsSize_News = photoCnt_News * 598;
		prevSlider = $('.prevslider');
		nextSlider = $('.nextslider');
		$('.phslider').css('width', newsSize_News);

		$('.prevslider').off('click').on('click', function(event){
			event.preventDefault();
			if (photoPos_News > 1){
				photoPos_News--;
				$('.phslider').animate({"left": "+=598px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(photoPos_News, photoCnt_News, prevSlider, nextSlider);
			}
		});
		$('.nextslider').off('click').on('click', function(event){
			event.preventDefault();
			if (photoPos_News < photoCnt_News){
				photoPos_News++;
				$('.phslider').animate({"left": "-=598px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(photoPos_News, photoCnt_News, prevSlider, nextSlider);
			}
		});
		sliderPosition(photoPos_News, photoCnt_News, prevSlider, nextSlider);

		// Si hay solo una imagen ocultamos las flechas
		if(photoCnt_News==1){
			$('.nextslider').hide();
			$('.prevslider').hide();
		}


		// CONTENIDO
		// Slider de fotos
		contPhotoPos = 1;
		contPhotoCnt = $('.slider-contenido .container .ph').size();
		contNewsSize = contPhotoCnt * 595;
		$('.slider-contenido .container').css('width', contNewsSize);
		prevContenido = $('.prevContenido');
		nextContenido = $('.nextContenido');


		$('.slider-contenido .prevContenido').off('click').on('click', function(event){
			event.preventDefault();
			if (contPhotoPos > 1){
				contPhotoPos--;
				$('.slider-contenido .container ').animate({"left": "+=595px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(contPhotoPos, contPhotoCnt, prevContenido, nextContenido);
			}
		});
		$('.slider-contenido .nextContenido').off('click').on('click', function(event){
			event.preventDefault();
			if (contPhotoPos < contPhotoCnt){
				contPhotoPos++;
				$('.slider-contenido .container').animate({"left": "-=595px"}, { duration: 500, easing: 'easeOutQuint' });
				sliderPosition(contPhotoPos, contPhotoCnt, prevContenido, nextContenido);
			}
		});
		sliderPosition(contPhotoPos, contPhotoCnt, prevContenido, nextContenido);

		// Si hay solo una imagen ocultamos las flechas
		if(contPhotoCnt==1){
			$('.slider-contenido .nextContenido').hide();
			$('.slider-contenido .prevContenido').hide();
		}

});

function sliderPosition(position, counter, prev, next){
	if(position==1){
		prev.hide();
		next.show();
	}else if(position==counter){
		prev.show();
		next.hide();
	}else{
		prev.show();
		next.show();
	}
}