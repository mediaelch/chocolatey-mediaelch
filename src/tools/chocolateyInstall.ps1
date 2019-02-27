$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.6.0/MediaElch_2.6.0_win.zip'
  checksum       = '739C3B2B40FCCC55475060F66B893BBA549A6EBD5102743091D5462AB5E038CB'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs