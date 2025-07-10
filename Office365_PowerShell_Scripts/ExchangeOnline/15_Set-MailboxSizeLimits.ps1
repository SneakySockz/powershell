# Set mailbox quota limits
Set-Mailbox -Identity john.doe@yourdomain.com -ProhibitSendQuota 4.5GB -ProhibitSendReceiveQuota 5GB -IssueWarningQuota 4GB
