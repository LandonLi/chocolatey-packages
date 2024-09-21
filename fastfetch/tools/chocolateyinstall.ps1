$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '9E953E11B6AB4B9FD02AA6436CA2EF5AA87F0274EB55FCAE882D67EC97AB695E'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
