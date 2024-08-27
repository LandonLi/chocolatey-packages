$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '061AC8D73A47F9278C05059C80E4F4E8AC1AEAA512322C4A7792ECAE1156F146'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
