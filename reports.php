<?php
session_start();
// ob_start(ob_gzhandler);
$title = "Reports";
$acc_code = "";
// $acc_code = "R01";
require "./functions/access.php";
require_once "./template/header.php";
require_once "./template/sidebar.php";
require "functions/dbconn.php";
require "functions/dbfunc.php";
require "functions/general.php";

if (isset($_POST['slib'])) {
  $_SESSION["lib"] = $_POST['slib'];
  //header("location:reports.php");
}
$slib = $_SESSION['loc'];
?>

<!-- MAIN CONTENT START -->
<div class="content notice-page" style="min-height: calc(100vh - 160px);">
  <div class="container-fluid">

    <!-- ROW 1 -->
    <div class="row">

      <!-- STATISTICAL REPORT -->
      <div class="col-md-6">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Statistical Report</h4>
              <small>Select Date</small>
            </div>
            <div class="ui-card-icon icon-orange">
              <i class="material-icons">trending_up</i>
            </div>
          </div>

          <div class="card-body ui-card-body">
            <form action="report.php" method="POST">

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="From" name="fdate">
              </div>

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="To" name="tdate">
              </div>

              <div class="ui-card-actions">
                <input type="reset" value="Cancel" class="btn btn-outline-secondary">
                <input type="submit" value="Submit" name="statRep" class="btn btn-primary">
              </div>

            </form>
          </div>

        </div>
      </div>

      <!-- LOCATION (MASTER ONLY) -->
      <?php if ($_SESSION['id'] == "Master") { ?>
      <div class="col-md-6">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Location</h4>
              <small>Select Location</small>
            </div>
            <div class="ui-card-icon icon-red">
              <i class="material-icons">map</i>
            </div>
          </div>

          <div class="card-body ui-card-body">
            <form action="" method="POST">

              <div class="form-group">
                <select name="slib" class="selectpicker form-control"
                        title="<?php echo $slib; ?>"
                        onchange="this.form.submit();">
                  <?php
                    echo "<option>$slib</option>";
                    $res = mysqli_query($conn, "SELECT * FROM loc");
                    while ($row = mysqli_fetch_array($res)) {
                      echo "<option>".$row[1]."</option>";
                    }
                    echo "<option>Master</option>";
                  ?>
                </select>
              </div>

            </form>
          </div>

        </div>
      </div>
      <?php } ?>

    </div>

    <!-- ROW 2 -->
    <div class="row">

      <!-- DATEWISE REPORT -->
      <div class="col-md-6">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Datewise Report</h4>
              <small>Date & Time</small>
            </div>
            <div class="ui-card-icon icon-yellow">
              <i class="material-icons">calendar_today</i>
            </div>
          </div>

          <div class="card-body ui-card-body">
            <form action="report.php" method="POST">

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="From Date" name="fdate">
              </div>

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="To Date" name="tdate">
              </div>

              <div class="form-group">
                <input type="text" class="form-control timepicker" placeholder="From Time" name="ftime">
              </div>

              <div class="form-group">
                <input type="text" class="form-control timepicker" placeholder="To Time" name="ttime">
              </div>

              <div class="ui-card-actions">
                <input type="reset" value="Cancel" class="btn btn-outline-secondary">
                <input type="submit" value="Submit" name="datewiseRep" class="btn btn-primary">
              </div>

            </form>
          </div>

        </div>
      </div>

      <!-- STUDENTWISE REPORT -->
      <div class="col-md-6">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Studentwise Report</h4>
              <small>USN & Date</small>
            </div>
            <div class="ui-card-icon icon-green">
              <i class="material-icons">person</i>
            </div>
          </div>

          <div class="card-body ui-card-body">
            <form action="report.php" method="POST">

              <div class="form-group">
                <input type="text" class="form-control" placeholder="USN" name="usn">
              </div>

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="From Date" name="fdate">
              </div>

              <div class="form-group">
                <input type="text" class="form-control datepicker" placeholder="To Date" name="tdate">
              </div>

              <div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="rtype" value="Short" checked>
						Short Report
						<span class="form-check-sign">
						<span class="check"></span>
						</span>
					</label>
				</div>

				<div class="form-check">
					<label class="form-check-label">
						<input class="form-check-input" type="radio" name="rtype" value="Detail">
						Detailed Report
						<span class="form-check-sign">
						<span class="check"></span>
						</span>
					</label>
				</div>


              <div class="ui-card-actions">
                <input type="reset" value="Cancel" class="btn btn-outline-secondary">
                <input type="submit" value="Submit" name="studentRep" class="btn btn-primary">
              </div>

            </form>
          </div>

        </div>
      </div>

    </div>

  </div>
</div>
<!-- MAIN CONTENT END -->

<?php require_once "./template/footer.php"; 
// ob_end_flush();?>