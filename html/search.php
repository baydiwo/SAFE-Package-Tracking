<?php
include "header.php"
?>
<div class="search-page">
<div class="row">
    <div class="col-md-3 pull-right">
        <div class="search pull-left">
            <?php include "searchform.php"; ?>
        </div>
    </div>
</div> <!-- row-search -->
<div class="row">
    <div class="search-result">
        <div class="col-md-4">
            <div class="track-info">
                <div class="head pull-left">
                    <div class="icon pull-left">
                        <i class="flaticon-package"></i>
                    </div>
                    <div class="title pull-left">
                        <p>Tracking Number:</p>
                        <span class="number">1456789237</span>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="order-details">
                    <dl>
                        <dt>Order received: </dt>
                        <dd><b>12 March 2015</b></dd>
                        <dt>Destination Address:</dt>
                        <dd><b>Jl. ABC No. 1, Rawa Barat Jakarta Selatan 123456</b></dd>
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
                    <tr class="picking-up">
                        <td>Picking Up</td>
                        <td>12 March 2015</td>
                        <td>12:05</td>
                    </tr>
                    <tr class="transit">
                        <td>Warehouse Transit</td>
                        <td>12 March 2015</td>
                        <td>12:05</td>
                    </tr>
                    <tr class="delivered">
                        <td><i class="flaticon-accept"></i>&nbsp;Delivered</td>
                        <td>12 March 2015</td>
                        <td>12:05</td>
                    </tr>
                    <tr class="returned">
                        <td><i class="flaticon-return"></i>&nbsp;Returned</td>
                        <td>12 March 2015</td>
                        <td>12:05</td>
                    </tr>
                </table>
            </div> <!-- search-content -->
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</div>
<?php
include "footer.php";
 ?>