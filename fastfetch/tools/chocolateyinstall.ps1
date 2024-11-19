$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '5BB18679DA203CD75A8B81ACE9A1B3C27007C83BB8EDAF81BB129DBC767AE932'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
