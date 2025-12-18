<?php
	session_start();
	// ob_start(ob_gzhandler);
	$title = "Entry Register";
	$acc_code = "U03";
	$slib = $_SESSION['loc'];
	$table = true;
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
        <h4>Entry Register</h4>
        <small>Recent 500 In-Out Records</small>
      </div>

      <!-- ICON (unchanged icon, new wrapper) -->
      <div class="ui-card-icon icon-purple">
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
				<th data-type="date">Date</th>
				<th data-type="time">Entry</th>
				<th data-type="time">Exit</th>
			</tr>
			</thead>


        <tbody>
          <?php
            $sql = "SELECT * FROM `inout` WHERE `loc` = '$slib' ORDER BY sl DESC LIMIT 500";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_array($result)) {
          ?>
          <tr>
            <td><?= $row['sl']; ?></td>
            <td><?= $row['cardnumber']; ?></td>
            <td><?= $row['name']; ?></td>
            <td><?= $row['email']; ?></td>
            <td><?= $row['mob']; ?></td>
            <td><?= $row['date']; ?></td>
            <td><?= $row['entry']; ?></td>
            <td><?= $row['exit']; ?></td>
          </tr>
          <?php } ?>
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