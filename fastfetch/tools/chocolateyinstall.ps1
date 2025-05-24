$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fastfetch-cli/fastfetch/releases/download/2.44.0/fastfetch-windows-amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'fastfetch*'
  checksum      = 'CB19B80FC9023DAE8D9C959F3068A3709EDD74503B90EFBFB00842ED0397304D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
