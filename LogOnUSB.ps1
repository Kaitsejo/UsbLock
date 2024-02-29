# Définir les paramètres de la tâche planifiée
$Action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument '-File "C:\EnableUSB.ps1"'
$Trigger = New-ScheduledTaskTrigger -AtLogon
$Settings = New-ScheduledTaskSettingsSet
$Principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -LogonType ServiceAccount

# Créer la tâche planifiée
$Task = New-ScheduledTask -Action $Action -Principal $Principal -Trigger $Trigger -Settings $Settings
Register-ScheduledTask -TaskName "EnableUSBatLogon" -InputObject $Task
