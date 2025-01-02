$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nxtrace/NTrace-core/releases/download/v1.3.6/nexttrace_windows_amd64.exe'
$Checksum64 = '231ee1cbc9193dbfc672dc34ea47f4ac0ccee7a977cb5f3abf06f7c3eac02f4a'

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
