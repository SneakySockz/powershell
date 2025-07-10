# Get users with MFA enabled
Get-MsolUser -All | Where-Object { $_.StrongAuthenticationMethods.Count -gt 0 } | Select UserPrincipalName
