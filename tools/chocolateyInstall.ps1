$ErrorActionPreference = 'Stop';

$url = 'https://github.com/mkinney/snet/releases/download/v0.4/snet-windows-amd64.zip'
$checksum = '820db11b09a471f9a7a6c08a2d77b118'
$checksumType = 'md5'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "snet" "$url" "$unzipLocation" "$url" -checksum $checksum -checksumType $checksumType
