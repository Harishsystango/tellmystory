<?php
/**
 * Displays the site navigation.
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>

<?php if ( has_nav_menu( 'primary' ) ) : ?>
	<nav id="site-navigation" class="primary-navigation" role="navigation" aria-label="<?php esc_attr_e( 'Primary menu', 'twentytwentyone' ); ?>">
		<div class="menu-button-container">
			<button id="primary-mobile-menu" class="button"
			data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation" aria-controls="primary-menu-list" aria-expanded="false">
				<span class="dropdown-icon open" id="#navbarToggleExternalContent">
					<?php echo twenty_twenty_one_get_icon_svg( 'ui', 'menu' ); // phpcs:ignore WordPress.Security.EscapeOutput ?>										
				</span>
				<span class="dropdown-icon close"></span>
			</button><!-- #primary-mobile-menu -->
		</div><!-- .menu-button-container -->
		<?php
		wp_nav_menu(
			array(
				'theme_location'  => 'primary',
				'menu_class'      => 'menu-wrapper',
				'container_class' => 'primary-menu-container',
				'items_wrap'      => '<ul id="primary-menu-list" class="%2$s">%3$s</ul>',
				'fallback_cb'     => false,
			)
		);
		?>
	</nav><!-- #site-navigation -->

	<!-- #social icon -->
	<div class="socal-icon d-none d-md-block">
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
