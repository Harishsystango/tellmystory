<?php
/**
 * Header file for the Twenty Twenty WordPress default theme.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */

?><!DOCTYPE html>

<html class="no-js" <?php language_attributes(); ?>>

	<head>

		<meta charset="<?php bloginfo( 'charset' ); ?>">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" >

		<link rel="profile" href="https://gmpg.org/xfn/11">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Average+Sans&display=swap" rel="stylesheet">
		<link href="http://fonts.cdnfonts.com/css/sofia-pro" rel="stylesheet">
		<link href="//db.onlinewebfonts.com/c/02c5086e8616653dade6e7cb3a1f0498?family=LTC+Bodoni+175+W01+Regular" rel="stylesheet" type="text/css"/>

		<?php wp_head(); ?>

	</head>

	<body <?php body_class(); ?>>

		<?php
		wp_body_open();
		?>
			<header>
				<nav class="navbar navbar-expand-md p-lg-5 pb-lg-0">
					
					<a class="navbar-brand" href="<?php echo get_home_url(); ?>" target="_blank">
					<img src="http://localhost:8888/tellmystory/wp-content/uploads/2021/09/TellMyStory_Logo-1.png" alt="logo" class="img-fluid"></a>	
					
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
					

						<?php
					if ( has_nav_menu( 'primary' ) ) {

						wp_nav_menu(
							array(
								'theme_location' => 'primary',
								'menu_class' => 'navbar-nav ms-auto py-4 py-md-0'
							)
						);

					}
					?>
					</div>
					
				</nav>	
			</header>

		

		<?php
		// Output the menu modal.
		// get_template_part( 'template-parts/modal-menu' );
