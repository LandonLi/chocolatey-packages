$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.40.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'A4BE5CFF07E60BDF835A010E2AEA7EB6DD72C9F39878340F8918E4264F86CB67'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
