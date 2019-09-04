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
                    $args = array('exclude' => 1);
                    $terms = get_terms( $args );
                    if($terms) {
                        foreach($terms as $term): ?>
                        <?php
                            $image_id = get_term_meta( $term->term_id, '_thumbnail_id', 1 );
                            $image_url = wp_get_attachment_image_url( $image_id, 'full' );
                        ?>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                                <?php global $wp; ?>
                                <a href="<?php echo home_url( $wp->request ) . '/categories/?slug=' . $term->slug ?>" class="cateqory__item">
                                    <img class="cateqory__img" src="<?php echo $image_url ?>" alt="">
                                    <h3 class="cateqory__name">
                                        <span><?php echo $term->name ?></span>
                                    </h3>
                                </a>
                            </div>
                        <?php endforeach;
                    }
                ?>
                    <!-- <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                        <a href="#" class="cateqory__item">
                            <img class="cateqory__img" src="<?php echo get_template_directory_uri() ?>/assets/img/cateqory-bg.jpg" alt="">
                            <h3 class="cateqory__name">
                                <span>Xarici diller</span>
                            </h3>
                        </a>
                    </div> -->
                </div>
            </div>
        </div>
        <h1>Slider sinaq</h1>
        <?php $events = get_posts(array(
                            'post_type' => 'courses',
                            'meta_query' => array(
                                array(
                                    'key' => 'slider-place', 
                                    'value' => 'слайд на главной', 
                                    'compare' => 'LIKE'
                                )
                            )
                        ));
 
                        ?>
        <?php if( $events ): ?>
            <ul>
            <?php foreach( $events as $event ): ?>
                <li>
                    <a href="<?php echo get_permalink( $event->ID ); ?>">
                        
                        <?php echo get_the_title( $event->ID ); ?>
                    </a>
                </li>
            <?php endforeach; ?>
            </ul>
        <?php endif; ?>
        <div class="container">
            <div class="card__slider">
                <div class="card__list__header">
                    <span class="card__list__title">En cox secilen muellimler</span>
                    <button class="btn">Kecid</button>
                </div>
                <div class="card__slide__prew"></div>
                <div class="card__slide__next"></div>
                <div class="card__slider__wrap">
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card__slider">
                <div class="card__list__header">
                    <span class="card__list__title">En cox secilen Kurslar</span>
                    <button class="btn">Kecid</button>
                </div>
                <div class="card__slide__prew"></div>
                <div class="card__slide__next"></div>
                <div class="card__slider__wrap">
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                    <a href="#" class="card">
                        <div class="card__header">
                            <img class="card__img" src="<?php echo get_template_directory_uri() ?>/assets/img/enshteyn.jpg" alt="">
                        </div>
                        <div class="card__footer">
                            <p class="card__title">Albert Ensteyn</p>
                            <p class="card__subtitle">Universal muellim</p>
                            <div class="card__widget">
                                <span class="card__badge">70 AZN</span>
                                <span class="card__badge">1 ay, 18 saat</span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        
    </div>
    <!-- Content -->

<?php
get_footer();
