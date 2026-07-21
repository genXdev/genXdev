# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> يتحقق مما إذا كان Windows محدثًا ويقوم اختياريًا بتثبيت التحديثات المتاحة.

## Description

تتحقق هذه الوظيفة من تحديثات ويندوز، وتحديثات حزم Winget، وتحديثات وحدات PowerShell. يمكنها عرض التحديثات المتاحة أو تثبيتها تلقائيًا. تتطلب الوظيفة صلاحيات إدارية لتثبيت تحديثات ويندوز، ويمكنها اختياريًا إعادة تشغيل النظام إذا كانت التحديثات تتطلب إعادة تشغيل.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | تثبيت تحديثات ويندوز المتوفرة تلقائيًا |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | إعادة التشغيل تلقائيًا إذا تطلب التحديث إعادة تشغيل |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | معايير بحث تحديث Windows المخصصة |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | تضمين برامج التشغيل في البحث عن التحديثات |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | قم بتضمين التحديثات الاختيارية وأطلب تثبيت كل منها |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | تجميع المخرجات وتلوينها حسب فئة التحديث |
| `-NoBanner` | SwitchParameter | — | — | Named | — | إيقاف إخراج اللافتة/الحالة |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | تجاوز فحص/الإبلاغ عن متطلبات إعادة التشغيل |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

التحقق من وجود تحديثات متاحة لنظام ويندوز وwinget دون تثبيتها.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

يقوم بتثبيت جميع تحديثات Windows وwinget المتاحة تلقائيًا.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

يقوم بتثبيت جميع التحديثات وإعادة التشغيل تلقائيًا إذا لزم الأمر باستخدام الاسم المستعار.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

يعرض التحديثات المتاحة مجمعة حسب الفئة لتنظيم أفضل.

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

يقوم بتثبيت جميع التحديثات الهامة تلقائيًا ويطلب الموافقة على كل تحديث اختياري بشكل فردي، مما يسمح بالتثبيت الانتقائي للتحديثات الاختيارية.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

يتحقق من وجود تحديثات تشمل برامج التشغيل بمعايير بحث مخصصة.

## Parameter Details

### `-Install`

> تثبيت تحديثات ويندوز المتوفرة تلقائيًا

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoReboot`

> إعادة التشغيل تلقائيًا إذا تطلب التحديث إعادة تشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Criteria <String>`

> معايير بحث تحديث Windows المخصصة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeDrivers`

> تضمين برامج التشغيل في البحث عن التحديثات

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ProcessOptionalUpdates`

> قم بتضمين التحديثات الاختيارية وأطلب تثبيت كل منها

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GroupByCategory`

> تجميع المخرجات وتلوينها حسب فئة التحديث

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBanner`

> إيقاف إخراج اللافتة/الحالة

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRebootCheck`

> تجاوز فحص/الإبلاغ عن متطلبات إعادة التشغيل

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ClipboardFiles.md)
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
