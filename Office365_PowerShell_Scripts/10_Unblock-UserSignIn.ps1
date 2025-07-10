# Unblock user sign-in (enable account)
Set-MsolUser -UserPrincipalName john.doe@yourdomain.com -BlockCredential $false
