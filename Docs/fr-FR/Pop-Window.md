# Pop-Window

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `popw`

## Synopsis

> Extrait le dernier assistant de fenêtre active de la pile avec des modifications optionnelles.

## Description

Extrait une fenêtre auxiliaire de la pile et applique éventuellement des transformations à la fenêtre.
Si la pile est vide ou contient des fenêtres non valides, retourne la fenêtre actuellement focalisée.
Cette fonction vous permet de manipuler des fenêtres précédemment enregistrées avec Push-Window, en appliquant divers effets de positionnement, de dimensionnement et visuels.

## Syntax

```powershell
Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] -Height <Int32> [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -Width <Int32> [<CommonParameters>]

Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] -X <Int32> -Y <Int32> [<CommonParameters>]

Pop-Window [-AlwaysOnTop] [-Bottom] [-Centered] [-FadeIn] [-Focus] [-Hide] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-Opacity <Byte>] [-Restore] [-Right] [-Show] [-ShowWindow] [-Top] [<CommonParameters>]

Pop-Window [-NoModify] [<CommonParameters>]
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
| `-FadeIn` | SwitchParameter | — | — | Named | — | The `-FadeIn` parameter. *(Parameter set: )* |
| `-NoModify` | SwitchParameter | — | — | Named | — | The `-NoModify` parameter. *(Parameter set: )* |
| `-Left` | SwitchParameter | — | — | Named | — | The `-Left` parameter. *(Parameter set: )* |
| `-Right` | SwitchParameter | — | — | Named | — | The `-Right` parameter. *(Parameter set: )* |
| `-Top` | SwitchParameter | — | — | Named | — | The `-Top` parameter. *(Parameter set: )* |
| `-Bottom` | SwitchParameter | — | — | Named | — | The `-Bottom` parameter. *(Parameter set: )* |
| `-Centered` | SwitchParameter | — | — | Named | — | The `-Centered` parameter. *(Parameter set: )* |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | The `-ShowWindow` parameter. *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | — | The `-Monitor` parameter. *(Parameter set: )* |

## Examples

### Pop-Window -Maximize -Focus Pops the last window from the stack, maximizes it and gives it focus.

```powershell
Pop-Window -Maximize -Focus
Pops the last window from the stack, maximizes it and gives it focus.
```

### Pop-Window -X 100 -Y 100 -Width 800 -Height 600 -AlwaysOnTop Pops the last window, positions it at coordinates (100,100), resizes it to 800x600, and sets it to always stay on top.

```powershell
Pop-Window -X 100 -Y 100 -Width 800 -Height 600 -AlwaysOnTop
Pops the last window, positions it at coordinates (100,100),
resizes it to 800x600, and sets it to always stay on top.
```

### popw -Left -Focus Pops the last window, positions it on the left half of the screen, and gives it focus using the alias.

```powershell
popw -Left -Focus
Pops the last window, positions it on the left half of the screen,
and gives it focus using the alias.
```

### Pop-Window -Monitor 1 -Maximize Pops the last window, moves it to the first monitor, and maximizes it.

```powershell
Pop-Window -Monitor 1 -Maximize
Pops the last window, moves it to the first monitor, and maximizes it.
```

### Pop-Window -Monitor -2 -Fullscreen Pops the last window, moves it to the secondary monitor, and makes it fullscreen. ##############################################################################

```powershell
Pop-Window -Monitor -2 -Fullscreen
Pops the last window, moves it to the secondary monitor, and makes it fullscreen.
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
### `-FadeIn`

> The `-FadeIn` parameter.

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
### `-NoModify`

> The `-NoModify` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | NoModify |

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRCurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FREnable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ActiveUser.md)
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
