# Get users who haven't changed password for 90 days
$threshold = (Get-Date).AddDays(-90)
Get-MsolUser -All | Where-Object { $_.LastPasswordChangeTimestamp -lt $threshold }
