<?php
/**
 * Template Name: Gallery Template
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
                    <h3 class="banner-title"><?php the_title() ?></h3>                    
                </div>             
            </div>
        </div>
    </div>
</section>


<?php $loop = new WP_Query( array( 'post_type' => 'Blog', 'posts_per_page' => -1 ) ); ?>
<section class="reel-wrapper m-150" id="lightbox">
    <div class="reel-inner container">
        <?php while ( $loop->have_posts() ) : $loop->the_post(); 
            if ( has_post_thumbnail() ) {
                if(get_field("gallery") == 'video'){
                    $data_link = get_field("video");
                }else {
                    $data_link = get_field("image");
                }
            ?>
                <img class="lightboxed img-fluid" rel="group1" src="<?php echo (the_post_thumbnail_url('full'));?>" 
                data-link="<?php echo ($data_link["url"]);?>" alt="Image Alt" data-caption="Image Caption" />
                
        <?php
        }
        endwhile; ?>
	</div>
</section>  


<?php get_footer(); ?>


