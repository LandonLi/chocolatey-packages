$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.70.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '89E5A20F46AC04B154C7D0EA13DBAC97E43F799A98D7AE4C598863BA357A8C7F'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
