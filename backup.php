<?php
session_start();
// ob_start(ob_gzhandler);
$title = "Backup";
$acc_code = "R01";
require "./functions/access.php";
require_once "./template/header.php";
require_once "./template/sidebar.php";
require "functions/dbconn.php";
require "functions/dbfunc.php";
require "functions/general.php";
?>

<!-- MAIN CONTENT START -->
<div class="content notice-page" style="min-height: calc(100vh - 160px);">
  <div class="container-fluid">

    <div class="row">

      <!-- BACKUP ACTION CARD -->
      <div class="col-md-3">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Backup</h4>
              <small>Database Backup</small>
            </div>
            <div class="ui-card-icon icon-pink">
              <i class="material-icons">search</i>
            </div>
          </div>

          <div class="card-body ui-card-body">

            <div class="ui-card-actions" style="justify-content: center;">
              <a href="process/admin/backup.php"
                 class="btn btn-success btn-lg">
                BACKUP
              </a>
            </div>

          </div>

        </div>
      </div>

      <!-- BACKUP LOG TABLE -->
      <div class="col-md-9">
        <div class="card ui-card">

          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Backup</h4>
              <small>Backup History</small>
            </div>
            <div class="ui-card-icon icon-purple">
              <i class="material-icons">search</i>
            </div>
          </div>

          <div class="card-body ui-card-body">

            <table class="table table-hover sortable-table">
  <thead>
    <tr>
      <th data-type="number">Sl No</th>
      <th data-type="date">Date</th>
      <th data-type="time">Time</th>
      <th data-type="string">Status</th>
    </tr>
  </thead>

              <tbody>
                <?php
                $res = getBackupData($conn, "log");
                $n = 1;
                while ($row = mysqli_fetch_array($res)) {
                  if ($row['action'] == "Database Backup Done") {
                    $date = date("d-M-Y", strtotime($row['date']));
                    echo "
                      <tr>
                        <td>{$n}</td>
                        <td>{$date}</td>
                        <td>{$row['time']}</td>
                        <td>{$row['action']}</td>
                      </tr>
                    ";
                    $n++;
                  }
                }
                ?>
              </tbody>
            </table>

          </div>

        </div>
      </div>

    </div>

  </div>
</div>
<!-- MAIN CONTENT END -->

<?php require_once "./template/footer.php"; ?>