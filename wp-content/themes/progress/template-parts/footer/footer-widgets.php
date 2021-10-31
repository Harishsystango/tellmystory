<?php
/**
 * Displays the footer widget area.
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

if ( is_active_sidebar( 'sidebar-1' ) ) : ?>
	<aside class="widget-area">
		<?php dynamic_sidebar( 'sidebar-1' ); ?>
	</aside><!-- .widget-area -->
	<!-- #social icon -->
	<div class="socal-icon d-block d-md-none">
		<ul>
			<li><a href="#"><img src="<?php echo site_url(); ?>/wp-content/uploads/2021/10/instagram-sketched-1.png" class="img-fluid"></a></li>
			<li><a href="#"><img src="<?php echo site_url(); ?>/wp-content/uploads/2021/10/twitter-1.png" class="img-fluid"></a></li>
			<li><a href="#"><img src="<?php echo site_url(); ?>/wp-content/uploads/2021/10/facebook-1.png" class="img-fluid"></a></li>
			<li><a href="#"><img src="<?php echo site_url(); ?>/wp-content/uploads/2021/10/snapchat-1.png" class="img-fluid"></a></li>
			<li><a href="#"><img src="<?php echo site_url(); ?>/wp-content/uploads/2021/10/tumblr-1.png" class="img-fluid"></a></li>
		</ul>
	</div>
	<!-- #social icon end -->
	
<?php endif; ?>
