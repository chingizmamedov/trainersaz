<?php

$parse_uri = explode( 'wp-content', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-load.php' );

$args = array("post_type" => "courses");

// указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
$query = new WP_Query( $args ); 
if( $query->have_posts() ){
	while( $query->have_posts() ){
		$query->the_post();
		?>
		<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
		<?php the_content(); ?>
		<?php
	}
	wp_reset_postdata(); // сбрасываем переменную $post
} 
else
	echo 'Записей нет.';
?>
