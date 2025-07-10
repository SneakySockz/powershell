# Export mailbox sizes report
Get-Mailbox -ResultSize Unlimited | Get-MailboxStatistics | Select DisplayName, TotalItemSize | Export-Csv MailboxSizes.csv -NoTypeInformation
