$url = $env:URL
$revision = $env:REVISION

if ($url -eq "" -or $null -eq $url) {
    $url = "https://svn.apache.org/repos/asf/subversion/trunk"
}

if ($revision -eq "" -or $null -eq $revision) {
    $revision = "HEAD"
}

svn checkout $url --revision $revision svn

$patches = Get-ChildItem ./svn-ci/patches/*.patch

$patches | ForEach-Object {
    $patchName = $_.Name
    Write-Host "Appling patch '$patchName'..."
    svn patch $_ ./svn
}
