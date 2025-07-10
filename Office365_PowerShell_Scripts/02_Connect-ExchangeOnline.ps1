# Connect to Exchange Online
$UserCredential = Get-Credential
Connect-ExchangeOnline -Credential $UserCredential
