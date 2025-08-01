$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.49.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'BDD309929F43158D3984B90AFBEC201BA6B93422D7835F05A08ABF3A22C1393F'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
