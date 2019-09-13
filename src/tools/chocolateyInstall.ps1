$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.6.2/MediaElch_2.6.2_win.zip'
  checksum       = '2A3DDE38A3B249D78679B2646909F142515AD715C46B1E7B9FA896AB51C0D623'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs