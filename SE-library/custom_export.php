<?php
session_start();
require "functions/dbconn.php";
require "functions/dbfunc.php";
require "functions/general.php";
require_once 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

// ===================== GET PARAMETERS =====================
$report_type = $_GET['type'] ?? 'datewise';
$slib = $_SESSION['loc'] ?? 'Master';
$cname = $_SESSION['lib'] ?? 'Library';

// Get and convert dates properly 
$fdate = $_GET['fdate'] ?? date('Y-m-d');
$tdate = $_GET['tdate'] ?? date('Y-m-d');

// Convert dates s
$fdate = str_replace('/', '-', $fdate);
$fdate = date("Y-m-d", strtotime($fdate));
$tdate = str_replace('/', '-', $tdate);
$tdate = date("Y-m-d", strtotime($tdate));

// Handle time 
$ttime = '23:59:59';

if (!empty($_GET['ftime'])) {
    $ftime_input = $_GET['ftime'];
    if (strpos($ftime_input, 'AM') !== false || strpos($ftime_input, 'PM') !== false) {
        $ftime = date("H:i:s", strtotime($ftime_input));
    } else {
        $ftime = date("H:i:s", strtotime($ftime_input));
    }
}

if (!empty($_GET['ttime'])) {
    $ttime_input = $_GET['ttime'];
    if (strpos($ttime_input, 'AM') !== false || strpos($ttime_input, 'PM') !== false) {
        $ttime = date("H:i:s", strtotime($ttime_input));
    } else {
        $ttime = date("H:i:s", strtotime($ttime_input));
    }
}

// Additional parameters for different report types
$usn = $_GET['usn'] ?? '';
$rtype = $_GET['rtype'] ?? 'Detail';

// Get academic year from dates
$start_year = date('Y', strtotime($fdate));
$end_year = date('Y', strtotime($tdate));
if ($start_year == $end_year) {
    $academic_year = $start_year;
} else {
    $academic_year = $start_year . '-' . $end_year;
}

// Initialize variables
$data = [];
$summary = [];
$headers = [];
$report_title = '';

// ===================== GENERATE DATA BASED ON REPORT TYPE =====================
switch($report_type) {
    case 'datewise':
        
        if($slib == "Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and gender='M'";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and gender='M' and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $male = $result ? mysqli_fetch_row($result) : [0];
        
        if($slib == "Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and gender='F'";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and gender='F' and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $female = $result ? mysqli_fetch_row($result) : [0];
        
        if($slib == "Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate')";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $visit = $result ? mysqli_fetch_row($result) : [0];
        
        // Get main data
        if($slib == "Master"){
            $sql = "SELECT *  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate')";
        }else{
            $sql = "SELECT *  FROM `inout` where (entry between '$ftime' and '$ttime') and (date between '$fdate' and '$tdate') and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        
        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $data[] = [
                    'cardnumber' => $row['cardnumber'],
                    'name' => $row['name'],
                    'date' => $row['date'],
                    'entry' => $row['entry'],
                    'exit' => $row['exit'],
                    'loc' => $row['loc'],
                    'cc' => $row['cc'],
                    'branch' => $row['branch']
                ];
            }
            
            // Add summary row at the end
            $data[] = [
                'cardnumber' => 'Total',
                'name' => $visit[0] ?? 0,
                'date' => 'Male',
                'entry' => $male[0] ?? 0,
                'exit' => 'Female',
                'loc' => $female[0] ?? 0,
                'cc' => '',
                'branch' => ''
            ];
        }
        
        $headers = ['USN', 'Name', 'Date', 'Entry', 'Exit', 'Location', 'Category', 'Branch'];
        $report_title = 'Datewise Library Attendance Report';
        $summary = [
            'total' => $visit[0] ?? 0,
            'male' => $male[0] ?? 0,
            'female' => $female[0] ?? 0
        ];
        break;
        
    case 'student_short':
        $usn = strtoupper($usn);
        
        // First, populate tmp1 table
        if($slib == "Master"){
            $sql = "SELECT date, SUBTIME(`exit`,`entry`)  FROM `inout` WHERE `cardnumber`='$usn' AND `date` BETWEEN '$fdate' AND '$tdate'";
        }else{
            $sql = "SELECT date, SUBTIME(`exit`,`entry`)  FROM `inout` WHERE `cardnumber`='$usn' AND (`date` BETWEEN '$fdate' AND '$tdate') AND `loc`='$slib'";
        }
        
        $result = mysqli_query($conn, $sql);
        if ($result) {
            // Clear tmp1 table first
            mysqli_query($conn, "DELETE FROM `tmp1`");
            
            while ($row = mysqli_fetch_array($result)) {
                $secs = strtotime($row[1]) - strtotime("00:00:00");
                $query = "INSERT INTO `tmp1` (`date`, `secs`) VALUES ('".$row[0]."', '".$secs."');";
                mysqli_query($conn, $query);
            }
            
            // Get aggregated data
            $sql = "SELECT date, DAYNAME(`DATE`), SUM(`secs`) FROM `tmp1` GROUP BY date";
            $result = mysqli_query($conn, $sql);
            
            while ($row = mysqli_fetch_array($result)) {
                $time = "00:00:00";
                $tot = date("H:i", strtotime($time) + $row[2]);
                $data[] = [
                    'date' => $row[0],
                    'day' => $row[1],
                    'total_hours' => $tot . ' Hours'
                ];
            }
            
            // Clean up
            mysqli_query($conn, "TRUNCATE TABLE `tmp1`");
        }
        
        $headers = ['Date', 'Day', 'Total Hours'];
        $report_title = 'Student Short Report for USN: ' . $usn;
        break;
        
    case 'student_detail':
        $usn = strtoupper($usn);
        
        if($slib=="Master"){
            $sql = "SELECT date, SUBTIME(`exit`,`entry`), `exit`, `entry`, DAYNAME(`DATE`), `loc`  FROM `inout` WHERE `cardnumber`='$usn' AND `date` between '$fdate' and '$tdate'";
        }else{
            $sql = "SELECT date, SUBTIME(`exit`,`entry`), `exit`, `entry`, DAYNAME(`DATE`), `loc`  FROM `inout` WHERE `cardnumber`='$usn' AND (`date` between '$fdate' and '$tdate') and `loc`='$slib'";
        }
        
        $result = mysqli_query($conn, $sql);
        if ($result) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = [
                    'date' => $row[0],
                    'day' => $row[4],
                    'entry' => $row[3],
                    'exit' => $row[2],
                    'total_time' => $row[1],
                    'location' => $row[5]
                ];
            }
        }
        
        $headers = ['Date', 'Day', 'Entry', 'Exit', 'Total Time', 'Location'];
        $report_title = 'Student Detailed Report for USN: ' . $usn;
        break;
        
    case 'statistical':
        $idate = $fdate;
        
        if($slib=="Master"){
            $query = "SELECT * FROM `loc`";
            $res = mysqli_query($conn, $query);
            if ($res) {
                while($row=mysqli_fetch_array($res)){
                    do{
                        $sql = "SELECT count(sl), DAYNAME('$idate') FROM `inout` WHERE `date` = '$idate' AND `gender`='M' AND `loc`='$row[1]'";
                        $result = mysqli_query($conn, $sql);
                        $male = $result ? mysqli_fetch_row($result) : [0, ''];
                        
                        $sql = "SELECT count(sl)  FROM `inout` WHERE `date` = '$idate' AND `gender`='F' AND `loc`='$row[1]'";
                        $result = mysqli_query($conn, $sql);
                        $female = $result ? mysqli_fetch_row($result) : [0];
                        
                        $sql = "SELECT count(sl)  FROM `inout` WHERE `date` = '$idate' AND `loc`='$row[1]'";
                        $result = mysqli_query($conn, $sql);
                        $visit = $result ? mysqli_fetch_row($result) : [0];
                        
                        if($visit[0] != '0'){
                            $data[] = [
                                'date' => $idate,
                                'day' => $male[1] ?? '',
                                'boys' => $male[0] ?? 0,
                                'girls' => $female[0] ?? 0,
                                'visits' => $visit[0] ?? 0,
                                'location' => $row[1]
                            ];
                        }
                        
                        $idate=date_create("$idate");
                        date_add($idate,date_interval_create_from_date_string("1 days"));
                        $idate = date_format($idate,"Y-m-d");
                    }while ($idate<=$tdate);
                    $idate=$fdate;
                }
            }
        } else {
            do{
                $sql = "SELECT count(sl), DAYNAME('$idate') FROM `inout` WHERE `date` = '$idate' AND `gender`='M' AND `loc`='$slib'";
                $result = mysqli_query($conn, $sql);
                $male = $result ? mysqli_fetch_row($result) : [0, ''];
                
                $sql = "SELECT count(sl)  FROM `inout` WHERE `date` = '$idate' AND `gender`='F' AND `loc`='$slib'";
                $result = mysqli_query($conn, $sql);
                $female = $result ? mysqli_fetch_row($result) : [0];
                
                $sql = "SELECT count(sl)  FROM `inout` WHERE `date` = '$idate' AND `loc`='$slib'";
                $result = mysqli_query($conn, $sql);
                $visit = $result ? mysqli_fetch_row($result) : [0];
                
                if($visit[0] != '0'){
                    $data[] = [
                        'date' => $idate,
                        'day' => $male[1] ?? '',
                        'boys' => $male[0] ?? 0,
                        'girls' => $female[0] ?? 0,
                        'visits' => $visit[0] ?? 0,
                        'location' => $slib
                    ];
                }
                
                $idate=date_create("$idate");
                date_add($idate,date_interval_create_from_date_string("1 days"));
                $idate = date_format($idate,"Y-m-d");
            }while ($idate<=$tdate);
        }
        
        // Get totals
        if($slib=="Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate') and gender='M'";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate') and gender='M' and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $male_total = $result ? mysqli_fetch_row($result)[0] : 0;
        
        if($slib=="Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate') and gender='F'";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate') and gender='F' and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $female_total = $result ? mysqli_fetch_row($result)[0] : 0;
        
        if($slib=="Master"){
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate')";
        }else{
            $sql = "SELECT count(sl)  FROM `inout` where (date between '$fdate' and '$tdate') and `loc`='$slib'";
        }
        $result = mysqli_query($conn, $sql);
        $visit_total = $result ? mysqli_fetch_row($result)[0] : 0;
        
        // Add total row
        $data[] = [
            'date' => 'Total',
            'day' => '-',
            'boys' => $male_total,
            'girls' => $female_total,
            'visits' => $visit_total,
            'location' => '-'
        ];
        
        $headers = ['Date', 'Day', 'Boys', 'Girls', 'Visits', 'Location'];
        $report_title = 'Statistical Library Report';
        $summary = [
            'total_boys' => $male_total,
            'total_girls' => $female_total,
            'total_visits' => $visit_total
        ];
        break;
}

// ===================== CREATE EXCEL =====================
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

// Set default row height
$sheet->getDefaultRowDimension()->setRowHeight(18);

// ===================== HEADER SECTION =====================
$currentRow = 1;

// Set ALL rows to standard height
for ($i = 1; $i <= 100; $i++) {
    $sheet->getRowDimension($i)->setRowHeight(18);
}

// LEFT LOGO
if (file_exists('assets/img/logo.png')) {
    $drawingLeft = new Drawing();
    $drawingLeft->setName('Left Logo');
    $drawingLeft->setDescription('Left Logo');
    $drawingLeft->setPath('assets/img/logo.png');
    $drawingLeft->setHeight(35);
    $drawingLeft->setCoordinates('A1');
    $drawingLeft->setOffsetY(0);
    $drawingLeft->setWorksheet($sheet);
}

// RIGHT LOGO  
if (file_exists('assets/img/logo.png')) {
    $drawingRight = new Drawing();
    $drawingRight->setName('Right Logo');
    $drawingRight->setDescription('Right Logo');
    $drawingRight->setPath('assets/img/logo.png');
    $drawingRight->setHeight(35);
    $drawingRight->setCoordinates('H1');
    $drawingRight->setOffsetY(0);
    $drawingRight->setWorksheet($sheet);
}

// Determine the number of columns
$columnCount = count($headers);
$lastColumn = chr(64 + $columnCount);
$firstDataColumn = 'A';
$lastDataColumn = $lastColumn;

// CENTER: MABINI COLLEGES
$sheet->setCellValue('B1', 'MABINI COLLEGES INC.');
if ($columnCount >= 8) {
    $sheet->mergeCells('B1:G1');
    $sheet->getStyle('B1')->getFont()->setSize(16)->setBold(true);
    $sheet->getStyle('B1')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('B1')->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
} else {
    $mergeRange = 'B1:' . $lastDataColumn . '1';
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('B1')->getFont()->setSize(16)->setBold(true);
    $sheet->getStyle('B1')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('B1')->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
}

// CENTER: Library Location
$sheet->setCellValue('B2', strtoupper($slib) . ' LIBRARY');
if ($columnCount >= 8) {
    $sheet->mergeCells('B2:G2');
    $sheet->getStyle('B2')->getFont()->setSize(14);
    $sheet->getStyle('B2')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('B2')->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
} else {
    $mergeRange = 'B2:' . $lastDataColumn . '2';
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('B2')->getFont()->setSize(14);
    $sheet->getStyle('B2')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('B2')->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
}

// Row 3: Blank row
$currentRow = 3;
$sheet->setCellValue('A' . $currentRow, '');

// Row 4: Report Title
$currentRow = 4;
$sheet->setCellValue('A' . $currentRow, $report_title);
$mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
$sheet->mergeCells($mergeRange);
$sheet->getStyle('A' . $currentRow)->getFont()->setSize(14)->setBold(true);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);

// Row 5: (from Attendance Record of Inout Library System)
$currentRow = 5;
$sheet->setCellValue('A' . $currentRow, '(from Attendance Record of Inout Library System)');
$mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
$sheet->mergeCells($mergeRange);
$sheet->getStyle('A' . $currentRow)->getFont()->setSize(11);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);

// Row 6: Report Period
$currentRow = 6;
$sheet->setCellValue('A' . $currentRow, 'Report Period: ' . date('F j, Y', strtotime($fdate)) . ' to ' . date('F j, Y', strtotime($tdate)));
$mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
$sheet->mergeCells($mergeRange);
$sheet->getStyle('A' . $currentRow)->getFont()->setSize(11);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);

// Row 7: Additional info based on report type
$currentRow = 7;
if ($report_type == 'datewise' && ($ftime != '00:00:00' || $ttime != '23:59:59')) {
    $sheet->setCellValue('A' . $currentRow, 'Time: ' . date('h:i A', strtotime($ftime)) . ' to ' . date('h:i A', strtotime($ttime)));
    $mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('A' . $currentRow)->getFont()->setSize(11);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
} elseif ($report_type == 'student_short' || $report_type == 'student_detail') {
    $sheet->setCellValue('A' . $currentRow, 'Student USN: ' . $usn);
    $mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('A' . $currentRow)->getFont()->setSize(11);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
} else {
    $sheet->setCellValue('A' . $currentRow, '');
}

// Row 8: Blank row before table
$currentRow = 8;
$sheet->setCellValue('A' . $currentRow, '');

// ===================== TABLE HEADERS (YELLOW BACKGROUND) =====================
$currentRow = 9;

$col = 'A';
foreach ($headers as $header) {
    $cell = $col . $currentRow;
    $sheet->setCellValue($cell, $header);
    
    $sheet->getStyle($cell)->applyFromArray([
        'font' => ['bold' => true, 'color' => ['rgb' => '000000']],
        'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => 'FFFF00']],
        'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['rgb' => '000000']]],
        'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER]
    ]);
    
    $col++;
}

$currentRow++;

// ===================== TABLE DATA =====================
if (count($data) > 0) {
    $rowNumber = 0;
    
    foreach ($data as $row) {
        $col = 'A';
        
        // Add data to cells
        foreach ($row as $key => $value) {
            $sheet->setCellValue($col . $currentRow, $value);
            $col++;
        }
        
        // Alternating row colors
        if ($rowNumber % 2 == 0) {
            $fillColor = 'FFFFFF';
        } else {
            $fillColor = 'F2F2F2';
        }
        
        // Apply alternating background to entire row
        $rowRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
        $sheet->getStyle($rowRange)->applyFromArray([
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => $fillColor]],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['rgb' => '000000']]]
        ]);
        
        // Center align all cells
        $sheet->getStyle($rowRange)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle($rowRange)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
        
        // Enable wrap text for text columns
        if (isset($headers[1]) && $headers[1] == 'Name') {
            $sheet->getStyle('B' . $currentRow)->getAlignment()->setWrapText(true);
        }
        
        $currentRow++;
        $rowNumber++;
    }
    
} else {
    // No data message
    $sheet->setCellValue('A' . $currentRow, 'NO DATA FOUND');
    $mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('A' . $currentRow)->getFont()->setBold(true)->setSize(14);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    $sheet->getStyle('A' . $currentRow)->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
    $currentRow++;
}

// ===================== SUMMARY SECTION =====================
if (($report_type == 'datewise' || $report_type == 'statistical') && !empty($summary)) {
    $currentRow += 2;
    
    // Summary title
    $sheet->setCellValue('A' . $currentRow, 'SUMMARY');
    $mergeRange = 'A' . $currentRow . ':' . $lastDataColumn . $currentRow;
    $sheet->mergeCells($mergeRange);
    $sheet->getStyle('A' . $currentRow)->applyFromArray([
        'font' => ['bold' => true, 'size' => 12, 'color' => ['rgb' => '000000']],
        'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => 'FFFF00']],
        'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['rgb' => '000000']]],
        'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER, 'vertical' => Alignment::VERTICAL_CENTER]
    ]);
    $currentRow++;
    
    if ($report_type == 'datewise' && $columnCount >= 8) {
        // Datewise summary
        $sheet->setCellValue('B' . $currentRow, 'Total Visitors:');
        $sheet->setCellValue('C' . $currentRow, $summary['total']);
        $sheet->setCellValue('E' . $currentRow, 'Male:');
        $sheet->setCellValue('F' . $currentRow, $summary['male']);
        $sheet->setCellValue('G' . $currentRow, 'Female:');
        $sheet->setCellValue('H' . $currentRow, $summary['female']);
        
        $summaryRange = 'A' . $currentRow . ':H' . $currentRow;
        $sheet->getStyle($summaryRange)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['rgb' => '000000']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => '8CFF79']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['rgb' => '000000']]]
        ]);
        
        $sheet->getStyle('C' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle('F' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle('H' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    } elseif ($report_type == 'statistical' && $columnCount >= 6) {
        // Statistical summary
        $sheet->setCellValue('B' . $currentRow, 'Total Boys:');
        $sheet->setCellValue('C' . $currentRow, $summary['total_boys']);
        $sheet->setCellValue('E' . $currentRow, 'Total Girls:');
        $sheet->setCellValue('F' . $currentRow, $summary['total_girls']);
        $sheet->setCellValue('G' . $currentRow, 'Total Visits:');
        $sheet->setCellValue('H' . $currentRow, $summary['total_visits']);
        
        $summaryRange = 'A' . $currentRow . ':H' . $currentRow;
        $sheet->getStyle($summaryRange)->applyFromArray([
            'font' => ['bold' => true, 'color' => ['rgb' => '000000']],
            'fill' => ['fillType' => Fill::FILL_SOLID, 'startColor' => ['rgb' => '8CFF79']],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN, 'color' => ['rgb' => '000000']]]
        ]);
        
        $sheet->getStyle('C' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle('F' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle('H' . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
    }
}

// ===================== FOOTER SECTION =====================
$currentRow += 3;
$sheet->setCellValue('A' . $currentRow, '');
$currentRow++;

// Determine footer columns based on column count
if ($columnCount >= 8) {
    // Use original positions for 8 columns
    $preparedCol = 'C';
    $notedCol = 'F';
    $mergeEndPrepared = 'D';
    $mergeEndNoted = 'G';
    $timestampCol = 'G';
    $timestampMergeEnd = 'H';
} elseif ($columnCount >= 6) {
    // Adjust for 6 columns
    $preparedCol = 'B';
    $notedCol = 'D';
    $mergeEndPrepared = 'C';
    $mergeEndNoted = 'E';
    $timestampCol = 'E';
    $timestampMergeEnd = 'F';
} else {
    // For fewer columns
    $preparedCol = 'A';
    $notedCol = chr(64 + floor($columnCount/2) + 1);
    $mergeEndPrepared = chr(64 + floor($columnCount/2));
    $mergeEndNoted = $lastDataColumn;
    $timestampCol = $lastDataColumn;
    $timestampMergeEnd = $lastDataColumn;
}

// "Prepared by:" and "Noted by:" on the SAME ROW
$preparedByRow = $currentRow;
$notedByRow = $currentRow;

// Prepared by section
$sheet->setCellValue($preparedCol . $preparedByRow, 'Prepared by:');
$sheet->mergeCells($preparedCol . $preparedByRow . ':' . $mergeEndPrepared . $preparedByRow);
$sheet->getStyle($preparedCol . $preparedByRow)->getFont()->setBold(true)->setUnderline(true);
$sheet->getStyle($preparedCol . $preparedByRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Noted by section
$sheet->setCellValue($notedCol . $notedByRow, 'Noted by:');
$sheet->mergeCells($notedCol . $notedByRow . ':' . $mergeEndNoted . $notedByRow);
$sheet->getStyle($notedCol . $notedByRow)->getFont()->setBold(true)->setUnderline(true);
$sheet->getStyle($notedCol . $notedByRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Move to next row for names
$currentRow += 2;

// Prepared by name
$sheet->setCellValue($preparedCol . $currentRow, $_SESSION['user_name'] ?? 'Library Staff');
$sheet->mergeCells($preparedCol . $currentRow . ':' . $mergeEndPrepared . $currentRow);
$sheet->getStyle($preparedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$sheet->getStyle($preparedCol . $currentRow)->getFont()->setBold(true);

// Noted by name
$sheet->setCellValue($notedCol . $currentRow, 'Norma A. Mago, MLS, RL');
$sheet->mergeCells($notedCol . $currentRow . ':' . $mergeEndNoted . $currentRow);
$sheet->getStyle($notedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$sheet->getStyle($notedCol . $currentRow)->getFont()->setBold(true);

// Move to next row for signature lines
$currentRow++;

// Prepared by signature line
$sheet->setCellValue($preparedCol . $currentRow, '_________________________________');
$sheet->mergeCells($preparedCol . $currentRow . ':' . $mergeEndPrepared . $currentRow);
$sheet->getStyle($preparedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Noted by signature line
$sheet->setCellValue($notedCol . $currentRow, '_________________________________');
$sheet->mergeCells($notedCol . $currentRow . ':' . $mergeEndNoted . $currentRow);
$sheet->getStyle($notedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Move to next row for positions
$currentRow++;

// Prepared by position
$sheet->setCellValue($preparedCol . $currentRow, 'Library Staff');
$sheet->mergeCells($preparedCol . $currentRow . ':' . $mergeEndPrepared . $currentRow);
$sheet->getStyle($preparedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Noted by position
$sheet->setCellValue($notedCol . $currentRow, 'Chief Librarian');
$sheet->mergeCells($notedCol . $currentRow . ':' . $mergeEndNoted . $currentRow);
$sheet->getStyle($notedCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Footer timestamp
$currentRow += 2;
$sheet->setCellValue($timestampCol . $currentRow, 'Generated on: ' . date('F j, Y h:i A'));
$sheet->mergeCells($timestampCol . $currentRow . ':' . $timestampMergeEnd . $currentRow);
$sheet->getStyle($timestampCol . $currentRow)->getFont()->setSize(9)->setItalic(true);
$sheet->getStyle($timestampCol . $currentRow)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);

// ===================== FINAL COLUMN WIDTH OPTIMIZATION =====================
// Auto-size all columns
for ($col = 1; $col <= $columnCount; $col++) {
    $columnLetter = chr(64 + $col);
    $sheet->getColumnDimension($columnLetter)->setAutoSize(true);
}

// ===================== OUTPUT EXCEL FILE =====================
$filename = 'Library_Report_' . date('Ymd_His') . '.xlsx';

// Clear any output buffers
while (ob_get_level()) {
    ob_end_clean();
}

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $filename . '"');
header('Cache-Control: max-age=0');
header('Pragma: public');

$writer = new Xlsx($spreadsheet);
$writer->save('php://output');
exit;