$root = "C:\Program Files\Microsoft Visual Studio\2022\Enterprise"
Import-Module "$root\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"
Enter-VsDevShell -VsInstallPath $root -DevCmdArguments "-arch=x64 -host_arch=x64"
