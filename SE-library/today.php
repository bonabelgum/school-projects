<?php
	session_start();
	// ob_start(ob_gzhandler);
	$title = "Today's Entry";
	$acc_code = "U02";
	$table = true;
	$slib = $_SESSION['loc'];

	require "./functions/access.php";
	require_once "./template/header.php";
	require_once "./template/sidebar.php";
	require "functions/dbconn.php";
	require "functions/dbfunc.php";
	require "functions/general.php";	
?>
<!-- MAIN CONTENT START -->
<div class="content" style="min-height: calc(100vh - 160px);">
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-md-12">
	    	<div class="card ui-card">
				<!-- HEADER -->
				<div class="ui-card-header">
					<div class="ui-card-title">
					<h4>Today's In Out Report</h4>
					<small>Today’s entry & exit summary</small>
					</div>

					<div class="ui-card-icon icon-blue">
					<i class="material-icons">assignment</i>
					</div>
				</div>
				<!-- BODY -->
				<div class="ui-card-body">

				  	<table id="datatables"
  class="table table-striped table-no-bordered table-hover"
  cellspacing="0" width="100%">

			        <thead>
						<tr>
							<th data-type="number">Sl</th>
							<th data-type="string">USN</th>
							<th data-type="string">Name</th>
							<th data-type="string">Email</th>
							<th data-type="number">Mobile</th>
							<th data-type="string">Status</th>
							<th data-type="time">Entry</th>
							<th data-type="time">Exit</th>
						</tr>
					</thead>
			        <tbody>
			        	<?php
			        		$date = date('d-m-Y');
			        		echo "<script type='text/javascript'>var printMsg = '".$_SESSION['lib']." Today (".$date.") Inout System Data';</script>";
			        		$date = date('Y-m-d');
                  $sql = "SELECT * FROM `inout` WHERE date = '$date' and `loc` = '$slib'";
                  $result = mysqli_query($conn, $sql) or die("Invalid query: " . mysqli_error($conn));
                  while ($row = mysqli_fetch_array($result)) {
                ?>
                	<tr>
                		<td><?php echo $row['sl']; ?></td>
                    <td><?php echo $row['cardnumber']; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['mob']; ?></td>
                  	<?php 
                  		if($row['status'] == "IN") 
                  			echo "<td class='btn-success text-center'>".$row['status']."</td>"; 
                  		else
                  			echo "<td class='btn-info text-center'>".$row['status']."</td>";
                  	?>
                  	<td><?php echo $row['entry']; ?></td>
                  	<td><?php echo $row['exit']; ?></td>
                  </tr>
                <?php
                  } //while end
			        	?>
			        </tbody>
			        <tfoot>
		            <tr>
	                <th></th>
	                <th></th>
	                <th></th>
	                <th></th>
	                <th></th>
	                <th></th>
	                <th></th>
	                <th></th>
	                <!-- <th></th> -->
		            </tr>
		        	</tfoot>
			      </table>
				  </div>
				</div>
	    </div>
	  </div>              
	</div>
</div>
<!-- MAIN CONTENT ENDS -->
<?php
	require_once "./template/footer.php";
	// ob_end_flush();
?>