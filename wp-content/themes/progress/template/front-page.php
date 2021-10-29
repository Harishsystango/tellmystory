<?php
/**
 * Template Name: Main Template
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
<section class="m-150">
    <div class="container-fluid">
        <div class="align-items-center row">
            <div class="col-md-6">
                <div class="image-wrapper">
                    <img class="img-fluid" src="<?php echo get_field("img_gallery")["url"] ?>">
                </div>
            </div>
            <div class="col-md-6">
                <div class="description-wrapper">
                    <p><?php echo get_field("description_para") ?></p>
                    <div class="btn-wrapper">
                    <?php 
                        $link = get_field('work_btn');
                        if( $link ): 
                            $link_url = $link['url'];
                            $link_title = $link['title'];
                            $link_target = $link['target'] ? $link['target'] : '_self';
                            ?>
                            <a class="btn btn-primary" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                        <?php endif; ?>

                        <?php 
                        $link = get_field('work-btn-outline');
                        if( $link ): 
                            $link_url = $link['url'];
                            $link_title = $link['title'];
                            $link_target = $link['target'] ? $link['target'] : '_self';
                            ?>
                            <a class="btn btn-border" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                        <?php endif; ?>
                        <!-- <a class=""><?php //echo get_field("work_btn") ?></a> -->
                        <!-- <a class="btn btn-border"><?php //echo get_field("work-btn-outline") ?></a> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="video-production">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3><?php echo get_field("video_production_heading") ?></h3>
            </div>
        </div>
    </div>
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

<section class="banner-wrapper footer-banner" style="background: url(<?php echo get_field("footer_banner")["url"] ?>)">
    <div class="banner-inner">
        <div class="container-fluid">
            <div class="row">
                <div class="banner-title-wrapper">
                <h3><?php echo get_field("footer_heading") ?></h3>
                        <p><?php echo get_field("footer_content") ?></p>
                        <h5><?php echo get_field("footer_note") ?></h5>                 
                </div>             
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>


