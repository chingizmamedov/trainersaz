<?php

$searchStr = $_GET['searchStr'];

$parse_uri = explode( 'wp-content', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-load.php' );

$args = array("post_type" => array('courses','scool','articles', 'teachers'),
's' => $searchStr);

$the_query = new WP_Query( $args );?>
  
<?php if ( $the_query->have_posts() ) : ?>
    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); 
    $img = get_field("img"); ?>

      <div class="search__item">
      <img style="width: 40px; height: 40px;" src="<?php if($img != NULL ) {
       echo $img;
      } else {
        echo get_template_directory_uri(). '/assets/img/noimage.png';
      } 
      ?>" alt="">
        <a href="<?php the_permalink();?>"><?php the_title(); ?></a>
      </div>
		
					
		<?php endwhile; ?>
			<!-- end of the loop -->
	
			<!-- pagination here -->
	
			<?php wp_reset_postdata(); ?>
<?php endif; ?>