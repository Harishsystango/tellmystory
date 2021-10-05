<?php
/**
 * Template Name: home Template
 * Template Post Type: post, page
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

get_header();
?>

<main id="site-content" role="main" class="home-page">


    <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); 
			
			?>


    <section class="parallex-wrapper">
        <section class="parallax" style="background: url(<?php echo $image[0]; ?>)">
            <a class="parallax-inner" href="#section02"><span></span></a>
        </section>
        <section class="detail-container" id="section02">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="detail-wrapper">
                            <h2 class="mb-34">
                                <?php echo get_field("detail_heading") ?>
                            </h2>
                            <p class="detail-containt">
                                <?php echo get_field("detail_content") ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>

    <section class="images-gallery">
        <div class="gallery">
		<?php
                if( have_rows('gallery_wrapper') ):
                    while( have_rows('gallery_wrapper') ) : the_row();
                    $link = get_sub_field('video_link');
                    $image = get_sub_field('poster');
                    ?>
			<div class="item">
				<a href="#lightbox" class="lightbox-toggle video"
					data-lightbox-type="video"
					data-lightbox-content=" <?php echo $link; ?>">
					<img class="img-fluid"
					src=" <?php echo $image; ?>" />
				</a>			
			</div>

			<?php
				endwhile;
				endif;
			?>	
        </div>
    </section>

    <section class="detail-container contact-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 offset-lg-4">
                    <div class="contact-inner">
                        <?php echo get_field("contact_form") ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span
                            aria-hidden="true">&times;</span></button>
                    <video controls>
                        <source src="" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
    </div> -->


</main><!-- #site-content -->

<?php
get_footer();