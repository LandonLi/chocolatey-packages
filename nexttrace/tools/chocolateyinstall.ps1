$ErrorActionPreference = 'Stop';

$url64 = 'https://gh.landon.li/https://github.com/nxtrace/NTrace-core/releases/download/v1.3.2/nexttrace_windows_amd64.exe'
$Checksum64 = '2b720847044c43f7a4045096959c7c12747e32e45d97f9aae892a9f359fc6da9'

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
