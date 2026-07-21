# Set-MonitorPowerOff

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `poweroff`

## Synopsis

> Вимикає живлення всіх підключених моніторів.

## Description

Використовує виклики Windows API для надсилання сигналу вимкнення живлення на всі підключені монітори. Це еквівалентно натисканню фізичної кнопки живлення на моніторах. Монітори перейдуть у режим енергозбереження, але можуть бути пробуджені рухом миші або натисканням клавіші.

## Syntax

```powershell
Set-MonitorPowerOff [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-MonitorPowerOff
```

Вимикає всі підключені монітори.

### Example 2

```powershell
poweroff
```

Вимикає всі підключені монітори за допомогою псевдоніма.

## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-KnownFolderPath.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-PathUsingWindowsDefender.md)
