# Reset a user's password forcing password change at next login
Set-MsolUserPassword -UserPrincipalName john.doe@yourdomain.com -NewPassword "*" -ForceChangePassword $true
