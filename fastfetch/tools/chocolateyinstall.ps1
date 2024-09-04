$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '5EEE2E2C96AE4C39D9C522704AC51AC805C99C19017E43645AA762E6C941EE32'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
