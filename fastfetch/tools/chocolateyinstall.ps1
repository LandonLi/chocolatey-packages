$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.34.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '5F894C3E72B84B76DE53CCE3F2F74127FF877DFDB7204CA1511F4B77433241D4'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
