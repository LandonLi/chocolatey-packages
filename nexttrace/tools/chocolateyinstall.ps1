$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nxtrace/NTrace-core/releases/download/v1.7.5/nexttrace_windows_amd64.exe'
$Checksum64 = '9b2ec6879d22a0e08a726c2f2db9a0643ed07b2184bca7b8df9c3b94333f3f8c'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileFullPath   = "$toolsDir\$env:ChocolateyPackageName.exe"
  url64bit       = $url64
  checksum64     = $Checksum64
  checksumType64 = "sha256"
}

$localFileArgs = @{
  name = $env:ChocolateyPackageName
  path = $toolsDir
}

Get-ChocolateyWebFile @fileArgs
Install-BinFile @localFileArgs
