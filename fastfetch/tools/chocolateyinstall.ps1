$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.55.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '57ABA7AA46C21091D0CB242D0AAD021CEBFB3B8FEC40A7E4CEF1B301AB774C96'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
