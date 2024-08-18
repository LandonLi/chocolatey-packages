$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/nilaoda/BBDown/releases/download/1.6.3/BBDown_1.6.3_20240814_win-x64.zip' 
  softwareName  = 'bbdown*'
  checksum      = '40f1e2af0d4e74df765c6f93d2e931f9bea201d5168d0bc62dc35a54b7e0ec02'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
