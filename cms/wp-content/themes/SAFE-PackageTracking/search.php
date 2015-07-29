<?php
/**
 * The template for displaying search results pages.
 *
 * @package WordPress
 * @subpackage EIGHTED
 *
 */

get_header(); ?>
<div class="clearfix"></div>
<div class="search-page">
<div class="row">
    <div class="col-md-3 col-xs-12 pull-right">
            <?php get_search_form(); ?>
    </div>
</div> <!-- row-search -->
<div class="row">

        <?php if ( have_posts() ) : ?>
            <?php
// Start the loop.
            while ( have_posts() ) : the_post(); ?>

            <?php
/*
* Run the loop for the search to output the results.
* If you want to overload this in a child theme then include a file
* called content-search.php and that will be used instead.
*/
get_template_part( 'content', 'search' );

// End the loop.
endwhile;

// Previous/next page navigation.
the_posts_pagination( array(
    'prev_text'          => __( 'Previous page'),
    'next_text'          => __( 'Next page'),
    'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page') . ' </span>',
    ) );

// If no content, include the "No posts found" template.
else :
    get_template_part( 'content', 'none' );

endif;
?>
</div>
</div>

<?php get_footer(); ?>