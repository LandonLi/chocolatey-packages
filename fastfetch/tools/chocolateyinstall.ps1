$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.37.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'D501634B0E5AFD69BCF26DE56214B654C473D24AD3E479CF76B1F2DE7D8C96BF'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
