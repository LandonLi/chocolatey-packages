$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.48.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'D4279CED95E47B868C38043BF911B072FDB05BE86F503672FFCC0A48DB7DB774'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
