$package = "VMware-tools-10.2.1-8267844-x86_64.exe"
$url = "https://packages.vmware.com/tools/releases/10.2.1/windows/x64/$package"

Write-Output "***** Downloading VMWare tools"
Invoke-WebRequest $url -UseBasicParsing -OutFile "C:\Windows\Temp\$package"

$exe = "C:\Windows\Temp\$package"
$parameters = '/S /v "/qn REBOOT=R ADDLOCAL=ALL"'

Write-Output "***** Installing VMWare Guest Tools"
Start-Process $exe $parameters -Wait

Write-Output "***** Deleting $isopath"
Remove-Item $exe