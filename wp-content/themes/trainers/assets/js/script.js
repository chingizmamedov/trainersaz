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

  function getData(cateqory) {
    $.ajax({
        url : '/wp-content/themes/trainers/custom/filter.php',
        type: 'GET',
        data: {
          cateqory: cateqory
        },
        success : function (data) {
          console.log(data)
          if(data.trim() == '') {
            $(".catalog__list").html('Tessufler bele kurs yoxdur')
            return
          }
          $(".catalog__list").html(data)
        }
    })
  }

  // setTimeout(function(){
  //   getData()
  // }, 1000)

  $(".dropdawn__list__item").click(function(){
    var preloader = '<div class="preloader-svg" style="overflow: hidden; display: flex;"><svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve"><circle fill="#fff" stroke="none" cx="6" cy="50" r="6" transform="translate(0 -1.20954)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 15 ; 0 -15; 0 15" repeatCount="indefinite" begin="0.1"></animateTransform></circle><circle fill="#fff" stroke="none" cx="30" cy="50" r="6" transform="translate(0 3.19364)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 10 ; 0 -10; 0 10" repeatCount="indefinite" begin="0.2"></animateTransform></circle><circle fill="#fff" stroke="none" cx="54" cy="50" r="6" transform="translate(0 3.59682)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 5 ; 0 -5; 0 5" repeatCount="indefinite" begin="0.3"></animateTransform></circle></svg></div>'
    $(".catalog__list").html(preloader)
    var catData = $(this).attr('data-cat')
    getData(catData)
  })

  // search input

  $('.search__input').on("input", function(){
    var preloader = '<svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve"><circle fill="#fff" stroke="none" cx="6" cy="50" r="6" transform="translate(0 -1.20954)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 15 ; 0 -15; 0 15" repeatCount="indefinite" begin="0.1"></animateTransform></circle><circle fill="#fff" stroke="none" cx="30" cy="50" r="6" transform="translate(0 3.19364)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 10 ; 0 -10; 0 10" repeatCount="indefinite" begin="0.2"></animateTransform></circle><circle fill="#fff" stroke="none" cx="54" cy="50" r="6" transform="translate(0 3.59682)"><animateTransform attributeName="transform" dur="1s" type="translate" values="0 5 ; 0 -5; 0 5" repeatCount="indefinite" begin="0.3"></animateTransform></circle></svg>'
    var inputVal = $(this).val()
    console.log(inputVal.length)
    
    if(inputVal.length > 2) {
      $(".preloader-svg").html(preloader)
      setTimeout(function(){
        $(".preloader-svg").html("")
      }, 1000)
      $(".search__list__wrap").css({
        top: '60px'
      })
      $.ajax({
        url : '/wp-content/themes/trainers/custom/search.php',
        type: 'GET',
        data: {
          searchStr: inputVal
        },
        success : function (data) {
          $(".search__list").html("")
          console.log(data)
          if(data.trim() == '') {
            $(".search__list").html('Tessufler hecne tapilmadi')
            return
          }
          $(".search__list").html(data)
        }
    })

    }
    if(inputVal.length < 3) {
      $(".preloader-svg").html("")
      $(".search__list__wrap").css({
        top: '0'
      })
      $(".search__list").html("")
    }


  })



})