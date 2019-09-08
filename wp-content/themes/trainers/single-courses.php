<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package trainers
 */
/*

*/
get_header();
?>
<div class="row">
	<div class="teacher__container container d-flex">
		<?php the_post(); ?>
			<div class="teacher__ava col-12 col-md-3 nopadding">
					<img src="<?php the_field("course-img") ?>" alt="">
			</div>
			<div class="teacher__info col-12 col-md-9">
					<h1 class="teacher__name"><?php the_title(); ?></h1>
					<div class="skills d-flex align-items-center">
							<h2 class="skills__name">Kursun giymeti:</h2>
							<span class="skills__item"><?php the_field("price"); ?> AZN</span>
					</div>
					<br>
					<div class="biography">
							<div class="biography__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique fusce dui dolor morbi tempor eget lectus. Vitae gravida ipsum lectus quis. Metus, euismod amet nisl, pharetra sem ipsum. Diam elementum faucibus amet iaculis felis, faucibus rhoncus senectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique fusce dui dolor morbi tempor eget lectus. Vitae gravida ipsum lectus quis. Metus, euismod amet nisl, pharetra sem ipsum. Diam elementum faucibus amet iaculis felis, faucibus rhoncus senectus.</div>
					</div>
			</div>
	</div>
</div>
				<?php 
					$args = array("post_type" => "courses",
							'meta_query' => array(
							array(
									'key' => 'slider-place',
									'value' => 'cotegory_slider',
									'compare' => '=='
							)));
							$the_query = new WP_Query( $args );
        ?>
        <?php if ( $the_query->have_posts() ) : ?>
<div class="container">
		<div class="card__slider">
				<div class="card__list__header">
						<span class="card__list__title">En cox secilen Kurslar</span>
				</div>
				<div class="card__slide__prew"></div>
				<div class="card__slide__next"></div>
				<div class="card__slider__wrap">
						<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
						<?php $build = get_field("course-build"); ?>
						<?php $techer = get_field("curse-teacher");?>
						<div class="card">
								<div class="card__header">
										<img class="card__img" src="<?php the_field("course-img") ?>" alt="">
								</div>
								<div class="card__footer">
										<div>
												<a href="<?php the_permalink(); ?>" class="card__title"><?php the_title(); ?></a>
										</div>
										<div>
										<?php if($build[0]): ?>
												<div>
														<span>Telim merkezi</span>
														<a href="<?php echo $build[0]->guid; ?>" class="card__course"><?php echo $build[0]->post_title; ?></a>
												</div>
										<?php endif; ?>
										<span>Telimci:</span>
												<a href="<?php echo $techer[0]->guid; ?>" class="card__subtitle"><?php echo $techer[0]->post_title; ?></a>
										</div>
										
										<div class="card__widget">
												<span class="card__badge"><?php the_field("price") ?> AZN</span>
												<span class="card__badge">1 ay, 18 saat</span>
										</div>
								</div>
						</div>
								
						<?php endwhile; ?>

						<?php wp_reset_postdata(); ?>
						<?php endif; ?>
				</div>
		</div>
</div>






	<?php get_footer(); ?>