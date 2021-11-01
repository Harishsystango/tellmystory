<?php
/**
 * Template Name: what we do Template
 * Template Post Type: post, page
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since wenty Twenty-One 1.0
 */
get_header();

?>


<?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); 
			
?>

<section class="banner-wrapper" style="background: url(<?php echo $image[0]; ?>)">
    <div class="banner-inner">
        <div class="container-fluid">
            <div class="row">
                <div class="banner-title-wrapper">
                    <h3 class="banner-title"><?php echo get_field("video_production_heading") ?></h3>                    
                </div>             
            </div>
        </div>
    </div>
</section>

<section class="video-production m-150">
    <div class="container-fluid">
        <div class="row mt-5">
            <?php
                if( have_rows('production_wrapper') ):
                    while( have_rows('production_wrapper') ) : the_row();
                    $heading = get_sub_field('production_heading');
                    $content = get_sub_field('production_content');
                    $image = get_sub_field('production_image')["url"];
                    ?>
                        <div class="production-wrapper">
                            <div class="white-box">
                                <h5><?php echo $heading; ?></h5>
                                <p><?php echo $content; ?></p>
                            </div>                
                            <div class="img-wrapper">
                                <img class="img-fluid w-100" src="<?php echo $image ?>">
                            </div>
                        </div>	
                    <?php
                endwhile;
                endif;
            ?>                
        </div>
    </div>
</section>
<?php get_footer(); ?>


