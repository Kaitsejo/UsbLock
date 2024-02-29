#désactive les ports USB
Get-PnpDevice -Class USB|Disable-PnpDevice 2>$null
