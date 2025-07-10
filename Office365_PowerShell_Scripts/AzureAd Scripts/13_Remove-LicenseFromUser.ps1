# Remove license from user
Set-MsolUserLicense -UserPrincipalName john.doe@yourdomain.com -RemoveLicenses "yourtenant:ENTERPRISEPACK"
