<?php
session_start();
$title = "User Management";
$acc_code = "A02";
require "./functions/access.php";
require_once "./template/header.php";
require_once "./template/sidebar.php";
require "functions/dbconn.php";
require "functions/dbfunc.php";
?>

<!-- MAIN CONTENT START -->
<div class="content" style="min-height: calc(100vh - 160px);">
  <div class="container-fluid">
    <div class="row">

      <!-- LEFT TABS -->
      <div class="col-lg-2 col-md-2">
        <ul class="nav nav-pills nav-pills-rose nav-pills-icons flex-column" role="tablist">
          <li class="nav-item">
            <a class="nav-link active show" data-toggle="tab" href="#usr1">
              <i class="material-icons">face</i> Users
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#usr2">
              <i class="material-icons">schedule</i> Roles
            </a>
          </li>
        </ul>
      </div>

      <!-- RIGHT CONTENT -->
      <div class="col-md-10">
        <div class="tab-content">

          <!-- USERS TAB -->
          <div class="tab-pane active show" id="usr1">
            <div class="row">

              <!-- USER LIST -->
              <div class="col-md-8 col-sm-12">
                <div class="card ui-card">

                  <div class="ui-card-header">
                    <div class="ui-card-title">
                      <h4>User List</h4>
                    </div>
                    <div class="ui-card-icon icon-purple">
                      <i class="material-icons">assignment</i>
                    </div>
                  </div>

                  <div class="ui-card-body">
                    <div class="table-responsive">
                      <table class="table sortable-table" id="userTable">
<thead>
  <tr>
    <th data-type="number" class="text-center">ID</th>
    <th data-type="string">Username</th>
    <th data-type="string">Name</th>
    <th data-type="string">Role</th>
    <th data-type="string">Active</th>
    <th data-type="none">Actions</th>
  </tr>
</thead>
                        <tbody>
                          <?php
                          $n = 0;
                          $resUsers = getData($conn, "users");
                          foreach ($resUsers as $user) {
                            $n++;
                            $resRole = getDataById($conn, "roles", $user['role']);
                            $rowRole = mysqli_fetch_array($resRole);
                          ?>
                          <tr>
                            <td class="text-center"><?php echo $user['id']; ?></td>
                            <td><?php echo $user['username']; ?></td>
                            <td><?php echo $user['fname']; ?></td>
                            <td><?php echo $rowRole['rname']; ?></td>
                            <td><?php echo $user['active'] ? 'Yes' : 'No'; ?></td>
                            <td class="text-center">
                              <a href="edit_user.php?edituser=<?php echo $user['id']; ?>"
                                 class="btn btn-success btn-link"
                                 title="Edit">
                                <i class="material-icons">edit</i>
                              </a>
                              <?php if ($n > 3) { ?>
                                <a href="process/admin/usr_process.php?deluser=<?php echo $user['id']; ?>"
                                   class="btn btn-danger btn-link"
                                   title="Delete">
                                  <i class="material-icons">close</i>
                                </a>
                              <?php } ?>
                            </td>
                          </tr>
                          <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  </div>

                </div>
              </div>

              <!-- ADD USER -->
              <div class="col-md-4 col-sm-12">
                <div class="card ui-card">

                  <div class="ui-card-header">
                    <div class="ui-card-title">
                      <h4>Add User</h4>
                    </div>
                    <div class="ui-card-icon icon-purple">
                      <i class="material-icons">face</i>
                    </div>
                  </div>

                  <div class="ui-card-body">
                    <form action="process/admin/usr_process.php" method="POST">

                      <div class="form-group">
                        <label class="bmd-label-floating">Username</label>
                        <input type="text" class="form-control" name="username" required autofocus>
                      </div>

                      <div class="form-group">
                        <label class="bmd-label-floating">Full Name</label>
                        <input type="text" class="form-control" name="fname" required>
                      </div>

                      <div class="form-group">
                        <label class="bmd-label-floating">Password</label>
                        <input type="password" class="form-control" name="password" required>
                      </div>

                      <div class="form-group">
                        <select class="selectpicker form-control"
                                title="Choose Role"
                                name="role"
                                required>
                          <?php
                          $roles = getData($conn, "roles");
                          foreach ($roles as $rname) {
                            echo "<option value='{$rname['id']}'>{$rname['rname']}</option>";
                          }
                          ?>
                        </select>
                      </div>

                      <div class="ui-card-actions">
                        <button class="btn btn-success" name="addUser">Add</button>
                        <button class="btn btn-danger" type="reset">Clear</button>
                      </div>

                    </form>
                  </div>

                </div>
              </div>

            </div>
          </div>

          <!-- ROLES TAB -->
          <div class="tab-pane" id="usr2">
            <div class="row">
              <div class="col-md-6 col-sm-12">
                <div class="card ui-card">

                  <div class="ui-card-header">
                    <div class="ui-card-title">
                      <h4>Roles</h4>
                    </div>
                    <div class="ui-card-icon icon-purple">
                      <i class="material-icons">assignment</i>
                    </div>
                  </div>

                  <div class="ui-card-body">
                    <table class="table sortable-table" id="rolesTable">
<thead>
  <tr>
    <th data-type="number" class="text-center">ID</th>
    <th data-type="string">Role</th>
    <th data-type="string">Description</th>
  </tr>
</thead>

                      <tbody>
                        <?php
                        $resRoles = getData($conn, "roles");
                        foreach ($resRoles as $role) {
                        ?>
                        <tr>
                          <td class="text-center"><?php echo $role['id']; ?></td>
                          <td><?php echo $role['rname']; ?></td>
                          <td><?php echo $role['rdesc']; ?></td>
                        </tr>
                        <?php } ?>
                      </tbody>
                    </table>
                  </div>

                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>

<?php require_once "./template/footer.php"; ?>