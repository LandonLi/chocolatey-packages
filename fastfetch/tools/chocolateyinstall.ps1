$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.56.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '0151092830B906E951FFA7A9ECB4F66C7E57C42A953F6889358211EF62D0F1E5'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
