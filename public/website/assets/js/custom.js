//HIDE HEADER ON SCROLL
/* var prevScrollpos = window.scrollY;
window.onscroll = function() {
var currentScrollPos = window.scrollY;
  if (prevScrollpos > currentScrollPos) {
    document.getElementsByClassName("fixed").style.top = "0";
  } else {
    document.getElementsByClassName("fixed").style.top = "-50px";
  }
  prevScrollpos = currentScrollPos;
} */


//slickslider
$(".slider-for").slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: true,
  fade: true,
  infinite: true,
  autoplay: false,
  asNavFor: ".slider-nav",
});
$(".slider-nav").slick({
  slidesToShow: 6,
  slidesToScroll: 1,
  asNavFor: ".slider-for",
  dots: false,
  infinite: false,
  centerMode: true,
  focusOnSelect: true,
  vertical: true,
});


//initiate the plugin and pass the id of the div containing gallery images
$('#example-1').elevateZoom();



// Fancybox Config
$('[data-fancybox="gallery"]').fancybox({
  buttons: [
    "slideShow",
    "thumbs",
    "fullScreen",
    "close"
  ],
  loop: false,
  protect: true
});

//MATCH HEIGHT
  $(document).ready(function(){
    $('.pricing-features').matchHeight();
})
$(document).ready(function(){
    $('.blog-post h2').matchHeight();
})

//MAIN SLIDER
$('.owl-carousel.sliders').owlCarousel({
    loop:true,
    margin:10,
    nav: false,
    dots: false, 
    autoplay: true,
    autoplayTimeout: 3500,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})

//BEST SELLINGS
$('.owl-carousel.best-selling-products').owlCarousel({
    loop:true,
    margin:10,
    nav: true,
    dots: false, 
    autoplay: true,
    autoplayTimeout: 3500,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:4
        }
    }
})

// FIXED NAVBAR
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".header-wrapper").addClass("fixed");
    } else {
        $(".header-wrapper").removeClass("fixed");
    }
});

//NAVLINK COLORS
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".nav-link").addClass("nav-color");
    } else {
        $(".nav-link").removeClass("nav-color");
    }
});

//MENU COLOR
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".nav-open").addClass("nav-color");
    } else {
        $(".nav-open").removeClass("nav-color");
    }
});

//BUTTON COLOR
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".nav-link.public-button").addClass("nav-color-white");
    } else {
        $(".nav-link.public-button").removeClass("nav-color-white");
    }
});

//ADD BG TO NAVBAR
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".logos").addClass("whitebg");
    } else {
        $(".logos").removeClass("whitebg");
    }
});

//NAVBAR IMAGE SIZE
document.addEventListener("scroll", function () {
    scrollHeight = window.pageYOffset;
    document.getElementsByClassName("logo1")[0].style.width = scrollHeight >= 120 ? "80px" : "";
}, false);


//CHANGE LOGO
//HIDE WHITE LOGO
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".logo1").addClass("d-none");
    } else {
        $(".logo1").removeClass("d-none");
    }
});
//SHOW BLACK LOGO
$(window).scroll(function () {
    if ($(this).scrollTop() > 120) {
        $(".logo2").addClass("d-block");
    } else {
        $(".logo2").removeClass("d-block");
    }
});

// ScrollToTop
mybutton = document.getElementById("myBtn");
window.onscroll = function () {
  scrollFunction();
};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}


//SIDENAV
function openNav() {
    document.getElementById("mySidenav").style.width = "190px";
    
  document.getElementById("navbar").style.display = "none";
  
  document.getElementById("navbar2").style.display = "block";
    
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
   
  document.getElementById("navbar").style.display = "block";
    
  document.getElementById("navbar2").style.display = "none";
  }




  //TESTIMONIALS
  // vars
'use strict'
var	testim = document.getElementById("testim"),
		testimDots = Array.prototype.slice.call(document.getElementById("testim-dots").children),
    testimContent = Array.prototype.slice.call(document.getElementById("testim-content").children),
    testimLeftArrow = document.getElementById("left-arrow"),
    testimRightArrow = document.getElementById("right-arrow"),
    testimSpeed = 4500,
    currentSlide = 0,
    currentActive = 0,
    testimTimer,
		touchStartPos,
		touchEndPos,
		touchPosDiff,
		ignoreTouch = 30;
;

window.onload = function() {

    // Testim Script
    function playSlide(slide) {
        for (var k = 0; k < testimDots.length; k++) {
            testimContent[k].classList.remove("active");
            testimContent[k].classList.remove("inactive");
            testimDots[k].classList.remove("active");
        }

        if (slide < 0) {
            slide = currentSlide = testimContent.length-1;
        }

        if (slide > testimContent.length - 1) {
            slide = currentSlide = 0;
        }

        if (currentActive != currentSlide) {
            testimContent[currentActive].classList.add("inactive");            
        }
        testimContent[slide].classList.add("active");
        testimDots[slide].classList.add("active");

        currentActive = currentSlide;
    
        clearTimeout(testimTimer);
        testimTimer = setTimeout(function() {
            playSlide(currentSlide += 1);
        }, testimSpeed)
    }

    testimLeftArrow.addEventListener("click", function() {
        playSlide(currentSlide -= 1);
    })

    testimRightArrow.addEventListener("click", function() {
        playSlide(currentSlide += 1);
    })    

    for (var l = 0; l < testimDots.length; l++) {
        testimDots[l].addEventListener("click", function() {
            playSlide(currentSlide = testimDots.indexOf(this));
        })
    }

    playSlide(currentSlide);

    // keyboard shortcuts
    document.addEventListener("keyup", function(e) {
        switch (e.keyCode) {
            case 37:
                testimLeftArrow.click();
                break;
                
            case 39:
                testimRightArrow.click();
                break;

            case 39:
                testimRightArrow.click();
                break;

            default:
                break;
        }
    })
		
		testim.addEventListener("touchstart", function(e) {
				touchStartPos = e.changedTouches[0].clientX;
		})
	
		testim.addEventListener("touchend", function(e) {
				touchEndPos = e.changedTouches[0].clientX;
			
				touchPosDiff = touchStartPos - touchEndPos;
			
				console.log(touchPosDiff);
				console.log(touchStartPos);	
				console.log(touchEndPos);	

			
				if (touchPosDiff > 0 + ignoreTouch) {
						testimLeftArrow.click();
				} else if (touchPosDiff < 0 - ignoreTouch) {
						testimRightArrow.click();
				} else {
					return;
				}
			
		})
}


