$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '6FBF7FAE8E27FA1D4476B380CD5B6C9BFCE67BBF74991B793317B31B20A91D60'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
