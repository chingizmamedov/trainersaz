<?php get_header(); ?>
<?php the_post();?>
<div class="container">
    <div class="about__head">
      <img src="<?php the_field('scool-img');?>" alt="">
    </div>
    <div class="about__content">
      <h1 class="about__title"><?php the_title();?></h1>
      <p class="about__text"><?php the_content();?></p>
      <span><?php the_field('scool-address'); ?></span>
    </div>
</div>
<?php
$id = get_the_ID();
$idLEngth = strlen($id);
​
?>
      <?php 
					$args = array("post_type" => "courses",
						  'meta_query' => array(
                  array(
                    'key' => 'course-build',
										'value' => 'a:1:{i:0;s:'. $idLEngth .':"'. $id .'";}',
                    'compare' => '=='
                  )
                )
              );
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
                    <?php //var_dump($build[0]); ?>
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

<?php get_footer();