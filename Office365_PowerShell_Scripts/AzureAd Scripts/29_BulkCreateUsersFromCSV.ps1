# Bulk create users from CSV file (expects UserPrincipalName, DisplayName columns)
Import-Csv users.csv | ForEach-Object {
    New-MsolUser -UserPrincipalName $_.UserPrincipalName -DisplayName $_.DisplayName -Password "DefaultPassword123" -ForceChangePassword $true
}
