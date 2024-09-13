$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nxtrace/NTrace-core/releases/download/v1.3.4/nexttrace_windows_amd64.exe'
$Checksum64 = '972279a14e668ab34cc4af3b20d14617de77be922a9494f18ba645b4da6410c8'

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
