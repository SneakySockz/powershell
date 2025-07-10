# Search unified audit logs for UserLoggedIn events last 7 days
Search-UnifiedAuditLog -StartDate (Get-Date).AddDays(-7) -EndDate (Get-Date) -Operations "UserLoggedIn" | Format-Table
