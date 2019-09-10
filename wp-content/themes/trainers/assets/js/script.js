jQuery(function($) {

  $('.hamburger').click(function () {
    $(this).toggleClass('is-active');
    $('.mobile__menu__wrap').slideDown()
  })

  $('.mobile__menu__close').click(function () {
    $('.mobile__menu__wrap').slideUp()
    $('.hamburger').toggleClass('is-active');
  })

  $('.dropdawn__btn').click(function () {
    $(this).siblings().toggle()
  })

  $('.dropdawn__list__item').click(function () {
    var innerText = $(this).text()
    $(this).parent().siblings().html(innerText)
    $(this).parent().toggle()
  })

  $('.card__slider__wrap').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    prevArrow: $('.card__slide__prew'),
    nextArrow: $('.card__slide__next'),
    responsive: [{
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
          prevArrow: $('.card__slide__prew'),
          nextArrow: $('.card__slide__next'),
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });


  $(window).scroll(function () {
    var headerBotPos = $('.header__top').offset().top + $('.header__top').outerHeight() - $(window).scrollTop()

    if (headerBotPos < 0) {
      $(".header__bottom").css({
        position: 'fixed',
        top: '0'
      })
    }
    if (headerBotPos > 0) {
      $(".header__bottom").css({
        position: 'absolute',
        top: '60px'
      })
    }

  })

  function getData() {
    $.ajax({
        url : '/wp-content/themes/trainers/custom/filter.php',
        type: 'GET',
        success : function (data) {
          console.log(data)
        }
    })
  }

  setTimeout(function(){
    getData()
  }, 1000)





})