param (
    [Parameter()]
    [ValidateNotNullOrEmpty()]
    [string]$ApiKey = $(throw "ApiKey is required.  Visit https://chocolatey.org/account to get your API key."),
    [switch]$Confirm = $false
)

$package = Get-ChildItem *.nupkg | Sort-Object | Select-Object -Last 1

if ($null -eq $package) {
    Write-Warning "No packages found."
    return
}

if ($Confirm) {
    $in = "y"
} else {
    $in = $null

    do {
        #$message = "" -f
        $in = Read-Host -Prompt "Is $($package.Name) the correct package to push? (Y/n)"
    } while ($in -notin @("y","n"))
}

if ($in -eq "y") {
    choco push $package.FullName --source https://push.chocolatey.org/ --apikey $apiKey
}
