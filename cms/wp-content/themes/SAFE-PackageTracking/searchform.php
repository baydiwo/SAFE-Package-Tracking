<div class="search">
<form role="search" method="get" id="searchform" class="searchform form-group" action="<?php echo esc_url( home_url( '/' ) ); ?>">
        <input type="text" class="form-control" placeholder="Tracking Number" value="<?php echo get_search_query(); ?>" name="s" id="s">
        <span class="flaticon-search form-control-feedback" aria-hidden="true"></span>
        <!-- <input type="hidden" value="post" name="post_type" id="post_type" /> -->
        <input type="hidden" id="searchsubmit" value="<?php echo esc_attr_x( 'Search', 'submit button' ); ?>" />
</form>

<!-- <form role="search" method="get" class="search-form form-group" action="<?php echo home_url( '/' ); ?>">
    <label>
        <span class="screen-reader-text"><?php echo _x( 'Search for:', 'label' ) ?></span>
        <input type="search" class="search-field" placeholder="<?php echo esc_attr_x( 'Search …', 'placeholder' ) ?>" value="<?php echo get_search_query() ?>" name="s" title="<?php echo esc_attr_x( 'Search for:', 'label' ) ?>" />
    </label>
    <input type="submit" class="search-submit" value="<?php echo esc_attr_x( 'Search', 'submit button' ) ?>" />
</form> -->
</div>