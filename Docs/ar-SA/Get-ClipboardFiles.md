# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles`, `gcbf`

## Synopsis

> يحصل على الملفات من الحافظة في Windows التي تم تعيينها لعمليات الملفات مثل النسخ واللصق.

## Description

* تسترجع هذه الدالة مسارات الملفات من حافظة Windows التي تم تعيينها مسبقًا لعمليات الملفات.
* تتعامل مع وضعي الخيوط STA وMTA تلقائيًا، مما يضمن التوافق عبر سياقات تنفيذ PowerShell المختلفة.
* تتحقق الدالة من وجود الملفات وتعيد فقط الملفات/المجلدات الموجودة ككائنات مشابهة لإخراج Get-ChildItem أو Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

الحصول على جميع الملفات الموجودة حالياً في الحافظة ككائنات نظام الملفات.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

الحصول على ملفات الحافظة وعرض مساراتها الكاملة.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

احصل على ملفات نصية فقط من الحافظة.

## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ChildProcesses.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Initialize-ScheduledTaskScripts.md)
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-PathUsingWindowsDefender.md)
