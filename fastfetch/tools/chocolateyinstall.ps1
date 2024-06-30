$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'CECDC4B86B272D8B75B96250FEFBBEEF940082B6321F727EE198F9DD26C6A668'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
