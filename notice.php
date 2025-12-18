<?php
    session_start();
    // ob_start(ob_gzhandler);
    $title = "Notice";
    $acc_code = "N01";
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
        <div class="col-md-4">
            <div class="card ui-card notice-setup-card">
            <div class="ui-card-header">
              <div class="ui-card-title">
                <h4>Notice Setup</h4>
                <small>In Out System</small>
              </div>

              <div class="ui-card-icon icon-orange">
              <i class="material-icons">perm_identity</i>
            </div>
            </div>
            <div class="card-body ui-card-body">
              <form action="process/operations/process.php" method="POST" name="news">
                <div class="row">
                    <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Notice Title</label>
                      <input type="text" class="form-control" maxlength="50" autofocus name="nhead">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Notice Body</label>
                      <textarea rows="12" name="nbody" maxlength="570" class="form-control"></textarea>
                    </div>
                  </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                    <div class="form-group">
                      <label class="bmd-label-floating">Notice Footer</label>
                      <input type="text" class="form-control" maxlength="50" name="nfoot">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <select name="loc" data-style="btn btn-outline" class="col-md-5 selectpicker form-control" title="Select Location" required>
                        <?php
                          $result = getData($conn, "loc");
                          while ($row = mysqli_fetch_array($result)) {
                            echo '<option value="'.$row['loc'].'">'.$row['loc'].'</option>';
                          }
                        ?>                                               
                      </select>
                    </div>
                  </div>
                </div>
                <div class="ui-card-actions">
                  <input type="reset" value="Cancel" class="btn btn-outline-secondary">
                  <input type="submit" value="Submit" name="addnews" class="btn btn-primary">
                </div>

              </form>
            </div>
          </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                  <div class="card-header">
                    <h4 class="card-title">Notices</h4>
                  </div>
                  <div class="card-body chat">
                        <div class="chatbox">
                          <?php
                          $note = getNews($conn);
                          while($row = mysqli_fetch_array($note)){
                          ?>
                              <div class="notice-item">
                                  <div class="notice-content">
                                      <h5 class="notice-title"><?php echo $row['nhead']; ?></h5>

                                      <p class="notice-body">
                                          <?php echo nl2br($row['nbody']); ?>
                                      </p>

                                      <p class="notice-footer">
                                          <?php echo $row['nfoot']; ?>
                                      </p>

                                      <div class="notice-meta">
                                          <span>Published On: <?php echo $row['edate']; ?></span>
                                          <span>Location: <?php echo $row['loc']; ?></span>
                                      </div>
                                  </div>

                                  <div class="notice-status">
                                      <span>Active:</span>
                                      <a class="btn btn-sm btn-info"
                                        href="process/operations/process.php?nid=<?php echo $row['id']; ?>&status=<?php echo $row['status']; ?>&loc=<?php echo $row['loc']; ?>">
                                        <?php echo $row['status']; ?>
                                      </a>
                                  </div>
                              </div>
                          <?php
                          }
                          ?>
                          </div>
                  </div>
                </div>
        </div>
      </div>              
    </div>
</div>
<!-- MAIN CONTENT ENDS -->
<?php
  // Prevent undefined index warning
  $msg = $_GET['msg'] ?? "";

  if($msg == "1"){
    echo "<script type='text/javascript'>showNotification('top','right','Notice Added and Activated', 'success');</script>";
  }
  if($msg == "2"){
    echo "<script type='text/javascript'>showNotification('top','right','Status Updated', 'success');</script>";
  }

  require_once "./template/footer.php";
  // ob_end_flush();
?>