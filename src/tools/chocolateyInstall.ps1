$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.8/MediaElch_win_2.8.8_2021-04-27_git-14260f64.zip'
  checksum       = '7BE44F81F40712B4B483EC8BA2726916D0F99F96F1BC713E02A2D70B605B78D8'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs