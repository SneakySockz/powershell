# Prerequisite PowerShell Modules

This document lists the PowerShell modules required to use the scripts in this repository, including Teams background deployment and other automation tasks.

## Core Modules (Required)

These modules are included by default in Windows PowerShell and PowerShell Core; no manual installation is normally required:

- **Microsoft.PowerShell.Management**  
  For file system operations, copying files, creating directories.
- **Microsoft.PowerShell.Utility**  
  For output formatting, control flow, and general script utilities.
- **Microsoft.PowerShell.Security**  
  For managing execution policies and file permissions.

## How to Check for Required Modules

You can check if the required modules are available on your system with:
```powershell
Get-Module -ListAvailable | Where-Object { $_.Name -in @('Microsoft.PowerShell.Management','Microsoft.PowerShell.Utility','Microsoft.PowerShell.Security') }
```

## Script Execution Policy

Some scripts may require adjusting your execution policy:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
> **Note:** When deploying via Intune, configure your script deployment to run with the needed permissions.

## Optional Modules

If you extend automation or add reporting features, you may want to install extra modules such as:
- **ImportExcel** (for exporting logs or reports to Excel)
- **PSReadLine** (for enhanced script editing experience)

Install optional modules with:
```powershell
Install-Module -Name ImportExcel -Scope CurrentUser
```

## Troubleshooting

- If a script fails due to a missing module, use `Install-Module` to manually add it.
- Always test scripts on a non-production device before large-scale deployment.

---

**For Teams background deployment, only the core modules above are needed. If you customize scripts for cloud services or advanced reporting, add those modules here and update this README.**
