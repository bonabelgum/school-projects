<?php
session_start();
$title = "Setup";
$acc_code = "S01";
require "./functions/access.php";
require_once "./template/header.php";
require_once "./template/sidebar.php";
require "functions/dbconn.php";
require "functions/dbfunc.php";
require "functions/general.php";

$res = setupStats($conn);
?>

<!-- MAIN CONTENT START -->
<div class="content" style="min-height: calc(100vh - 160px);">
  <div class="container-fluid">
    <div class="row">

      <!-- LEFT COLUMN -->
      <div class="col-md-6">

        <!-- BASIC SETUP -->
        <div class="card ui-card">
          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Basic Setup</h4>
              <small>In Out System</small>
            </div>
            <div class="ui-card-icon icon-pink">
              <i class="material-icons">perm_identity</i>
            </div>
          </div>
          <div class="card-body ui-card-body">
            <form action="process/operations/process.php" method="POST" name="basic">
              <div class="form-group">
                <label>College Name</label>
                <input type="text" class="form-control" name="cname" value="<?php echo $res[0]; ?>">
              </div>
              <div class="form-group">
                <label>Library Closing Time (24H)</label>
                <input type="text" class="form-control" name="libtime" value="<?php echo $res[1]; ?>">
              </div>
              <div class="form-group">
                <label>University Number Label</label>
                <input type="text" class="form-control" name="noname" value="<?php echo $res[2]; ?>">
              </div>
              <div class="ui-card-actions">
                <input type="reset" value="Clear" class="btn btn-outline-secondary">
                <input type="submit" value="Submit" name="basic" class="btn btn-primary">
              </div>
            </form>
          </div>
        </div>

        <!-- ADD LOCATION -->
        <div class="card ui-card mt-4">
          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Add Location</h4>
              <small>In Out System</small>
            </div>
            <div class="ui-card-icon icon-purple">
              <i class="material-icons">done_outline</i>
            </div>
          </div>
          <div class="card-body ui-card-body">
            <form action="process/operations/process.php" method="POST" name="loc">
              <div class="form-group">
                <label>New Location Name</label>
                <input type="text" class="form-control" name="loc">
              </div>
              <div class="ui-card-actions">
                <input type="reset" value="Clear" class="btn btn-outline-secondary">
                <input type="submit" value="Submit" name="location" class="btn btn-primary">
              </div>
            </form>
          </div>
        </div>

        <!-- SETUP MAIN SCREEN -->
        <div class="card ui-card mt-4">
          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Setup</h4>
              <small>Main Screen</small>
            </div>
            <div class="ui-card-icon icon-cyan">
              <i class="material-icons">notes</i>
            </div>
          </div>
          <div class="card-body ui-card-body">
            <form action="process/operations/process.php" method="POST" name="updateDash">
              <div class="row">
                <div class="col-md-6 checkbox-radios">
                  <?php
                  $dashOptions = ['clock'=>'Clock','newarrivals'=>'New Arrivals','quote'=>'Quotes'];
                  foreach ($dashOptions as $val=>$label) {
                    $checked = ($res[4] === $val) ? 'checked' : '';
                    echo "<div class='form-check'>
                      <label class='form-check-label'>
                        <input class='form-check-input' type='radio' name='activedash' value='$val' $checked>
                        $label
                        <span class='circle'><span class='check'></span></span>
                      </label>
                    </div>";
                  }
                  ?>
                </div>
                <div class="col-md-6 checkbox-radios">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="banner" value="name" <?php if($res[3]=='false') echo 'checked'; ?>>
                      Display Name
                      <span class="circle"><span class="check"></span></span>
                    </label>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="banner" value="banner" <?php if($res[3]=='true') echo 'checked'; ?>>
                      Display Banner
                      <span class="circle"><span class="check"></span></span>
                    </label>
                  </div>
                </div>
              </div>
              <div class="ui-card-actions">
                <input type="submit" value="Submit" name="updateDash" class="btn btn-primary">
              </div>
            </form>
          </div>
        </div>

      </div>

      <!-- RIGHT COLUMN -->
      <div class="col-md-6">

        <!-- INFORMATION -->
        <div class="card ui-card">
          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Information</h4>
              <small>In Out System</small>
            </div>
            <div class="ui-card-icon icon-green">
              <i class="material-icons">view_headline</i>
            </div>
          </div>
          <div class="card-body ui-card-body">
            <h5>College Name</h5>
            <p><?php echo $res[0]; ?></p>
            <h5>Library Closing Time</h5>
            <p><?php echo $res[1]; ?></p>
            <h5>University Number Label</h5>
            <p><?php echo $res[2]; ?></p>
          </div>
        </div>

        <!-- LOCATIONS LIST -->
        <div class="card ui-card mt-4">
          <div class="ui-card-header">
            <div class="ui-card-title">
              <h4>Locations</h4>
              <small>In Out System</small>
            </div>
            <div class="ui-card-icon icon-green">
              <i class="material-icons">map</i>
            </div>
          </div>
          <div class="card-body ui-card-body">
            <?php
            $q = mysqli_query($conn, "SELECT loc FROM loc");
            while ($row = mysqli_fetch_assoc($q)) {
              echo "<p>{$row['loc']}</p>";
            }
            ?>
          </div>
        </div>

      </div>

    </div>
  </div>
</div>
<!-- MAIN CONTENT END -->

<?php require_once "./template/footer.php"; ?>