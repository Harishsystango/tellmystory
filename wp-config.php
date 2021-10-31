<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'WeAreProgress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ':0LN/YraeS^fa!i v7:n$@PXN9<#Kts[$BS([?OqSRvZ45%Ede!2~TFqZwN=ta8X' );
define( 'SECURE_AUTH_KEY',  '[-]T`L}pNo)e/ZPI~r>dK`_6B#gu&YWj<H[eJuwf~cCKh_+dP}.x:*Y>P~I`LgJ1' );
define( 'LOGGED_IN_KEY',    '1>Qde/$ORPF:]bV&=A:uX&6*|A!~#<|44Kbs8f2x7Jpw-?r)1/_lvcCbBrin0j:T' );
define( 'NONCE_KEY',        'ak:FlHyYP@*Cy^9kEIAAHdMYwJ@U!YbAmTuks~WDKw+.ep&rUC$U]H*f3L>gdSY%' );
define( 'AUTH_SALT',        'e(5jKh&I^iW-*i50Xdq w@]EEe3tAxw%ZZ7y Q?S44`Wn>nL$*;o_>cw[be]/* k' );
define( 'SECURE_AUTH_SALT', '(U(lt7LKvhp:8QmDdFy?U?z0imS4+1@#0xy/W]bQ,Cm66z|:h_KL.1]^L3IGUcC&' );
define( 'LOGGED_IN_SALT',   'e=x7KXL_$#+Q[$l8HqPYa<d[^1W+<M^uh~AXZV;4!A@0$ZrK G[B-cU4w*9!RW^(' );
define( 'NONCE_SALT',       '19;kgV9&YZLp0Rd)(j#D:^&WjN*m!x?3ZCJ>|dh:F~TB**0wwj=#W;zeUVmpYMM5' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
