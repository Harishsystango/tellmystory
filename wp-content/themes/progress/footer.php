<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>			
			</main><!-- #main -->
		</div><!-- #primary -->
	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<!-- .footer-widgets -->
			<?php get_template_part( 'template-parts/footer/footer-widgets' ); ?>
		<!-- .footer-widgets -->
		<?php if ( has_nav_menu( 'footer' ) ) : ?>
			<nav aria-label="<?php esc_attr_e( 'Secondary menu', 'twentytwentyone' ); ?>" class="footer-navigation">
				<ul class="footer-navigation-wrapper">
					<?php
					wp_nav_menu(
						array(
							'theme_location' => 'footer',
							'items_wrap'     => '%3$s',
							'container'      => false,
							'depth'          => 1,
							'link_before'    => '<span>',
							'link_after'     => '</span>',
							'fallback_cb'    => false,
						)
					);
					?>
				</ul><!-- .footer-navigation-wrapper -->
			</nav><!-- .footer-navigation -->			

		<?php endif; ?>
		<div class="powered-by">
			<a href="#">© Copyright 2021 All Rights Reserved</a>
		</div><!-- .powered-by -->
		
	</footer><!-- #colophon -->
<div>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
