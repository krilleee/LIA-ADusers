function Convert-ToUsername {
    param (
        [string]$Name
    )

    # Lägg till så den delar upp namnet i förnamn och efternman här och lägg som variablar $firstname och $lastname

    # Make small letters
    $username = $Name.ToLower()

    # change åäö
    $username = $username.Replace("å","a")
    $username = $username.Replace("ä","a")
    $username = $username.Replace("ö","o")

    # Split firstname and lastname with .
    $parts = $username.Split(" ")

    if ($parts.Length -ge 2) {
        $username = "$($parts[0]).$($parts[1])"
    }

    return $username
}

function New-User {

    $name = Read-Host "Ange för och efternamn"

    $username = Convert-ToUsername $name
    $mail = "$username@lyko.com"

    $PSStyle.Progress.View = 'Classic'

    

    Clear-Host
    Write-Host ""
    Write-Host "Användare skapad:"
    Write-Host "Username: $username"
    Write-Host "Mail: $mail"
    Write-Host ""
    exit
}

function Show-Menu {
    while ($true) {

        Write-Host ""
        Write-Host "==== MENY ===="
        Write-Host "1 - Ny användare"
        Write-Host "2 - Avsluta"


        $choice = Read-Host "Välj"

        switch ($choice) {

            "1" { New-User }
            "2" { exit }
            default { Write-Host "Fel val" }

        }
    }
}

Show-Menu