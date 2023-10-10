# Import the Active Directory module
Import-Module ActiveDirectory

# Specify the usernames of the accounts to enable (replace with actual usernames)
$usernamesToEnable = "Angelica"  # Replace with the actual usernames

# Loop through the usernames and enable each user account
foreach ($username in $usernamesToEnable) {
    # Check if the user exists
    $user = Get-ADUser -Identity $username

    if ($user) {
        # Enable the user account
        Enable-ADAccount -Identity $username
        Write-Host "User account '$username' has been enabled."
    } else {
        Write-Host "User account '$username' not found."
    }
}