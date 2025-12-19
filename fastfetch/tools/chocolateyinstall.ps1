$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.56.1/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'E8BE5DD22F96B4D23AB8FCD64396F40114DBD7AA0A1A0C4DCC7442A63EFAC7E6'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
