# Remove mailbox permission
Remove-MailboxPermission -Identity sharedmailbox@yourdomain.com -User john.doe@yourdomain.com -AccessRights FullAccess
