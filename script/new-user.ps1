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

$parts = $fullname.Split(" ") 
$firstname = $parts[0]
$lastname = $parts[1] 
write-host "Förnamn: $firstname"
write-host "Efternamn: $lastname"
$fullname = $fullname -replace "å", "a"
$fullname = $fullname -replace "ä", "a"
$fullname = $fullname -replace "ö", "o"

$partsusername = $fullname.split(" ")

write-host "$partsusername"
write-host "mailadressen är $($partsusername[0]).$($partsusername[1])@lyko.com" 