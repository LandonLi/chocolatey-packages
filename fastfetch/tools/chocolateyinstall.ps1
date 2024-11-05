$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '0857FDB59A9A14593BE8B08F968E3A05E2BAB2B441F0DC9A23B094DB95844797'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
