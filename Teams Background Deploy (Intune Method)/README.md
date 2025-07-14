# Teams Background Deploy (Intune Method)

This folder contains PowerShell scripts and resources for deploying custom Microsoft Teams backgrounds to users' devices using Microsoft Intune as a platform script.

## Purpose

Enable automated distribution of branded or approved Teams background images to end-user devices for:
- Company branding and compliance
- Special events or campaigns
- Ensuring all users have access to approved backgrounds

## Deployment Method

**This solution is designed to be used exclusively as an Intune platform script.**  
You will deploy the PowerShell script to target devices via Microsoft Intune. The script runs in the user's context and copies background images to the correct Teams directory.

### Teams 2.0/Desktop Backgrounds Path

Custom backgrounds for the new Teams desktop client are stored in:
```
%LOCALAPPDATA%\Packages\MSTeams_8wekyb3d8bbwe\LocalCache\Microsoft\MSTeams\Backgrounds\Uploads
```

## Image Requirements

- **Recommended Image Dimensions:**  
  - 1920 × 1080 pixels (16:9 aspect ratio) for optimal quality and appearance.
- **File Formats:**  
  - `.jpg` or `.png` are supported.
- **Thumbnail Requirement:**  
  - For each background image, a corresponding thumbnail image is required.  
  - Thumbnail images should be named with `_thumb` appended before the file extension (e.g., `background1_thumb.jpg`).
  - Thumbnail dimensions should ideally be **300 × 190 pixels**.

## Shared Location

To ensure consistency and accessibility:
- Store all background and thumbnail images in a shared network location (e.g., a file server accessible to all target users).
- The PowerShell script should be configured to copy images from this shared location to the Teams backgrounds folder on each device when run.

**Example shared path:**  
```
\\YourFileServer\TeamsBackgrounds\
```
Ensure all devices/users have read access to this network share.

## Usage Instructions

1. **Prepare Images**
   - Upload your `.jpg` or `.png` background images and their corresponding thumbnails to the shared network folder.

2. **Configure the PowerShell Script**
   - Make sure the script copies all images and thumbnails from the shared folder (e.g., `\\YourFileServer\TeamsBackgrounds\`) to the user's Teams backgrounds path.

3. **Deploy with Intune**
   - In the Intune admin portal, add a new platform script.
   - Upload the PowerShell script.
   - Set the script to run in the user context (not system context).
   - Assign the script to the target user/device groups.

4. **Result**
   - After deployment, users will see your backgrounds available in Teams when choosing video backgrounds.

## Troubleshooting

- Make sure the script runs in the user's context so it can access `%LOCALAPPDATA%`.
- Only use supported image formats and recommended dimensions.
- Ensure each background has a matching thumbnail image.
- Confirm all target devices/users have access rights to the shared network folder.
- Teams client must be updated to the new desktop version (Teams 2.0+) for this path to work.
- If backgrounds don’t appear, verify that the images are present in the target folder and that Teams is running with the correct profile.

## Contributing

- Suggestions for improved scripting, troubleshooting steps, or documentation are welcome!
- Please open issues for bugs or feature requests.

---

**Note:**  
This method is intended solely for Intune platform script deployment on Windows devices running the new Microsoft Teams desktop client.  
For more information on Teams background locations and supported formats, see [Microsoft’s documentation](https://learn.microsoft.com/en-us/microsoftteams/hardware-requirements-for-the-teams-app).
