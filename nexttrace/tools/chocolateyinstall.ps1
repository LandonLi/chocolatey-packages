$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nxtrace/NTrace-core/releases/download/v1.3.3/nexttrace_windows_amd64.exe'
$Checksum64 = '2443e34a806d601158a3ccc141da5fea0af375c686166c57cd290105f57059cf'

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
