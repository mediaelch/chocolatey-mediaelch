$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.6/MediaElch_win_2.8.6_2021-01-22_git-f215c8a6.zip'
  checksum       = 'E2183EB091114477C13DCDDF473356B47DC364CF565792D32C95DAA1FFB9564A'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs