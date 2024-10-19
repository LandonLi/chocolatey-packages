$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nxtrace/NTrace-core/releases/download/v1.3.5/nexttrace_windows_amd64.exe'
$Checksum64 = 'd3827d85e7bf9c6ee9f4eb320c804dc386668ef60d4823226ac1969361f84d92'

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
