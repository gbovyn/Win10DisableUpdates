REM Disable Windows Update
sc config "wuauserv" start= disabled
sc stop "wuauserv"

REM Disable Update Orchestrator Service
sc config "UsoSvc" start= disabled
sc stop "UsoSvc"

REM Delete scheduled tasks related to Windows Updates
schtasks /delete /tn "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /f

schtasks /delete /tn "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install" /f
schtasks /delete /tn "\Microsoft\Windows\UpdateOrchestrator\Schedule Retry Scan" /f
schtasks /delete /tn "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /f
schtasks /delete /tn "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display" /f

schtasks /delete /tn "\Microsoft\Windows\InstallService\ScanForUpdates" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\SmartRetry" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /f

schtasks /delete /tn "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /f
