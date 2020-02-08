$Proclamation = "Print, BOO." 
$AcceptedBirthdays = @()
$AcceptedBirthdays += New-Object psobject -Property @{
    Date = "0205"
    Name = "Michelle"
    }
$AcceptedBirthdays += New-Object psobject -Property @{
    Date = "0207"
    Name = "Cory"
    }
$AcceptedBirthdays | foreach {
    If ((get-date -Format MMdd) -eq $_.Date) {
        $Proclamation = "Happy Birthday, " + $_.Name + "!!!"}
    }
$Proclamation
