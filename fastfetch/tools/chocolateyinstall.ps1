$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/latest/download/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '4478A35E19C83500D4D08F40C371B26CDE8A864A8B206198B9F5154D4A385D53'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
