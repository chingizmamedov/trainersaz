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



get_footer();