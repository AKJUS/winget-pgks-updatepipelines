

$latestVersionUrl = $WebsiteURL
# download latest version from loupedeck.com and get version by filename
$versionInfo = Get-ProductVersionFromFile -WebsiteURL $WebsiteURL -VersionInfoProperty "ProductVersion"

return [PSCustomObject]@{
    Version = $versionInfo
    URLs = $latestVersionUrl
  }