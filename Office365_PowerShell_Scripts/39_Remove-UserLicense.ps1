# Remove all licenses from a user
$licenses = (Get-MsolUser -UserPrincipalName john.doe@yourdomain.com).Licenses.AccountSkuId
Set-MsolUserLicense -UserPrincipalName john.doe@yourdomain.com -RemoveLicenses $licenses
