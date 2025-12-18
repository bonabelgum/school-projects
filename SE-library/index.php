<?php
session_start();
// ob_start(ob_gzhandler);
$title = "Dashboard";
$acc_code = "INDEX";
require "./functions/access.php";
require_once "./template/header.php";
require_once "./template/sidebar.php";
require "functions/dbconn.php";
require "functions/dbfunc.php";
require "functions/general.php";   

// Default values
$fdate = date('Y-m-d', strtotime('-7 days'));
$tdate = date('Y-m-d');
$ftime = "00:00:00";
$ttime = "23:59:59";
$slib = $_SESSION['loc'];

// Check if filter form submitted
if (isset($_POST['filter'])) {
    $ftime = $_POST['ftime'] ? date("H:i:s", strtotime($_POST['ftime'])) : "00:00:00";
    $ttime = $_POST['ttime'] ? date("H:i:s", strtotime($_POST['ttime'])) : "23:59:59";
    $fdate = $_POST['fdate'] ? date("Y-m-d", strtotime(str_replace('/', '-', $_POST['fdate']))) : date('Y-m-d', strtotime('-7 days'));
    $tdate = $_POST['tdate'] ? date("Y-m-d", strtotime(str_replace('/', '-', $_POST['tdate']))) : date('Y-m-d');
}

// Get analytics data
if($slib == "Master"){
    $sql_male = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND gender='M'";
    $sql_female = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND gender='F'";
    $sql_total = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate')";
    $sql_daily = "SELECT date, COUNT(*) as visits FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') GROUP BY date ORDER BY date";
    $sql_top_students = "SELECT cardnumber, name, COUNT(*) as visit_count FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') GROUP BY cardnumber ORDER BY visit_count DESC LIMIT 10";
    $sql_hourly = "SELECT HOUR(entry) as hour, COUNT(*) as count FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') GROUP BY HOUR(entry) ORDER BY hour";
} else {
    $sql_male = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND gender='M' AND `loc`='$slib'";
    $sql_female = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND gender='F' AND `loc`='$slib'";
    $sql_total = "SELECT COUNT(sl) FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND `loc`='$slib'";
    $sql_daily = "SELECT date, COUNT(*) as visits FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND `loc`='$slib' GROUP BY date ORDER BY date";
    $sql_top_students = "SELECT cardnumber, name, COUNT(*) as visit_count FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND `loc`='$slib' GROUP BY cardnumber ORDER BY visit_count DESC LIMIT 10";
    $sql_hourly = "SELECT HOUR(entry) as hour, COUNT(*) as count FROM `inout` WHERE (entry BETWEEN '$ftime' AND '$ttime') AND (date BETWEEN '$fdate' AND '$tdate') AND `loc`='$slib' GROUP BY HOUR(entry) ORDER BY hour";
}

// Execute queries
$male = mysqli_fetch_row(mysqli_query($conn, $sql_male))[0];
$female = mysqli_fetch_row(mysqli_query($conn, $sql_female))[0];
$total = mysqli_fetch_row(mysqli_query($conn, $sql_total))[0];
$daily_result = mysqli_query($conn, $sql_daily);
$top_students_result = mysqli_query($conn, $sql_top_students);
$hourly_result = mysqli_query($conn, $sql_hourly);

// Get today's data for quick stats
$today = date('Y-m-d');
if($slib == "Master"){
    $sql_today = "SELECT COUNT(*) FROM `inout` WHERE date='$today'";
} else {
    $sql_today = "SELECT COUNT(*) FROM `inout` WHERE date='$today' AND `loc`='$slib'";
}
$today_count = mysqli_fetch_row(mysqli_query($conn, $sql_today))[0];

// Get monthly data
$current_month = date('Y-m');
if($slib == "Master"){
    $sql_monthly = "SELECT COUNT(*) FROM `inout` WHERE date LIKE '$current_month%'";
} else {
    $sql_monthly = "SELECT COUNT(*) FROM `inout` WHERE date LIKE '$current_month%' AND `loc`='$slib'";
}
$monthly_count = mysqli_fetch_row(mysqli_query($conn, $sql_monthly))[0];
?>

<!-- MAIN CONTENT START -->
<div class="content" style="min-height: calc(100vh - 160px);">
    <div class="container-fluid">
        <!-- Filter Section -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-info">
                        <h4 class="card-title">Analytics Filter</h4>
                        <p class="card-category">Filter data by date and time</p>
                    </div>
                    <div class="card-body">
                        <form method="POST" action="">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">From Date</label>
                                        <input type="text" class="form-control datepicker" name="fdate" 
                                               value="<?php echo isset($_POST['fdate']) ? $_POST['fdate'] : date('d/m/Y', strtotime('-7 days')); ?>">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">To Date</label>
                                        <input type="text" class="form-control datepicker" name="tdate" 
                                               value="<?php echo isset($_POST['tdate']) ? $_POST['tdate'] : date('d/m/Y'); ?>">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">From Time</label>
                                        <input type="text" class="form-control timepicker" name="ftime" 
                                               value="<?php echo isset($_POST['ftime']) ? $_POST['ftime'] : '00:00'; ?>">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">To Time</label>
                                        <input type="text" class="form-control timepicker" name="ttime" 
                                               value="<?php echo isset($_POST['ttime']) ? $_POST['ttime'] : '23:59'; ?>">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" name="filter" class="btn btn-info btn-block">Apply Filter</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Quick Stats Row -->
        <div class="row quick-stats-row">

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">people</i>
                        </div>
                        <p class="card-category">Total Visits</p>
                        <h3 class="card-title"><?php echo $total; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">date_range</i>
                            <?php echo date('d/m/Y', strtotime($fdate)) . " to " . date('d/m/Y', strtotime($tdate)); ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon male-icon">
                            <i class="material-icons">person</i>
                        </div>
                        <p class="card-category">Male</p>
                        <h3 class="card-title"><?php echo $male; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">show_chart</i>
                            <?php echo $total > 0 ? round(($male/$total)*100, 1) : 0; ?>% of total
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-rose card-header-icon">
                        <div class="card-icon female-icon">
                            <i class="material-icons">person_outline</i>
                        </div>
                        <p class="card-category">Female</p>
                        <h3 class="card-title"><?php echo $female; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">show_chart</i>
                            <?php echo $total > 0 ? round(($female/$total)*100, 1) : 0; ?>% of total
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">today</i>
                        </div>
                        <p class="card-category">Today</p>
                        <h3 class="card-title"><?php echo $today_count; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">update</i>
                            <?php echo date('d/m/Y'); ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Charts and Detailed Analytics -->
        <div class="row">
            <!-- Daily Visits Chart -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header card-header-info">
                        <h4 class="card-title">Daily Visits Trend</h4>
                        <p class="card-category">Number of visits per day</p>
                    </div>
                    <div class="card-body">
                        <canvas id="dailyChart" width="400" height="200"></canvas>
                        <?php
                        $daily_data = array();
                        $daily_labels = array();
                        while($row = mysqli_fetch_assoc($daily_result)) {
                            $daily_labels[] = date('d M', strtotime($row['date']));
                            $daily_data[] = $row['visits'];
                        }
                        ?>
                    </div>
                </div>
            </div>

            <!-- Hourly Distribution Chart -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title">Hourly Distribution</h4>
                        <p class="card-category">Visits by hour of day</p>
                    </div>
                    <div class="card-body">
                        <canvas id="hourlyChart" width="400" height="200"></canvas>
                        <?php
                        $hourly_data = array_fill(0, 24, 0);
                        $hourly_labels = array();
                        while($row = mysqli_fetch_assoc($hourly_result)) {
                            $hourly_data[$row['hour']] = $row['count'];
                        }
                        for($i=0; $i<24; $i++) {
                            $hourly_labels[] = sprintf("%02d:00", $i);
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>

        <!-- Top Visitors Table -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-success">
                        <h4 class="card-title">Top 10 Frequent Visitors</h4>
                        <p class="card-category">Most active students in selected period</p>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead class="text-success">
                                    <tr>
                                        <th>Rank</th>
                                        <th>USN</th>
                                        <th>Name</th>
                                        <th>Visits</th>
                                        <th>Last Visit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $rank = 1;
                                    while($row = mysqli_fetch_assoc($top_students_result)) {
                                        // Get last visit date
                                        $usn = $row['cardnumber'];
                                        $last_visit_sql = $slib == "Master" ? 
                                            "SELECT date FROM `inout` WHERE cardnumber='$usn' ORDER BY date DESC LIMIT 1" :
                                            "SELECT date FROM `inout` WHERE cardnumber='$usn' AND `loc`='$slib' ORDER BY date DESC LIMIT 1";
                                        $last_visit_result = mysqli_query($conn, $last_visit_sql);
                                        $last_visit = mysqli_fetch_row($last_visit_result);
                                        ?>
                                        <tr>
                                            <td><?php echo $rank++; ?></td>
                                            <td><?php echo $row['cardnumber']; ?></td>
                                            <td><?php echo $row['name']; ?></td>
                                            <td><?php echo $row['visit_count']; ?></td>
                                            <td><?php echo $last_visit ? date('d/m/Y', strtotime($last_visit[0])) : 'N/A'; ?></td>
                                        </tr>
                                        <?php
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
</div>

<!-- JavaScript for Charts -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
// Daily Visits Chart
const dailyCtx = document.getElementById('dailyChart').getContext('2d');
const dailyChart = new Chart(dailyCtx, {
    type: 'line',
    data: {
        labels: <?php echo json_encode($daily_labels); ?>,
        datasets: [{
            label: 'Daily Visits',
            data: <?php echo json_encode($daily_data); ?>,
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 2,
            tension: 0.1
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Number of Visits'
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Date'
                }
            }
        }
    }
});

// Hourly Distribution Chart
const hourlyCtx = document.getElementById('hourlyChart').getContext('2d');
const hourlyChart = new Chart(hourlyCtx, {
    type: 'bar',
    data: {
        labels: <?php echo json_encode($hourly_labels); ?>,
        datasets: [{
            label: 'Visits per Hour',
            data: <?php echo json_encode($hourly_data); ?>,
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Number of Visits'
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Hour of Day'
                }
            }
        }
    }
});
</script>

<!-- MAIN CONTENT ENDS -->
<?php
if(isset($_GET['msg'])) {
    if($_GET['msg']=="Evening"){
        echo "<script type='text/javascript'>showNotification('top','right','Good Evening ".$_SESSION['user_name']."', 'info');</script>";
    }
    if($_GET['msg']=="Morning"){
        echo "<script type='text/javascript'>showNotification('top','right','Good Morning ".$_SESSION['user_name']."', 'info');</script>";
    }
    if($_GET['msg']=="Noon"){
        echo "<script type='text/javascript'>showNotification('top','right','Good After Noon ".$_SESSION['user_name']."', 'info');</script>";
    }
}
require_once "./template/footer.php";
// ob_end_flush();
?>