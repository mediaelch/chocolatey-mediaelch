$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.2/MediaElch_win_2.8.2_2020-12-20_git-8ee88442.zip'
  checksum       = 'FA52DED943F4538FE0F9BFE3693E7673AF73EFD9740FD840D0686B396A0E129C'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs