# Get-ActiveUser

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gusers`

## Synopsis

> Récupère une liste de noms d'utilisateurs uniques à partir des processus système actuellement actifs.

## Description

Interroge tous les processus en cours d'exécution sur le système, extrait le nom d'utilisateur associé à chaque processus et renvoie une liste dédoublonnée des utilisateurs qui ont des processus actifs. Cela est utile pour l'administration système et la surveillance de la sécurité.

## Syntax

```powershell
Get-ActiveUser [<CommonParameters>]
```

## Examples

### Get-ActiveUser Returns a list of all unique usernames with active processes.

```powershell
Get-ActiveUser
Returns a list of all unique usernames with active processes.
```

### gusers Uses the alias to get the same results. ##############################################################################

```powershell
gusers
Uses the alias to get the same results.
##############################################################################
```

## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnable-Screensaver.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInitialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRInvoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPush-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSave-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSend-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSend-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRSet-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRTest-PathUsingWindowsDefender.md)
