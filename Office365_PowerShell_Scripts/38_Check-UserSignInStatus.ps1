# Check if a user is allowed to sign in
Get-MsolUser -UserPrincipalName john.doe@yourdomain.com | Select UserPrincipalName, BlockCredential
