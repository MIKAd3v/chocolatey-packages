$ErrorActionPreference = 'Stop'
 $packageName = 'aimp';

$url32 = 'http://aimp.su/storage/59acee55a1e037aa93a3a417512ee79d/aimp_4.12.1880.exe';
$checksum32  = '59acee55a1e037aa93a3a417512ee79d'

$targetPath = $env:ProgramFiles;
if (Get-ProcessorBits 64) {
  $targetPath = ${env:ProgramFiles(x86)};
}

$silentArgs = "/SILENT /AUTO='$targetPath\AIMP4'";

$packageArgs = @{
  packageName            = $packageName
  fileType               = 'EXE'
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'md5'
  silentArgs             = $silentArgs
  validExitCodes         = @(0)
  registryUninstallerKey = $packageName
}

Install-ChocolateyPackage @packageArgs;
