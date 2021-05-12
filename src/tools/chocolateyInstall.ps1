$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.10/MediaElch_win_2.8.10_2021-05-03_git-8fa99efb.zip'
  checksum       = 'BADE502884B44FD7992C4FD1BE8509E77692C7906A876F464A47C3A5B43A359C'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs