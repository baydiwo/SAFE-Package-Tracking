<?php

function my_scripts() {

	wp_register_script(
		'angularjs',
		get_stylesheet_directory_uri() . '/js/angular.min.js'
	);

	wp_register_script(
		'angularjs-route',
		get_stylesheet_directory_uri() . '/js/angular-route.min.js'
	);

	wp_register_script(
		'angularjs-sanitize',
		get_stylesheet_directory_uri() . '/js/angular-sanitize.min.js'
	);

	wp_register_script(
		'bootstrap',
		get_stylesheet_directory_uri() . '/js/bootstrap.min.js'
	);


	wp_register_script(
		'jquery',
		get_stylesheet_directory_uri() . '/js/jquery.min.js'
	);

	wp_register_script(
		'app',
		get_stylesheet_directory_uri() . '/js/app.js'
	);

	wp_enqueue_script(
		array( 'angularjs', 'angularjs-route', 'angularjs-sanitize' ,'jquery', 'bootstrap' , 'app' )
	);

	wp_localize_script(
		'my-scripts' ,
		'myLocalized',
		array(
			'partials' => trailingslashit( get_template_directory_uri() ) . 'partials/'
			)
	);
}


add_action( 'wp_enqueue_scripts', 'my_scripts' );

function my_add_link_target( $html ) {

	$html = preg_replace( '/(<a.*")>/', '$1 target="_self">', $html );
	return $html;
}
add_filter( 'image_send_to_editor', 'my_add_link_target', 10 );

add_filter( 'query_vars', function( $query_vars ) {
	$query_vars[] = 'post_parent';
	return $query_vars;
});

// add_filter('show_admin_bar', '__return_false');

function my_theme_setup() {

	add_theme_support( 'post-thumbnails' );
}
add_action( 'after_setup_theme', 'my_theme_setup' );
add_theme_support( 'html5', array( 'search-form' ) );