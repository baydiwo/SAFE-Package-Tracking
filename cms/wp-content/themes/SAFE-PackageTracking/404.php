 <?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage EIGHTED
 *
 */

get_header(); ?>

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="not-found">
            <div class="row">
                <div class="col-sm-1">
                    <div class="img-alert">
                        <img src="<?php bloginfo('template_url'); ?>/img/404-not-found.jpg" alt="404 Not Found" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="content">
                        <h2><?php _e( 'We couldn’t found your package', ' ' ); ?></h2>

                        <?php if ( is_home() && current_user_can( 'publish_posts' ) ) : ?>

                            <p><?php printf( __( 'Ready to publish your first post? <a href="%1$s">Get started here</a>.', ' ' ), esc_url( admin_url( 'post-new.php' ) ) ); ?></p>

                        <?php elseif ( is_search() ) : ?>

                            <!-- <p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', ' ' ); ?></p> -->
                            <p><b>Your tracking number:  <?php the_search_query(); ?> </b></p>

                        <?php else : ?>

                            <p><?php _e( 'It seems we can&rsquo;t find what you&rsquo;re looking for. Perhaps searching can help.', ' ' ); ?></p>

                        <?php endif; ?>

                        <p>Don’t worry. Recheck your tracking number or call our hotline, we will happy to help you.</p>
                    </div>
                </div>
                <div class="col-sm-5">
                    <?php get_search_form(); ?>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<?php
get_footer();
 ?>