param (
    $Url,
    $Revision
)

if ($url -eq "") {
    $url = "https://svn.apache.org/repos/asf/subversion/trunk"
}

if ($revision -eq "") {
    $revision = "HEAD"
}

svn checkout $url --revision $revision svn

$patches = Get-ChildItem ./svn-ci/patches/*.patch

$patches | ForEach-Object {
    svn patch $_ ./svn
}
