# Reset a user's password forcing password change at next login
Set-MsolUserPassword -UserPrincipalName john.doe@yourdomain.com -NewPassword "NewPassword123!" -ForceChangePassword $true
