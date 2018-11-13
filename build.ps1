for ($i = 25; $i -le 500; $i+=25) {
    .\generators\clear.ps1 -distance $i -filename ".\functions\clear-$i.mcfunction"    
    .\generators\level.ps1 -distance $i -filename ".\functions\level-$i.mcfunction"    
}
 