Get-ChildItem -Filter *.MOV | ForEach-Object {
    $name = $_.BaseName
    Write-Host $name
    & ffmpeg -i $_.Name -c:v libvpx -b:v 1M -c:a libvorbis -y "${name}.webm"
}