$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.36.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '86C594F7E1F4D13794C227478F4E875BA7C2A8617781A5CEBE173B05AF4CB02D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
