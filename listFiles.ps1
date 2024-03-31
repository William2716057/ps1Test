# Display message
Write-Host "Listing files and directories in current directory"

# Get list of items
$items = Get-ChildItem

# Iterate over each item
foreach ($item in $items) {
    # Check if item is directory
    if ($item.PSIsContainer) {
        Write-Host "Directory: $($item.Name)"
    } else {
        Write-Host "File: $($item.Name)"
    }
}
