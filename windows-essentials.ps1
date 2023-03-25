# Set execution policy to unrestricted
Set-ExecutionPolicy Unrestricted -Scope Process

# Display menu with options
Write-Host "Please select an option:"
Write-Host "1. Open https://massgrave.dev/get | iex as admin"
Write-Host "2. Open https://christitus.com/win | iex as admin"
Write-Host "3. Link to download Microsoft Office"

# Read user's choice
$choice = Read-Host "Enter choice (1, 2, or 3)"

# Execute the chosen command as admin or open the link
switch ($choice) {
    1 {
        Start-Process powershell.exe "-Command irm https://massgrave.dev/get | iex" -Verb RunAs
        break
    }
    2 {
        Start-Process powershell.exe "-Command iwr -useb https://christitus.com/win | iex" -Verb RunAs
        break
    }
    3 {
        Start-Process "https://massgrave.dev/office_c2r_links.html"
        break
    }
    default {
        Write-Host "Invalid choice. Please enter 1, 2, or 3."
        break
    }
}

# Reset execution policy to default (optional)
Set-ExecutionPolicy Restricted -Scope Process
