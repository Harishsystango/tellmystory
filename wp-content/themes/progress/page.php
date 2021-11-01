<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header();
$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); 
			
?>
<section class="banner-wrapper" style="background: url(<?php echo $image[0]; ?>)">
	<div class="banner-inner">
		<div class="container-fluid">
			<div class="row">
				<div class="banner-title-wrapper">
					<h3 class="banner-title"><?php echo the_title(); ?></h3>                    
				</div>             
			</div>
		</div>
	</div>
</section>

<section class="default-template mt-5">
	<div class="container">
		<div class="row">
			<?php

			/* Start the Loop */

			while ( have_posts() ) :
				the_post();
				get_template_part( 'template-parts/content/content-page' );

				// If comments are open or there is at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) {
					comments_template();
				}
			endwhile; // End of the loop.
			?>
						
			</div>
	</div>
</sction>

<?php get_footer(); ?>