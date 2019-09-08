<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package trainers
 */

get_header();
?>

<div class="cateqory__list d-flex flex-column align-items-center">
    <h3 class="cateqory__title">Kateqoriyalar uzre axtaris</h3>
    <div class="container">
            <div class="row">
            <?php
                $args = array('exclude' => [1, 9, 10, 11]);
                $terms = get_terms($args);
                if ($terms) {
                    foreach ($terms as $term): ?>
                                        <?php
                $image_id = get_term_meta($term->term_id, '_thumbnail_id', 1);
                    $image_url = wp_get_attachment_image_url($image_id, 'full');
                    ?>
                    <div class="category__item__wrap col-12 col-sm-6 col-md-4 col-lg-3">
                        <?php global $wp;?>
                        <a href="<?php echo home_url($wp->request) . '/categories/?slug=' . $term->slug ?>" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo $image_url ?>" alt="">
                            <h3 class="cateqory__name">
                                <span><?php echo $term->name ?></span>
                            </h3>
                        </a>
                    </div>
                <?php endforeach;
                }
            ?>
        </div>
    </div>
</div>
    <?php 
        $args = array("post_type" => "courses",
            'meta_query' => array(
            array(
                'key' => 'slider-place',
                'value' => 'main_slider',
                'compare' => '=='
            )));
            $the_query = new WP_Query( $args );
        ?>
        <?php if ( $the_query->have_posts() ) : ?>
    <div class="container">
        <div class="card__slider">
            <div class="card__list__header">
                <span class="card__list__title">En cox secilen Kurslar</span>
                <button class="btn">Kecid</button>
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
<!-- Content -->
<?php 
        $args = array("post_type" => "articles",
            'meta_query' => array(
            array(
                'key' => 'slider-place',
                'value' => 'main_slider',
                'compare' => '=='
            )));
            $the_query = new WP_Query( $args );
        ?>
        <?php if ( $the_query->have_posts() ) : ?>
    <div class="container">
        <div class="card__slider">
            <div class="card__list__header">
                <span class="card__list__title">En cox secilen Kurslar</span>
                <button class="btn">Kecid</button>
            </div>
            <div class="card__slide__prew"></div>
            <div class="card__slide__next"></div>
            <div class="card__slider__wrap">
                <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                <div class="card">
                    <div class="card__header">
                        <img class="card__img" src="<?php the_field("mini-img") ?>" alt="">
                    </div>
                    <div class="card__footer">
                        <div>
                            <a href="<?php the_permalink(); ?>" class="card__title"><?php the_title(); ?></a>
                        </div>
                        <div>
                    </div>
                </div>
                    
                <?php endwhile; ?>

                <?php wp_reset_postdata(); ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
<?php
get_footer();
