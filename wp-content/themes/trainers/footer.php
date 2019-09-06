<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package trainers
 */


?>
</div>
  <!-- Content -->
    <!-- footer -->
    <footer class="footer">
      <div class="container">
          <div class="row footer__row">
              <div class="footer__item col-12 mb-2 col-sm-6 col-lg-3">
                  <h3 class="footer__title">Menu</h3>
                  <nav>
                      <ul>
                          <li><a class="footer__link" href="#">Telimler</a></li>
                          <li><a class="footer__link" href="#">Telimciler</a></li>
                          <li><a class="footer__link" href="#">Meqaleler</a></li>
                          <li><a class="footer__link" href="#">Haqqimizda</a></li>
                      </ul>
                  </nav>
              </div>
              <div class="footer__item col-12 mb-2 col-sm-6 col-lg-3">
                  <h3 class="footer__title">Sirket haqda</h3>
                  <nav>
                      <ul>
                          <li><a class="footer__link" href="#">Melumat tehlukesizliyi</a></li>
                          <li><a class="footer__link" href="#">FAG</a></li>
                          <li><a class="footer__link" href="#">Meqaleler</a></li>
                          <li><a class="footer__link" href="#">Haqqimizda</a></li>
                      </ul>
                  </nav>
              </div>
              <div class="footer__item col-12 mb-2 col-sm-6 col-lg-3">
                  <h3 class="footer__title">Elaqe</h3>
                  <nav>
                      <ul>
                          <li><a class="footer__link footer__link__info footer__tel" href="#">+994(55) 365-55-55</a></li>
                          <li><a class="footer__link footer__link__info footer__mail" href="#">info@trainers.az</a></li>
                          <li><span class="footer__link footer__link__info footer__clock">8:00 - 20:00</span></li>
                      </ul>
                  </nav>
              </div>
              <div class="footer__item col-12 mb-2 col-sm-6 col-lg-3">
                  <h3 class="footer__title">Rassilka</h3>
                  <span class="footer__link">Yeni xeberler ucun mail unvaninizi saxlayin</span>
                  <form action="#" class="d-flex footer__form">
                      <input type="email" class="footer__input" placeholder="Email unvaninizi elave edin">
                      <button class="btn footer__btn"></button>
                  </form>
              </div>
          </div>
      </div>
  </footer>
  <div class="footer__bottom">
      <div class="container">
          <span>© Butun haqlar qorunur Trainer.az 2019</span>
      </div>
    </div>
<?php
wp_footer();
?>
</body>
  <!-- footer -->
</html>