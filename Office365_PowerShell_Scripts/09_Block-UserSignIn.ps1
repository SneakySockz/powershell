# Block user sign-in (disable account)
Set-MsolUser -UserPrincipalName john.doe@yourdomain.com -BlockCredential $true
