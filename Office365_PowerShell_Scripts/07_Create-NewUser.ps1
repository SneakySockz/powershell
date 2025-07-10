# Create a new user with a license
New-MsolUser -UserPrincipalName john.doe@yourdomain.com -DisplayName "John Doe" -FirstName John -LastName Doe -LicenseAssignment "yourtenant:ENTERPRISEPACK"
