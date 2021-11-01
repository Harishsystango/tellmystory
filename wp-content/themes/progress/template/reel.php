<?php
/**
 * Template Name: Reel Template
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
                    <h3 class="banner-title"><?php echo get_field("banner_heading") ?></h3>                    
                </div>             
            </div>
        </div>
    </div>
</section>
<section class="reel-page m-150">
    <div class="container-fluid">
        <div class="row mt-5">
        <div class="reel-wrapper">
            <?php
                if( have_rows('reel_wrapper') ):
                    while( have_rows('reel_wrapper') ) : the_row();
                    if(get_sub_field("radio") == 'link'){
                        $data_link = get_sub_field("link")["url"];
                    }else {
                        $data_link = get_sub_field("image")["url"];
                    }
                    $image = get_sub_field('display_image')["url"];
                    ?>
                       
                                <img class="lightboxed img-fluid" rel="group1" src="<?php echo $image;?>" 
                data-link="<?php echo ($data_link);?>" alt="Image Alt" data-caption="Image Caption" />
                           	
                    <?php
                endwhile;
                endif;
            ?>  
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>


