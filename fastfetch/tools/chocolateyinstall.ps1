$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.38.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'E4B05CE4713FCFD3A5563CBB3CE3DBB884CBD8A8AC23E8FE11F39F0294F0BA50'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
