<?php
/**
 * Template Name: Contact Template
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
                    <h3 class="banner-title"><?php the_title(); ?></h3>                    
                </div>             
            </div>
        </div>
    </div>
</section>


<section class="contact-page m-150">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <?php the_content(); ?>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>


