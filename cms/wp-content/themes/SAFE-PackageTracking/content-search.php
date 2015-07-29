<?php
/**
 * The template part for displaying results in search pages
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage EIGHTED
 *
 */
?>
<div class="search-result" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<div class="col-md-4">
    <div class="track-info">
        <div class="head pull-left">
            <div class="icon pull-left">
                <i class="flaticon-package"></i>
            </div>
            <div class="title pull-left">
                <p>Tracking Number:</p>
                <span class="number">
                	<?php the_title(); ?>
                </span>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="order-details">
            <dl>
                <dt>Order received: </dt>
                <dd><b><?php the_field('order_received'); ?></b></dd>
                <dt>Sender name:</dt>
                <dd><b><?php the_field('sender_name'); ?></b></dd>
                <dt>Recipient name:</dt>
                <dd><b><?php the_field('recipient_name'); ?></b></dd>
                <dt>Destination Address:</dt>
                <dd><b><?php the_field("destination_address"); ?></b></dd>
                <?php
                    /* $custom_fields = get_post_custom();
                    foreach ( $custom_fields as $field_key => $field_values ) {
                        foreach ( $field_values as $key => $value )
                            preg_match('/([^\s]*)/', $field_values, $matches);
                        echo $matches[1] . ' - ' . $value . '<br />';
                    }*/
                ?>
            </dl>
        </div>
        <div class="clearfix"></div>
    </div> <!-- track-info -->
</div>
<div class="col-md-8">
    <div class="search-content">
        <table class="table">
            <tr>
                <th>Status</th>
                <th>Date</th>
                <th>Time</th>
            </tr>
            <?php
				/*
            	if(get_field('tracking_status') != null) : ?>
            		<tr class="picking-up">
		                <td>Picking Up</td>
		                <td><?php get_field('pick_up_date'); ?></td>
		                <td><?php

		     				//	$fields = get_fields('');

							// if( $fields )
							// {
							// 	foreach( $fields as $field_name => $value )
							// 	{
							// 		// get_field_object( $field_name, $post_id, $options )
							// 		// - $value has already been loaded for us, no point to load it again in the get_field_object function
							// 		$field = get_field_object($field_name, false, array('load_value' => false));

							// 		echo '<div>';
							// 			echo '<h3>' . $field_name . '</h3>';
							// 			echo $value;
							// 		echo '</div>';
							// 	}
							// }

		                	// $postid = get_the_id();
		                	// foreach( $wpdb->get_results("
		                	// 	SELECT DISTINCT post.ID , post.post_title , post.post_date , post.post_parent , post.post_type , meta.post_id , meta.meta_key , meta.meta_value , meta.meta_id
		                	// 	FROM sf_posts AS post JOIN sf_postmeta AS meta
		                	// 	WHERE 1=1
		                	// 	AND post.post_parent = $postid
		                	// 	AND meta.post_id = post.ID
                   //              AND meta.meta_key = 'delivered_date'
		                	// 	AND post.post_type = 'revision'
		                	// 	ORDER BY meta.meta_id , post.ID DESC LIMIT 0,1
		                	// 	") as $key => $row) {
		                	// 	$postdate = $row->post_date;
		                	// 	// echo $postdate;
		                	// 	$d=strtotime($postdate);
		                	// 	echo date("G:i" , $d);
		                	// }
		                	// foreach($wpdb->get_results("
		                	// 	SELECT * FROM sf_posts WHERE post_parent = $postid ORDER BY ID DESC LIMIT 0,1
		                	// 	");
		                	// the_id();

		                // the_ID();
		                // $postids = get_the_id();
		                // $parentID = wp_get_post_parent_id( 12 );
		                // echo $parentID;
		                ?>
		                </td>
	                </tr>
				<?php endif; */
				// if( in_array( 'red', get_field('field_name') ) )
				/*
				if( in_array( '0', get_field('picking_up') ) )
				{
					echo '
					<tr class="picking-up">
		                <td>Picking Up</td>
		                <td>'.get_the_modified_date("d m Y").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				if( in_array( '1', get_field('warehouse_transit') ) )
				{
					echo '
					<tr class="transit">
		                <td>Warehouse Transit</td>
		                <td>'.get_the_modified_date("d m Y").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				if( in_array( '2', get_field('delivered') ) )
				{
					echo '
					<tr class="delivered">
		                <td><i class="flaticon-accept"></i>&nbsp;Delivered</td>
		                <td>'.get_the_modified_date("d m Y").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				if( in_array( '3', get_field('returned') ) )
				{
					echo '
					<tr class="returned">
		                <td><i class="flaticon-return"></i>&nbsp;Returned</td>
		                <td>'.get_the_modified_date("d m Y").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}*/
				if (get_field("status") == "0")
				{
					echo '
					<tr class="picking-up">
		                <td>Picking Up</td>
		                <td>'.get_field("pick_up_date").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				else if (get_field("status") == "1")
				{
					echo '
					<tr class="transit">
		                <td>Warehouse Transit</td>
		                <td>'.get_field("warehouse_transit_date").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				else if (get_field("status") == "2")
				{
					echo '
					<tr class="delivered">
		                <td><i class="flaticon-accept"></i>&nbsp;Delivered</td>
		                <td>'.get_the_modified_date("l, d F Y").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				else if (get_field("status") == "3")
				{
					echo '
					<tr class="returned">
		                <td><i class="flaticon-return"></i>&nbsp;Returned</td>
		                <td>'.get_field("returned_date").'</td>
		                <td>'.get_the_modified_date("G:i").'</td>
	                </tr>
					';
				}
				else {
					echo " ";
				}
             ?>
        </table>
    </div> <!-- search-content -->
</div>
<div class="clearfix"></div>
</div>