# Add full access permission to mailbox
Add-MailboxPermission -Identity sharedmailbox@yourdomain.com -User john.doe@yourdomain.com -AccessRights FullAccess
