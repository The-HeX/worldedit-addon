param($distance,$filename)

$lines=@()
$step=32

$lastx=0
$lasty=0
$lastz=0
for ($x = $distance % $step ; $x -le $distance; $x=$x+$step) {
    $lastz=0
    for ($z = $distance % $step; $z -le $distance; $z=$z+$step) {        
        $lines += "fill ~$x ~-1 ~$z  ~$lastx  ~-1 ~$lastz grass"
        $lines += "fill ~$x ~-2 ~$z  ~$lastx  ~-3 ~$lastz dirt"
        $lines += "fill ~$x ~-4 ~$z  ~$lastx  ~-6 ~$lastz stone"

        $lines += "fill ~-$x ~-1 ~$z  ~-$lastx  ~-1 ~$lastz grass"
        $lines += "fill ~-$x ~-2 ~$z  ~-$lastx  ~-3 ~$lastz dirt"
        $lines += "fill ~-$x ~-4 ~$z  ~-$lastx  ~-6 ~$lastz stone"

        $lines += "fill ~$x ~-1 ~-$z  ~$lastx  ~-1 ~-$lastz grass"
        $lines += "fill ~$x ~-2 ~-$z  ~$lastx  ~-3 ~-$lastz dirt"
        $lines += "fill ~$x ~-4 ~-$z  ~$lastx  ~-6 ~-$lastz stone"

        $lines += "fill ~-$x ~-1 ~-$z  ~-$lastx  ~-1 ~-$lastz grass"
        $lines += "fill ~-$x ~-2 ~-$z  ~-$lastx  ~-3 ~-$lastz dirt"
        $lines += "fill ~-$x ~-4 ~-$z  ~-$lastx  ~-6 ~-$lastz stone"

        $lastZ=$z
    }
    $lastX=$x
}

Set-Content -Path $filename -Value $lines