<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package trainers
 */

?>

	<?php wp_head(); ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.css">
		<link rel="stylesheet" href="./scss/index.scss">
		<?php wp_head(); ?>
    <title>Document</title>
<link href="main.css" rel="stylesheet"></head>
<body>
    <div class="mobile__menu__wrap">
        <div class="mobile__menu__close"></div>
        <div class="mobile__menu">
            <nav>
                <?php 
                    wp_nav_menu( [
                        'theme_location'  => 'mobile_menu',
                        'menu'            => 'Mobile menu',
                        'container'       => 'false',
                        'container_class' => '', 
                        'container_id'    => '',
                        'menu_class'      => 'd-flex mobile__menu__list', 
                        'menu_id'         => '',
                        'echo'            => true,
                        'fallback_cb'     => 'wp_page_menu',
                        'before'          => '',
                        'after'           => '',
                        'link_before'     => '',
                        'link_after'      => '',
                        'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
                        'depth'           => 0,
                        'walker'          => '',
                    ] );
                ?>
            </nav>
        </div>
    </div>
    <!-- Header -->
    <header class="header">
        <div class="header__top">
            <div class="header__top_container container">
            <div class="logo d-flex">
            <?php
            if( is_front_page()): ?>
                <img src="<?php echo get_template_directory_uri() ?>/assets/img/logo-white.svg" alt="">
                <span>Trainers.az</span>
            <?php else: ?>
                <a href="/" class="logo d-flex">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/img/logo-white.svg" alt="">
                    <span>Trainers.az</span>
                </a>

                
            <?php endif;?>  
            </div>
                              
                <div class="header__top_left">
                <?php 
                wp_nav_menu( [
                    'theme_location'  => 'header_top_menu',
                    'menu'            => 'Header top menu',
                    'container'       => 'false', 
                    'container_class' => '', 
                    'container_id'    => '',
                    'menu_class'      => 'menu', 
                    'menu_id'         => '',
                    'echo'            => true,
                    'fallback_cb'     => 'wp_page_menu',
                    'before'          => '',
                    'after'           => '',
                    'link_before'     => '',
                    'link_after'      => '',
                    'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
                    'depth'           => 0,
                    'walker'          => '',
                ] );
                ?>
                </div>
            </div>
            
        </div>
        <div class="header__bottom">
            <div class="header__bottom_wrap">
                <div class="header__bottom_container container d-flex">
                    <button class="d-md-none hamburger hamburger--collapse" type="button">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                    <nav class="navigation">
                        <?php 
                            wp_nav_menu( [
                                'theme_location'  => 'header_bottom_menu',
                                'menu'            => 'Header bottom menu',
                                'container'       => 'false',
                                'container_class' => '', 
                                'container_id'    => '',
                                'menu_class'      => 'd-flex main-menu', 
                                'menu_id'         => '',
                                'echo'            => true,
                                'fallback_cb'     => 'wp_page_menu',
                                'before'          => '',
                                'after'           => '',
                                'link_before'     => '',
                                'link_after'      => '',
                                'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
                                'depth'           => 0,
                                'walker'          => '',
                            ] );
                        ?>
                    </nav>
                    <div class="search">
                        <input type="text" class="search__input" placeholder="Katalog uzre axtaris">
                    </div>
                </div>
            </div>            
            <div class="search__list__wrap">
                <div class="preloader-svg" style="overflow: hidden; display: flex;">
                    
                </div>
                <div class="search__list">
                    
                </div>
            </div>       
        </div>
		</header>
		<?php
			if( is_front_page() ):
	 	?><div id="page container">
					<div class="main-slider">
							<div class="main-slider__item">
									<img class="main-slider__img" src="<?php echo get_template_directory_uri() ?>/assets/img/main-bg.jpg" alt="">
									<div class="main-slider__item__content">
											<p class="main-slider__title">Kurslari birlesdiren mekan Kimi bir yer ola biler</p>
											<p class="main-slider__subtitle">Suka blya takaya yobana blya</p>
									</div>
							</div>
					</div>
		<?php	else: ?>
							<!-- BreadCrumb -->
						<div class="container">
								<div class="beadcrumb">
										<a class="beadcrumb__item" href="#">Esas sehife</a>
										<a class="beadcrumb__item" href="#">haqqimizda</a>
								</div>
						</div>
						<!-- BreadCrumb -->
						<div id="page container" class="container">
							<?php endif; ?>