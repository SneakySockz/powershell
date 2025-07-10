Basics of PowerShell in one handy location

With the increase in AI tools, sometimes it's handy just to have one source of truth and a portfolio to rely on if AI was to ever fail.
With the below, each has its outlined function for users who are only beginning in M365.
More complex scripts I've created can be seen in the other repo's I'm generated which will tailor towards more complex tasks or automation flows.

01_Connect-MsolService.ps1
Connects to the MSOnline service, required for many user/license management cmdlets.

02_Connect-ExchangeOnline.ps1
Connects to Exchange Online PowerShell. Prompts for credentials.

03_Connect-SPOService.ps1
Connects to SharePoint Online Admin Center. Change the URL to your tenant.

04_Connect-MicrosoftTeams.ps1
Connects to Microsoft Teams PowerShell module.

05_Get-AllUsers.ps1
Retrieves all users in the tenant.

06_Get-UsersWithLicense.ps1
Finds users with a specific license SKU (example: ENTERPRISEPACK). Modify license SKU as needed.

07_Create-NewUser.ps1
Creates a new user and assigns a license. Update parameters like UserPrincipalName and license SKU.

08_Reset-UserPassword.ps1
Resets a user's password and forces password change at next login.

09_Block-UserSignIn.ps1
Blocks user sign-in (disables account).

10_Unblock-UserSignIn.ps1
Unblocks user sign-in (enables account).

11_Get-LicenseDetails.ps1
Shows all license SKUs available in the tenant.

12_Assign-LicenseToUser.ps1
Assigns a license to a user. Modify license SKU as needed.

13_Remove-LicenseFromUser.ps1
Removes a license from a user.

14_Get-MailboxInfo.ps1
Retrieves mailbox details for a specific user.

15_Set-MailboxSizeLimits.ps1
Sets mailbox quota limits (warning, send, send/receive).

16_Get-MailboxPermissions.ps1
Lists permissions set on a mailbox.

17_Add-FullAccessPermission.ps1
Grants Full Access permissions to a user for a shared mailbox.

18_Remove-MailboxPermission.ps1
Removes Full Access permission from a user.

19_List-AllTeams.ps1
Lists all Microsoft Teams in the tenant.

20_Get-TeamMembers.ps1
Lists members of a specific Team. Replace <GroupId> with actual GroupId.

21_Add-TeamUser.ps1
Adds a user to a Microsoft Team.

22_Remove-TeamUser.ps1
Removes a user from a Microsoft Team.

23_Get-SPOSites.ps1
Lists all SharePoint Online site collections.

24_Create-SPOSite.ps1
Creates a new SharePoint site collection. Update URL, Owner, Title, and quota.

25_Set-SPOSiteQuota.ps1
Sets storage quota for a SharePoint site.

26_Get-SPOUsers.ps1
Lists all users with access to a given SharePoint site.

27_Get-InactiveUsers.ps1
Finds users who haven't changed their password in the last 90 days.

28_Export-AllUsersCSV.ps1
Exports all users to a CSV file.

29_BulkCreateUsersFromCSV.ps1
Bulk creates users from a CSV file with UserPrincipalName and DisplayName columns.

30_Get-DistributionGroups.ps1
Lists all distribution groups in the tenant.

31_Get-DistGroupMembers.ps1
Lists members of a specified distribution group.

32_Add-DistGroupMember.ps1
Adds a user to a distribution group.

33_Remove-DistGroupMember.ps1
Removes a user from a distribution group.

34_Search-AuditLogs.ps1
Searches unified audit logs for user sign-in events in the last 7 days.

35_Get-MFAEnabledUsers.ps1
Lists users with MFA enabled.

36_Export-LicensedUsersReport.ps1
Exports a report of all licensed users to CSV.

37_Export-MailboxSizes.ps1
Exports mailbox sizes for all mailboxes to CSV.

38_Check-UserSignInStatus.ps1
Checks if a user is blocked from signing in.

39_Remove-UserLicense.ps1
Removes all licenses assigned to a user.

40_Grant-AppRoleToUser.ps1
Grants an Azure AD app role to a user (advanced, requires IDs).
