param($distance,$filename)

$lines=@()
$step=32

$lastx=0
$lasty=0
$lastz=0
for ($x = $distance % $step ; $x -le $distance; $x=$x+$step) {
    $lastz=0
    for ($z = $distance % $step; $z -le $distance; $z=$z+$step) {
        $lasty=0
        for ($y = 50 % $step; $y -le 50 ; $y= $y+$step) {
            $lines += "fill ~$x  ~$y ~$z  ~$lastx  ~$lasty ~$lastz air"
            $lines += "fill ~-$x ~$y ~$z  ~-$lastx ~$lasty ~$lastz air"
            $lines += "fill ~$x  ~$y ~-$z ~$lastx  ~$lasty ~-$lastz air"
            $lines += "fill ~-$x ~$y ~-$z ~-$lastx ~$lasty ~-$lastz air"
            $lastY=$y
        }
        $lastZ=$z
    }
    $lastX=$x
}

Set-Content -Path $filename -Value $lines