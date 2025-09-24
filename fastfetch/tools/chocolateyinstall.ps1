$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.53.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'D37EEAE05504AEBCD710CCB85E6602940E8B781F535665ADE0CAA19445A251EC'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
