write-host "meny"
Write-Host "1. Ny användare"
Write-Host "2. Avsluta"
$choice = Read-Host "Välj ett alternativ"

if ($choice -eq 1) {
    Write-Host "Vad är ditt namn"
    $fullname = read-host "name user"
    Write-Host "Användare $fullname skapad"
}

if ($choice -eq 2) {
    exit
}
 write-host "test"