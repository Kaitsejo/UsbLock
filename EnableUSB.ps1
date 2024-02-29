#Active les ports USB
Get-PnpDevice -Class USB|Enable-PnpDevice
