<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'safe_db');

/** MySQL database username */
define('DB_USER', 'matakucoklat');

/** MySQL database password */
define('DB_PASSWORD', 'm4t4kuc0kl4t');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '<=b4y{#[OEx2-$g1<BARNJN7ks7;C5mFQR]zHjF-EA7mb&BN<(dWsuJ2B3&0?8`W');
define('SECURE_AUTH_KEY',  'RdH>JReq*l{Nec5Iv1;-?+m<BLlnb 7+RMP#+z7?1dU_v5F5+)cVzdp9D;-@XtC@');
define('LOGGED_IN_KEY',    '0@_U{kngEg|czegeL%a,{T{.wN3`!#[kub]+1%}7GC70ny<Y>g(UfXcK[r3O`+Gh');
define('NONCE_KEY',        'h${m.IgVNk3I+NGm]_@;,aq,,K:b$1cR-<n-|?c r<hT$Y-PmTkmbdam_&{_E{>i');
define('AUTH_SALT',        '+-;}zDOs4;V;<P<cgyBAxxivUG[W|nNtIG|X;XVAM?WgZorKX~]2CoY.~?+xvvl#');
define('SECURE_AUTH_SALT', '2cE;g6`~cvF$UX[y3,+<O5#$Zl._lng3x-ZSd(O<nk)I+>A .Q`$FgVza4xq]G4f');
define('LOGGED_IN_SALT',   'FF]3@/RgM2OA78l1;(q(%w^wLUF8ZK|=+LDT;m<-i.#]]%3|t(n2]jDs% n#y!xz');
define('NONCE_SALT',       '^P+R_s+DzQXvkJ5WmG{/Rt&vb@.Fo>,|1[>deo2>4fm7~<-?K2Z9-=<o9FK8X!+z');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'sf_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
