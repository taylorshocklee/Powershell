﻿CD "C:\Program Files (x86)\Dell\CommandUpdate"
.\dcu-cli.exe /configure -silent -autoSuspendBitLocker=enable -userConsent=disable
.\dcu-cli.exe /scan -outputLog=C:\dell\logs\scan.log
.\dcu-cli.exe /applyUpdates -reboot=disable -outputLog=C:\dell\logs\applyUpdates.log  