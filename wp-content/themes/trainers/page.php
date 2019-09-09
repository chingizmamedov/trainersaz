<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package trainers
 */

get_header();
?>
<?php
		while ( have_posts() ) :
			the_post();
			?>
			<div class="container nopadding">
			<?php if(get_field("image-for-pages")): ?>
				<div class="about__head">
					<img src="<?php the_field("image-for-pages"); ?>" alt="">
				</div>
		<?php endif; ?>
			<div class="about__content">
				<h1 class="about__title"><?php the_title(); ?></h1>
				<p class="about__text"><?php echo get_the_content(); ?></p>
			</div>
			<?php
					$post_id = get_the_ID();
					if ($post_id == "95"): ?>
			<h2 class="about__subtitle">Elaqe</h2>
			<div class="about__info d-inline-flex flex-column align-items-start">
					<a class="about__info__tel about__info__item" href="tel:<?php $num = get_field("phone"); $regArr = ['(', ')', '-', ' ']; $outputTel = str_replace($regArr, '', $num); echo $outputTel;?>"><?php the_field("phone"); ?></a>
					<a class="about__info__mail about__info__item" href="#"><?php the_field("mail_addres"); ?></a>
					<span class="about__info__clock about__info__item"><?php the_field("start-work-time"); ?> : <?php the_field("end-work-time"); ?></span>
			</div>
			<address class="about__address"><span>Unvan:</span> Azerbaijan, EhmedAga kuc., ev 23</address>
			<div class="container">
					<div class="row">
							<div class="col-12 col-md-7 nopadding map-wrap">
							<div id="map"></div>
							</div>
							<div class="col-12 col-md-5 justify-content-center d-flex">
									<div class="about__form">
									
											<div class="about__form__header">
													<span class="about__form__title">Kursunuzu insanlara catdirmaq
															isteryirsiniz?</span>
													<span class="about__form__subtitle">Bizimle elaqe saxlayin, biz size komek ederik!...</span>
											</div>
												<?php echo do_shortcode( '[contact-form-7 id="114" title="Contact form 1" html_class="about__form__body d-flex"]' ); ?>
										</div>
									</div>
							</div>
					</div>
			</div>

			<?php
			endif;
			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>
	</div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCRV1bAttcfhchzGmawn3m_UbXd3Mi72o&callback=initMap"
    async defer></script>
<?php
get_footer();
