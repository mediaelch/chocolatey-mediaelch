$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'http://www.kvibes.de/releases/mediaelch/2.4.2/MediaElch-2.4.2-1.zip'
  checksum       = '754ABB2B41BE123DB973AE0FD6A3573102DE345E03799E7905C44AE49B984C4D'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs