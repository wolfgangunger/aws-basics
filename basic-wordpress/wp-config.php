<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ungerwdb');

/** MySQL database username */
define('DB_USER', 'ungerwdb');

/** MySQL database password */
define('DB_PASSWORD', 'ungerwdb');

/** MySQL hostname */
define('DB_HOST', 'ungerwdb.cr7lzeicvlwj.eu-west-1.rds.amazonaws.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Wd)r[ Fa=+RCy!~RG~R, *R|Tv};QCC*t5HOT7f7x @72c0?{-Fz7YGR_iW|J)`f');
define('SECURE_AUTH_KEY',  'xv?hrfI5&d6}Gzzxit{9tga$G2EU:eQ^>IFO-?,IAh35>mrc8S+rn?ezivaJ#l.W');
define('LOGGED_IN_KEY',    '$3qCV_g#@*O]B dc4t~{=uR06Tq<#JGzBHV_g)<FnN%4lQ@uqp)PAxRBHi%RFfYl');
define('NONCE_KEY',        'IvaTroT x1.r_NV.i=CVb)B9zMk@/1N~a8:HaZo@6j[Gp.q-wbJ3M_lT7~eN}ZWc');
define('AUTH_SALT',        'kFqsK5&mR|<Asua7s#iq^|?AxU>c2G5=F$$W@v-Qj&zk0uxM+9%nX$;HQH$GLNNH');
define('SECURE_AUTH_SALT', ',?[.Z!~ky+,R1r`*Qks|D~ sTz1k6Wv5]Lp^NSYy]x}SHSM8(s@b{nX9z&]~ei=b');
define('LOGGED_IN_SALT',   '5y}[tKeQ8Uv*<XAce_[sIlt|gQLa+ 6+lMu DL0#te?#-#5`j|#KKEWUBx1BSQ`_');
define('NONCE_SALT',       '*{~$r61/&QvHG2NUu[[9R#s Ic`FcA;;q?sT/IV93*bT,~OBdI,F@!@FF2yoI1w ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
