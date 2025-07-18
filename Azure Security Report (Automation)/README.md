This PowerShell script connects to Microsoft Graph API to retrieve Azure AD sign-in logs from the past 7 days. It filters the logs to include only successful sign-ins, excludes entries from Ireland (IE), and optionally omits specific users. The filtered data is then processed and exported as a CSV report to the user's Documents folder.

🔍 Key Features:
Connects to Microsoft Graph using AuditLog.Read.All permission.
Retrieves sign-in logs from the last 7 days.
Filters:
Only successful sign-ins (ErrorCode -eq 0)
Excludes sign-ins from Ireland (CountryOrRegion -notlike "*IE*")
Optionally excludes specific users by UPN.
Outputs a structured CSV file with user, device, and location details.


🔁 Automating with Power Automate
You can fully automate this reporting process using Power Automate (formerly Microsoft Flow) by following these steps:

✅ 1. Schedule the Script Execution
Use the "Recurrence" trigger in Power Automate to run the flow on a schedule (e.g., daily or weekly).
Add a "Run a PowerShell script" action using:
Azure Automation Runbook (recommended for secure and scalable execution), or
On-premises data gateway if the script runs on a local server.
✅ 2. Store or Share the Output
After the script runs, use Power Automate to:
Upload the CSV to SharePoint, OneDrive, or Azure Blob Storage.
Send the report via email to stakeholders.
Trigger alerts or dashboards in Power BI or Teams.
✅ 3. Monitor and Log
Add logging or notification steps in Power Automate to track:
Script success/failure
Number of records exported
Any anomalies (e.g., no sign-ins found)
