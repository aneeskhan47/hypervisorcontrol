$Host.UI.RawUI.WindowTitle = "HypervisorControl by aneeskhan47"

# Display the header
Write-Host "|--------------------------------------------|" -ForegroundColor Yellow
Write-Host -NoNewline "|" -ForegroundColor Yellow
Write-Host -NoNewline "      HypervisorControl by aneeskhan47      " -ForegroundColor Green
Write-Host "|" -ForegroundColor Yellow
Write-Host "|                                            |" -ForegroundColor Yellow

# Displaying the GitHub link in white
Write-Host -NoNewline "|" -ForegroundColor Yellow
Write-Host -NoNewline "   github: https://github.com/aneeskhan47   " -ForegroundColor White
Write-Host "|" -ForegroundColor Yellow

Write-Host "|--------------------------------------------|" -ForegroundColor Yellow
Write-Host ""

# Check for Administrator Privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (-not $isAdmin) {
  Write-Host "Please run the tool as administrator. `n" -ForegroundColor Red
  Write-Host "Press enter to close the tool." -ForegroundColor Yellow
  $null = Read-Host
  Exit
}

function Get-ValidChoice {
  param (
    [string]$prompt,
    [string[]]$validChoices
  )
  do {
    $choice = Read-Host $prompt
    if ($choice -notin $validChoices) {
      Write-Host "Invalid choice. Please select a valid option Y or N. `n" -ForegroundColor Red
    }
  } while ($choice -notin $validChoices)
  return $choice
}

# Check the current state of Hyper-V
$hyperv = Get-WindowsOptionalFeature -Online -FeatureName Hyper-V
if ($hyperv.State -eq "Enabled") {
  Write-Host "Hyper-V is enabled. `n" -ForegroundColor Green
  $choice = Get-ValidChoice "Would you like to disable Hypervisor? (Y/N)" @( "Y", "N" )
  if ($choice -eq "Y") {
    bcdedit /set hypervisorlaunchtype Off
    Write-Host "Hyper-V has been disabled. `n" -ForegroundColor Green
  }
  else {
    Write-Host "You have chosen not to disable Hyper-V. `n" -ForegroundColor Red
    Write-Host "Press enter to close the tool." -ForegroundColor Yellow
    $null = Read-Host
    Exit
  }
}
else {
  Write-Host "Hyper-V is disabled." -ForegroundColor Red
  $choice = Get-ValidChoice "Would you like to enable Hypervisor? (Y/N)" @( "Y", "N" )
  if ($choice -eq "Y") {
    bcdedit /set hypervisorlaunchtype Auto
    Write-Host "Hyper-V has been enabled. `n" -ForegroundColor Green
  }
  else {
    Write-Host "You have chosen not to enable Hyper-V. `n" -ForegroundColor Red
    Write-Host "Press enter to close the tool." -ForegroundColor Yellow
    $null = Read-Host
    Exit
  }
}

# Ask the user if they'd like to restart their system
$restartChoice = Get-ValidChoice "Would you like to restart the system? (Y/N)" @( "Y", "N" )
if ($restartChoice -eq "Y") {
  Restart-Computer
}
else {
  Write-Host "You have chosen not to restart the system. `n" -ForegroundColor Red
  Write-Host "To apply the changes, please restart the system. `n" -ForegroundColor Red
  Write-Host "Press enter to close the tool." -ForegroundColor Yellow
  $null = Read-Host
  Exit
}
