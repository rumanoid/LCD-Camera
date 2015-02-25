#!/usr/bin/perl
$count = $ARGV[0];
for($i=1;$i<=$count;$i++){
$proc = sprintf("%.0f",$i/$count*100);
$cmd = "lcd Taking_Pictures " . "Progress:" . $proc . "%";
system($cmd);
$cmd = "raspistill -o /home/pi/CameraLCD/Output/" . $i . ".jpg";
system($cmd);
};
system("lcd Done!"); 
