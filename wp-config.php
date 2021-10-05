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
define( 'DB_NAME', 'tellmystory' );

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
define( 'AUTH_KEY',         'PN]PayBW.`t*{pPg+u!Gi1q};94R|98%$.*;m%r?cu]eQ>Jo1ZiSl8Rbk]28M&WZ' );
define( 'SECURE_AUTH_KEY',  ')xW}lEL|zB^r<8`.S&.<I<Ly${UB=8uXafnPbvYMD^SFg)%m5ZZOVBvS^ aew}C0' );
define( 'LOGGED_IN_KEY',    '=h,XT-P##T6v#QP/S;``iGsK?rno_uB+qw)L.0BG_C.cB8^>9:36nu_tN{niK<hS' );
define( 'NONCE_KEY',        't>|kT&Cr^.$H+cs>}qySyzAL{|{s;^,3T6We75-}k_>f]!u0fOQLz7ZZj6e(j,h5' );
define( 'AUTH_SALT',        'b#|w%jvY}Y`v4{{rEXuu~-Y0|A4JP^2xF[6+2xr|t)mDrD}!=[6h:ZGo{42QA368' );
define( 'SECURE_AUTH_SALT', '^r/F.p8[fzkbr*rDgPNlQDS_:FPY/${>v;}Z6[:K*2~ ~0y;:Q#Z~X=;W2>l}?,>' );
define( 'LOGGED_IN_SALT',   'T8qsC3]iG|a+,TEVKC#<<j<8Ne(v$A;`*8OdqmQNT7~~I!x|$M6aFZ!3B.2 8`k)' );
define( 'NONCE_SALT',       '3:.)7*dI%RhVW. $_%P h_NE7Tc_I3 [tJcbQF/n#=&GX@J8[M;r<Z6v.OtPI=Qg' );

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
