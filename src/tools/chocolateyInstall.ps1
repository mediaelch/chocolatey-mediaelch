$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.12/MediaElch_win_2.8.12_2021-05-10_06-59_git-master-08ebf8c0.zip'
  checksum       = 'C0A5261CB1CA964D26A13AFA872C7A2AD5BB98FF6B7AA3EA69CA61A63EBAFA97'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs