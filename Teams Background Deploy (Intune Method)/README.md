# Teams Background Deploy (Intune Method)

This folder contains PowerShell scripts and resources for deploying custom Microsoft Teams backgrounds to users at scale using Microsoft Intune.

## Purpose

Automatically push branded or curated Teams background images to users' devices. This is useful for:
- Company branding and compliance
- Event-specific backgrounds
- Ensuring all users have access to approved backgrounds

## How the Deployment Works

1. **Prepare Background Images**  
   Collect your desired `.jpg` or `.png` images. These will be deployed to users.

2. **PowerShell Script**  
   The script copies the background images into Teams' custom backgrounds directory on the user's device:
   - Default path for Windows:  
     ```
     %APPDATA%\Microsoft\Teams\Backgrounds\Uploads
     ```

3. **Packaging for Intune**  
   - Package the script and images using a tool like the [Microsoft Win32 Content Prep Tool](https://learn.microsoft.com/en-us/mem/intune/apps/apps-win32-app-management).
   - Upload the package to Intune as a Win32 app.

4. **Deployment via Intune**  
   - Assign the Win32 app to users/devices in your tenant.
   - When deployed, users will find your custom backgrounds available in Teams.

## Usage Steps

1. **Edit the Script**  
   - Update file paths and image names in the script if necessary.

2. **Test Locally**  
   - Run the script manually as the target user to verify it places images correctly.

3. **Prepare Deployment Package**  
   - Place the script and images in a folder.
   - Use the [Win32 Content Prep Tool](https://github.com/Microsoft/Microsoft-Win32-Content-Prep-Tool) to generate the `.intunewin` package.

4. **Upload to Intune**  
   - In the Intune portal, add a new Win32 app.
   - Upload your `.intunewin` file.
   - Set install/uninstall commands as needed (install: `powershell.exe -ExecutionPolicy Bypass -File .\DeployTeamsBackgrounds.ps1`).

5. **Assign and Monitor**  
   - Assign to user/device groups.
   - Monitor deployment status in Intune.

## Troubleshooting

- Ensure the script runs with user permissions so it can access `%APPDATA%`.
- Verify that image files are supported formats (.jpg, .png).
- If users do not see the backgrounds, confirm Teams has synced and the images are in the correct folder.

## Contributing

- Add new deployment tips, alternative packaging methods, or script improvements!
- Open issues for bugs or enhancement requests.

---

**For more details on packaging and deploying Win32 apps via Intune, see the [official Microsoft documentation](https://learn.microsoft.com/en-us/mem/intune/apps/apps-win32-app-management).**
