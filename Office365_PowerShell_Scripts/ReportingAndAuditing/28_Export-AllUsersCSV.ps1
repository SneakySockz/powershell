# Export all users to CSV file
Get-MsolUser -All | Select UserPrincipalName, DisplayName, IsLicensed | Export-Csv users.csv -NoTypeInformation
