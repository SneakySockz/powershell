# Get all users with a specific license, e.g. ENTERPRISEPACK (Office 365 E3)
Get-MsolUser -All | Where-Object { $_.Licenses.AccountSkuId -like "*ENTERPRISEPACK*" }
