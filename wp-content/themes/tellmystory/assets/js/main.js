$(document).ready(function () {

  $('.down-arrow').on('click', function () {

    var fuller = $(this).closest('.fullscreen').next('.fullscreen'),
      section = $(this).closest('.section');

    section.animate({
      scrollTop: fuller.offset().top + 0
    }, 700);

  });

  /* * lightbox jquery plugin * */

  $('body').append(`
    <div class="lightbox">
      <a href="#lightbox" class="lightbox-close lightbox-toggle">X</a>
      <div class="lightbox-container">
        <div class="row">
          <div class="col-sm-12 lightbox-column">
            
          </div>
        </div>
      </div>
    </div>
  `);

  $('.lightbox-toggle').on('click', (event) => {
    event.preventDefault();
    $('.lightbox').fadeToggle('fast');

    let context = $(event.currentTarget).attr('data-lightbox-type');
    let content = $(event.currentTarget).attr('data-lightbox-content');
    console.log(event);
    if (context == 'video') {
      $('.lightbox-column').append(`
        <div class="lightbox-video">
        <iframe src="${content}" frameborder="0" allowfullscreen allow='autoplay'> </iframe>
        </div>
    `);
    } else if (context == 'image') {
      $('.lightbox-column').append(`
        <img src="${content}" class="img-" frameborder="0" allowfullscreen>
    `);
    }
  });

  $('.lightbox-close').on('click', (event) => {
    event.preventDefault();
    $('.lightbox-column > *').remove();
  });
  /* * lightbox jquery plugin end * */

  // banner arrow animation
  $(function () {
    $('a[href*=#]').on('click', function (e) {
      e.preventDefault();
      $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top }, 500, 'linear');
    });
  });




})

