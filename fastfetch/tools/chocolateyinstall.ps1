$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'C75E9693786A64C086A7806CBD89888D9AE6C9196D90113B4B9CA4069CD71E26'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
