$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.14/MediaElch_win_2.8.14_2022-02-06_git-84e18bb2.zip'
  checksum       = '1F686C6BCE1B263E444F0C24D7AE1AF0C216A4FD4F4994D54A3633A574CF92B7'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs