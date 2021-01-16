$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.4/MediaElch_win_2.8.4_2021-01-09_git-28805a95.zip'
  checksum       = '1C9FF55C06F9A942F8B0EE4CAC3A5AD294FFE932C4654D76EBAD5101F3AF305F'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs