$packageName = 'aimp';
$installerType = 'exe';
$url = 'http://aimp.su/storage/59acee55a1e037aa93a3a417512ee79d/aimp_4.12.1880.exe';
$validExitCodes = @(0);

$targetPath = $env:ProgramFiles;
if (Get-ProcessorBits 64) {
  $targetPath = ${env:ProgramFiles(x86)};
}

$silentArgs = "/SILENT /AUTO='$targetPath\AIMP4'";

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
