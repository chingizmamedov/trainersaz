<?php
/*
Template Name: Каталог
*/
$roma = $_GET["slug"];

get_header();

if($roma) {
  //все
  $args = array("post_type" => "courses", 'tax_query' => array(
    array(
        'taxonomy' => 'categories',
        'field'    => 'slug',
        'terms' => $roma
    )));
} else {
  $args = array("post_type" => "courses");
}

?>
<div class="container">
  <div class="row flex-column align-items-center flex-sm-row align-items-sm-start">
          <div class="col-12 col-sm-3 filter">
            <div class="filter__item">
              <div class="dropdawn">
                <div class="dropdawn__btn">Kateqoriyalar</div>
                <div class="dropdawn__list">
                  <div class="dropdawn__list__item">Xarici diller</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                  <div class="dropdawn__list__item">Universitete hazirliq</div>
                  <div class="dropdawn__list__item">musiqi dersleri</div>
                  <div class="dropdawn__list__item">Saglamliq ve gozellik</div>
                  <div class="dropdawn__list__item">Idman</div>
                  <div class="dropdawn__list__item">Incesenet</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                </div>
              </div>
            </div>
            <div class="filter__item">
              <div class="dropdawn">
                <div class="dropdawn__btn">Kateqoriyalar</div>
                <div class="dropdawn__list">
                  <div class="dropdawn__list__item">Xarici diller</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                  <div class="dropdawn__list__item">Universitete hazirliq</div>
                  <div class="dropdawn__list__item">musiqi dersleri</div>
                  <div class="dropdawn__list__item">Saglamliq ve gozellik</div>
                  <div class="dropdawn__list__item">Idman</div>
                  <div class="dropdawn__list__item">Incesenet</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                </div>
              </div>
            </div>
            <div class="filter__item">
              <div class="dropdawn">
                <div class="dropdawn__btn">Kateqoriyalar</div>
                <div class="dropdawn__list">
                  <div class="dropdawn__list__item">Xarici diller</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                  <div class="dropdawn__list__item">Universitete hazirliq</div>
                  <div class="dropdawn__list__item">musiqi dersleri</div>
                  <div class="dropdawn__list__item">Saglamliq ve gozellik</div>
                  <div class="dropdawn__list__item">Idman</div>
                  <div class="dropdawn__list__item">Incesenet</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                </div>
              </div>
            </div>
            <div class="filter__item">
              <div class="dropdawn">
                <div class="dropdawn__btn">Kateqoriyalar</div>
                <div class="dropdawn__list">
                  <div class="dropdawn__list__item">Xarici diller</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                  <div class="dropdawn__list__item">Universitete hazirliq</div>
                  <div class="dropdawn__list__item">musiqi dersleri</div>
                  <div class="dropdawn__list__item">Saglamliq ve gozellik</div>
                  <div class="dropdawn__list__item">Idman</div>
                  <div class="dropdawn__list__item">Incesenet</div>
                  <div class="dropdawn__list__item">Bank isleri</div>
                </div>
              </div>
            </div>

          </div>
          <div class="col-12 col-sm-9">
            <div class="row catalog__list">
            <?php
  // the query
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
    
    <?php else : ?>
        <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
    <?php endif; ?>
    </div>
  </div>
</div>

<?php
get_footer();