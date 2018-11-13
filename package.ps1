$filename=".\output\worldedit.zip"
Remove-Item -Path $filename
Compress-Archive -Path .\functions  -DestinationPath $filename
Compress-Archive -Path .\manifest.json -Update -DestinationPath $filename
move-item $filename ".\output\worldedit.mcpack"