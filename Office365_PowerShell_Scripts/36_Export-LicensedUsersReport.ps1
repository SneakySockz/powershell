# Export report of licensed users
Get-MsolUser -All | Where-Object { $_.IsLicensed } | Select UserPrincipalName, DisplayName, Licenses | Export-Csv LicensedUsersReport.csv -NoTypeInformation
