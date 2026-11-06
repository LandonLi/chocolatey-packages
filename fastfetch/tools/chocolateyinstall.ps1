$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.71.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = '58EEEE82C52120E981891826BE1C5810788BC0083B13D870684BBC85B03628E9'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
