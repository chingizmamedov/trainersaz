<?php

$category = $_GET['cateqory'];

$parse_uri = explode( 'wp-content', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-load.php' );

$args = array("post_type" => "courses", 'tax_query' => array(
	array(
			'taxonomy' => 'categories',
			'field'    => 'slug',
			'terms' => $category
	)
	)
);

$the_query = new WP_Query( $args ); ?>
  
<?php if ( $the_query->have_posts() ) : ?>
		<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
		<?php $build = get_field("course-build"); ?>
		<?php $techer = get_field("curse-teacher");?>

			<div class="card__catalog__wrap col-12 col-sm-6 col-lg-4">
					<div class="card card__catalog">
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
				</div>
					
			<?php endwhile; ?>
			<!-- end of the loop -->
	
			<!-- pagination here -->
	
			<?php wp_reset_postdata(); ?>
<?php endif; ?>