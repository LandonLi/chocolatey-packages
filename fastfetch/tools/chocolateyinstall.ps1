$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.46.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'A9F089EA29EBC7BBC6F58C6CD3FEEFA9913879BC755CF346A87D5AAC8CE0A2C7'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
