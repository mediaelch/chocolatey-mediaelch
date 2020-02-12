$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.6.4/MediaElch_2.6.4_win.zip'
  checksum       = '6279625A8E0541E1B411F9DB0C55B70ED42DBA15009E729CFAA12FF1B4983ACA'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs