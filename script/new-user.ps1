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
$fullname = $fullname.ToLower()
write-host "Förnamn: $firstname"
write-host "Efternamn: $lastname"
$fullname = $fullname -replace "å", "a"
$fullname = $fullname -replace "ä", "a"
$fullname = $fullname -replace "ö", "o"

$partsusername = $fullname.split(" ")

write-host "användarnamn är $($partsusername[0]).$($partsusername[1])"
write-host "mailadressen är $($partsusername[0]).$($partsusername[1])@lyko.com" 
write-host "company: Lyko"
write-host "department"
write-host "title 1 : IT-support" 
write-host "title 2 : kundservice"
write-host "title 3 : säljare"
write-host "title 4 : marknadsföring"
write-host "title 5 : ekonomi"
write-host "title 6 : HR"
write-host "title 7 : logistik"
write-host "title 8 : inköp"
write-host "title 9 : finans"
$department = Read-Host "Välj en titel" 
if ($department -eq 1) {
    write-host "skriver in berhörigheten i AD"
}
