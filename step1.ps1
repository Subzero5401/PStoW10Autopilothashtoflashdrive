$computerbios = get-wmiobject Win32_bios
$computerbios = $computerbios.serialnumber
$computerbios = $computerbios + '.txt'
#Set-PSDebug -Trace 1 this is a dug line of code run for more in-depth diagnostics
#Will need to be connected to the internet to run the next script 
install-script -Name Get-WindowsAutoPilotinfo
#Next script drop the file in the listed directory must put on thumbdrive and sent to systems or desktop engineering
Get-WindowsAutopilotinfo.ps1 -OutputFile D:\$computerbios
#pause to view any error if necessary 
pause