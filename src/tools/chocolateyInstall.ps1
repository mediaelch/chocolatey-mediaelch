$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.6.6/MediaElch_2.6.6_win.zip'
  checksum       = '6E4329FCE0D547DDB262521D78DE7B4071080994768BE6BEC1EC56F4380C849B'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs