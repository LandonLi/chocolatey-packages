$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'A9D48C2E4A93840916CF61DE2796F77CDE9B8625F6C78CC8072382538C77D36C'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
