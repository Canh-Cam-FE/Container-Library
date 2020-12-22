//Check if windows size large then 1024 then these function will be execute
if ($(window).width() > 1024) {
	const $menu = $(".searchbox");
	$(document).mouseup(e => {
		if (
			!$menu.is(e.target) && // if the target of the click isn't the container...
			$menu.has(e.target).length === 0
		) {
			// ... nor a descendant of the container
			$menu.removeClass("active");
		}
	});
}

function height(el) {
	var height = 0;
	$(el).each(function () {
		var thisHeight = $(this).height();
		if (thisHeight > height) {
			height = thisHeight;
		}
		setTimeout(() => {
			$(el).height(height)
		}, 100)
	})
}

function swiperInit() {
	var homeTopSwiper = new Swiper(
		".home-swiper-banner-top-wrapper .swiper-container", {
			slidesPerView: 1,
			speed: 1200,
			effect: "fade",
			fadeEffect: {
				crossFade: true
			},
			autoplay: {
				delay: 2500
			},
			pagination: {
				el: ".swiper-pagination",
				clickable: true
			}
		}
	);
	var homePartnerSwiper = new Swiper(
		".home-partner-swiper-wrapper .swiper-container", {
			speed: 1200,

			breakpointsInverse: true,
			breakpoints: {
				// when window width is >= 320px
				320: {
					slidesPerView: 2,
					spaceBetween: 20
				},
				576: {
					slidesPerView: 3,
					spaceBetween: 20
				},
				768: {
					slidesPerView: 4,
					spaceBetween: 20
				},
				// when window width is >= 480px
				1025: {
					slidesPerView: 5,
					spaceBetween: 20
				},
				// when window width is >= 640px
				1441: {
					slidesPerView: 6,
					spaceBetween: 20
				}
			},
			navigation: {
				nextEl: ".home-partner-navigation-next",
				prevEl: ".home-partner-navigation-prev"
			},
			autoplay: {
				delay: 2500
			}
		}
	);
	var homePartnerSwiper2 = new Swiper(
		".home-partner-swiper-wrapper-2 .swiper-container", {
			speed: 1200,

			breakpointsInverse: true,
			breakpoints: {
				// when window width is >= 320px
				320: {
					slidesPerView: 2,
					spaceBetween: 20
				},
				576: {
					slidesPerView: 3,
					spaceBetween: 20
				},
				768: {
					slidesPerView: 4,
					spaceBetween: 20
				},
				// when window width is >= 480px
				1025: {
					slidesPerView: 5,
					spaceBetween: 20
				},
				// when window width is >= 640px
				1441: {
					slidesPerView: 6,
					spaceBetween: 20
				}
			},
			navigation: {
				nextEl: ".home-partner-navigation-next-2",
				prevEl: ".home-partner-navigation-prev-2"
			},
			autoplay: {
				delay: 2500
			}
		}
	);
	var homeGallery = new Swiper(".home-gallery .swiper-container", {
		slidesPerView: 1,
		speed: 1200,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		autoplay: {
			delay: 2500
		},
		pagination: {
			el: ".home-gallery-pagination",
			clickable: true
		}
	});
}

// Remove when click outside the circle

function mobileToggle() {
	$("header .mobile-toggle em").on("click", function () {
		$(".mobile-wrapper").toggleClass("active");
	});
}

function tabActive() {
	$(".tab-list-navigation li a").on("click", function () {
		$(this)
			.parents(".tab-list-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

function mappingMenu() {
	return new MappingListener({
		selector: ".header-wrapper-bottom",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".header-wrapper-top",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

function mappingSearch() {
	return new MappingListener({
		selector: ".search-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".mobile-toggle",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}

function mappingContact() {
	return new MappingListener({
		selector: ".contact-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}
let AboutNav = {
	clickToScroll: () => {
		$('.tvc-nav.about ul li, header .header-wrapper-bottom .about-on-scroll li').on('click', function () {
			$('.tvc-nav.about ul li, header .header-wrapper-bottom .about-on-scroll li').removeClass('active')
			$(this).addClass('active')
			let active = $(this).attr('data-nav')
			let offset = $('section[data-scroll=' + active + ']').offset().top - $('header').height() - $('.tvc-nav.about').height()
			$("html, body").animate({
				scrollTop: offset
			}, 1000);
		})
	},
	checkMenuScroll: () => {
		var scrollTop = $(window).scrollTop(),
			header = $('header').outerHeight(),
			offset = $('.tvc-nav.about').offset().top
		if (((offset - header) - scrollTop) <= 0) {
			$('.tvc-nav.about').addClass('active').css({
				"top": (header - 0) + "px"
			})
		} else {
			$('.tvc-nav.about').removeClass('active').removeAttr('style')
		}
	},
	scrollActive: () => {
		$('.tvc-nav.about ul li').each(function () {
			let active = $(this).attr('data-nav')
			let offset = $('section[data-scroll=' + active + ']').offset().top - $('header').height() - $('.tvc-nav.about').height() - 100
			if ($(window).scrollTop() >= offset) {
				$('.tvc-nav.about ul li').removeClass('active')
				$(this).addClass('active');
			}
		});
	},
	showNav: () => {
		$('.tvc-nav.about .nav-mobile').on('click', function () {
			$('.tvc-nav.about .nav-mobile').toggleClass('active')
			$('.tvc-nav.about .main-wrap').slideToggle()
		})
	},
	init: () => {
		if ($('.tvc-nav.about').length > 0) {
			AboutNav.scrollActive()
			AboutNav.clickToScroll()
		}
		AboutNav.showNav()
	}
}
let GalleryNavScroll = {
	checkMenuScroll: () => {
		var scrollTop = $(window).scrollTop(),
			header = $('header').outerHeight(),
			offset = $('.tvc-nav.gallery-tab .main-nav').offset().top
		if (((offset - header) - scrollTop) <= 0) {
			$('.tvc-nav.gallery-tab .main-nav').addClass('active').css({
				"top": (header - 0) + "px"
			})
		} else {
			$('.tvc-nav.gallery-tab .main-nav').removeClass('active').removeAttr('style')
		}
	}
}

function GalleryNav() {
	$('.gallery-tab .main-nav .item').on('click', function () {
		$('.gallery-tab .main-nav .item').removeClass('active')
		$(this).addClass('active')
		let indexTab = $(this).attr('data-tab')
		$('.gallery-tab .main-content .content-item').removeClass('active')
		$('.gallery-tab .main-content .content-item[data-content=' + indexTab + ']').addClass('active')
	})
}
$(document).on('scroll', function () {
	if ($('.tvc-nav.about').length > 0) {
		AboutNav.scrollActive()
		AboutNav.checkMenuScroll()
	}
	if ($('.tvc-nav.gallery-tab .main-nav').length > 0) {
		GalleryNavScroll.checkMenuScroll()
	}
})

function ShareNewsDetail() {
	$("#sharenews").jsSocials({
		showLabel: false,
		showCount: false,
		shares: [{
			share: "facebook",
			logo: "fab fa-facebook-f"
		}, {
			share: "twitter",
			logo: "fab fa-twitter"
		}]
	});
}

function ProjectDetailSlide() {
	var galleryThumbs = new Swiper('.tvc-project-detail .gallery-thumbs', {
		spaceBetween: 10,
		slidesPerView: 4,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
	});
	var galleryTop = new Swiper('.tvc-project-detail .gallery-top', {
		autoplay: {
			delay: 5000,
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});
}
function TabNews() {
    $('.tvc-news-2 .main-nav .item').on('click', function() {
        $('.tvc-news-2 .main-nav .item').removeClass('active')
        $(this).addClass('active')
        let indexTab = $(this).attr('data-tab')
        $('.tvc-news-2 .main-content .content-item').removeClass('active')
        $('.tvc-news-2 .main-content .content-item[data-content=' + indexTab + ']').addClass('active')
    })
}
function onScrollNewsDetailDeskTop() {
	var header = $('.news-detail-page header').height();
	var footer = $('footer').height();
	var windowSize = $(window).height();
	$(window).scroll(function() {
		var windowFull = $('body').height();
		var heightNewsDetail = $(window).scrollTop();
		var checkScrollBig = windowFull - heightNewsDetail;
		var checkFooter = footer + windowSize;
		if( heightNewsDetail  > header) {
			$('.tvc-news-detail-1').addClass('active')
			$('.tvc-news-detail-1 .scroll-on-desktop').addClass('active')
		}
		else{
			$('.tvc-news-detail-1').removeClass('active')
			$('.tvc-news-detail-1 .scroll-on-desktop').removeClass('active')
		}
		if(checkScrollBig <= checkFooter ){
			$('.tvc-news-detail-1').addClass('no-scroll')
		}
		else{
			$('.tvc-news-detail-1').removeClass('no-scroll')
		}
	});
}
$(document).ready(function () {
	//Declare normal variable javascript
	//Hide element when smaller than 1025
	if ($(window).width() < 1025) {
		$(".bottom-header").fadeIn(function () {
			$(".bottom-header").css({
				display: "flex"
			});
		});
	}
	//Toggle Search
	$(".search-toggle").on("click", function () {
		$(".searchbox").toggleClass("active");
	});
	//Library init
	$(".main-images").lightGallery({
		thumbnail: true,
	});
	//Declare function Javascript
	mobileToggle();
	swiperInit();
	tabActive();
	mappingMenu();
	mappingSearch();
	mappingContact();
	AboutNav.init();
	// GalleryNav();
	ShareNewsDetail();
	height('.tvc-news .news-small .figure-news');
	ProjectDetailSlide();
	TabNews();
	onScrollNewsDetailDeskTop()
	if ($(window).width() > 1024) {
		const $menu = $(".searchbox");
		$(document).mouseup(e => {
			if (
				!$menu.is(e.target) && // if the target of the click isn't the container...
				$menu.has(e.target).length === 0
			) {
				// ... nor a descendant of the container
				$menu.removeClass("active");
			}
		});
	}
	$('.home-project-complete-banner').appendTo('.main-banner-move')
});
