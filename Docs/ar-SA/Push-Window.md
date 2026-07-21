# Push-Window

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `pushw`

## Synopsis

> يدفع الإطار الحالي إلى مكدّس الإطارات مع تعديلات اختيارية.

## Description

يدفع مساعد نافذة للنافذة المركزة حاليًا إلى المكدس.
يسمح بتطبيق تحويلات مختلفة للنافذة قبل أو بعد الدفع.
تلتقط هذه الوظيفة النافذة الحالية وتخزنها لاسترجاعها لاحقًا
مع Pop-Window، مع تطبيق اختياري لتحديد المواقع والحجم والتأثيرات
البصرية.

## Syntax

```powershell
Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] -Height <Int32> [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -Width <Int32> [<CommonParameters>]

Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -X <Int32> -Y <Int32> [<CommonParameters>]

Push-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeOut] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-PassThru] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Maximize` | SwitchParameter | — | — | Named | — | The `-Maximize` parameter. *(Parameter set: )* |
| `-Minimize` | SwitchParameter | — | — | Named | — | The `-Minimize` parameter. *(Parameter set: )* |
| `-Restore` | SwitchParameter | — | — | Named | — | The `-Restore` parameter. *(Parameter set: )* |
| `-Hide` | SwitchParameter | — | — | Named | — | The `-Hide` parameter. *(Parameter set: )* |
| `-Show` | SwitchParameter | — | — | Named | — | The `-Show` parameter. *(Parameter set: )* |
| `-NoBorders` | SwitchParameter | — | — | Named | — | The `-NoBorders` parameter. *(Parameter set: )* |
| `-AlwaysOnTop` | SwitchParameter | — | — | Named | — | The `-AlwaysOnTop` parameter. *(Parameter set: )* |
| `-Opacity` | Byte | — | — | Named | — | The `-Opacity` parameter. *(Parameter set: )* |
| `-X` | Int32 | ✅ | — | Named | `-999999` | The `-X` parameter. *(Parameter set: )* |
| `-Y` | Int32 | ✅ | — | Named | `-999999` | The `-Y` parameter. *(Parameter set: )* |
| `-Width` | Int32 | ✅ | — | Named | `-1` | The `-Width` parameter. *(Parameter set: )* |
| `-Height` | Int32 | ✅ | — | Named | `-1` | The `-Height` parameter. *(Parameter set: )* |
| `-Focus` | SwitchParameter | — | — | Named | — | The `-Focus` parameter. *(Parameter set: )* |
| `-FadeOut` | SwitchParameter | — | — | Named | — | The `-FadeOut` parameter. *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | The `-Left` parameter. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | The `-Right` parameter. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | The `-Top` parameter. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | The `-Bottom` parameter. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | The `-Centered` parameter. *(Parameter set: )* |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | — | The `-Monitor` parameter. *(Parameter set: )* |

## Examples

### Push-Window -Maximize -AlwaysOnTop Maximizes the current window, sets it to be always on top, and pushes it onto the stack.

```powershell
Push-Window -Maximize -AlwaysOnTop
Maximizes the current window, sets it to be always on top, and pushes it onto the stack.
```

### Push-Window -X 100 -Y 100 -Width 800 -Height 600 -NoBorders Positions and resizes the current window, removes its borders, and pushes it onto the stack.

```powershell
Push-Window -X 100 -Y 100 -Width 800 -Height 600 -NoBorders
Positions and resizes the current window, removes its borders, and pushes it onto the stack.
```

### pushw -Left Positions the current window on the left half of the screen and pushes it onto the stack using the alias.

```powershell
pushw -Left
Positions the current window on the left half of the screen and pushes it
onto the stack using the alias.
```

### Push-Window -Monitor 1 -Maximize Moves the current window to the first monitor, maximizes it, and pushes it onto the stack.

```powershell
Push-Window -Monitor 1 -Maximize
Moves the current window to the first monitor, maximizes it, and pushes it onto the stack.
```

### Push-Window -Monitor -2 -Fullscreen Moves the current window to the secondary monitor, makes it fullscreen, and pushes it onto the stack. ##############################################################################

```powershell
Push-Window -Monitor -2 -Fullscreen
Moves the current window to the secondary monitor, makes it fullscreen,
and pushes it onto the stack.
##############################################################################
```

## Parameter Details

### `-Maximize`

> The `-Maximize` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Minimize`

> The `-Minimize` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Restore`

> The `-Restore` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Hide`

> The `-Hide` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Show`

> The `-Show` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-NoBorders`

> The `-NoBorders` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-AlwaysOnTop`

> The `-AlwaysOnTop` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Opacity <Byte>`

> The `-Opacity` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-X <Int32>`

> The `-X` parameter.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Position |

<hr/>
### `-Y <Int32>`

> The `-Y` parameter.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | `-999999` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Position |

<hr/>
### `-Width <Int32>`

> The `-Width` parameter.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Height <Int32>`

> The `-Height` parameter.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Focus`

> The `-Focus` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-FadeOut`

> The `-FadeOut` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Left`

> The `-Left` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Right`

> The `-Right` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Top`

> The `-Top` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Bottom`

> The `-Bottom` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Centered`

> The `-Centered` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-ShowWindow`

> The `-ShowWindow` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

<hr/>
### `-Monitor <Int32>`

> The `-Monitor` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `m`, `mon` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Dimensions |

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
- [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WindowsUpdate.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Pop-Window.md)
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
