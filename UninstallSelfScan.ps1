$MyApp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "Yardi Systems SelfScan"}
$MyApp.Uninstall()