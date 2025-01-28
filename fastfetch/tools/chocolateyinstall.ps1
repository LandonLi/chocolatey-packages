$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.35.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '95C8C0E12107422C33BF9EBFE13410903DC3D86ADF7F7C97D2AEF4C837A8FFA2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
