<?php
/**
 * Template Name: HomePage
 * The template for displaying Home Page.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage EIGHTED
 */

get_header();
?>
<div class="banner">
    <img src="<?php bloginfo('template_url'); ?>/img/banner-home-package.jpg">
    <div class="clearfix"></div>
    <div class="box">
        <div class="track">TRACK YOUR <b>SAFE</b> PACKAGE</div>
        <?php get_search_form(); ?>
        <div class="clearfix"></div>
        <!-- <span class="sub-track">*Track multiple packages by separating track number with comma </span> -->
    </div>
</div>

<?php get_footer(); ?>