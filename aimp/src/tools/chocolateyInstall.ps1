$packageName = 'aimp';
$installerType = 'exe';
$url = 'http://aimp.su/storage/883710e1b745238f08d892a6cbf0c8da/aimp_4.10.1827.exe';
$validExitCodes = @(0);

$targetPath = $env:ProgramFiles;
if (Get-ProcessorBits 64) {
  $targetPath = ${env:ProgramFiles(x86)};
}

$silentArgs = "/SILENT /AUTO='$targetPath\AIMP3'";

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
