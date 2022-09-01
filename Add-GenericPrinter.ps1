add-printer -name "Generic /Text Only" -DriverName "Generic / Text Only" -PortName "LPT1:"

$printer = Get-CimInstanc -Class Win32_Product -Filter "name = Generic /Text Only"
Invoke-CmiInstance -InputObject $printer -MethodName SetDefaultPrinter