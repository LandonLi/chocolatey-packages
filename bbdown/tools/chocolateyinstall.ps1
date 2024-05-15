$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/nilaoda/BBDown/releases/download/1.6.2/BBDown_1.6.2_20240512_win-x64.zip' 
  softwareName  = 'bbdown*'
  checksum      = 'F3DE55343CD07A57DBE2B5918FECD25B96292F3BF70010151D4514F4FE956945'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
