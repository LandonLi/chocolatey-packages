$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.40.4/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '7CABCA2D4F7D574BEF429C1BDD7674C4082180E2C8EA18A1EDC630F959E1D4D0'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
