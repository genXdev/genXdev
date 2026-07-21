# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> Verifica se Windows è aggiornato e installa facoltativamente gli aggiornamenti disponibili.

## Description

Questa funzione verifica la presenza di aggiornamenti di Windows, aggiornamenti dei pacchetti winget e aggiornamenti dei moduli PowerShell. Può visualizzare gli aggiornamenti disponibili o installarli automaticamente. La funzione richiede privilegi amministrativi per installare gli aggiornamenti di Windows e può riavviare facoltativamente il sistema se gli aggiornamenti richiedono un riavvio.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Installa automaticamente gli aggiornamenti di Windows disponibili |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Riavvia automaticamente se gli aggiornamenti richiedono un riavvio |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | Criteri di ricerca personalizzati per Windows Update |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Includi driver nella ricerca degli aggiornamenti |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | Includi aggiornamenti opzionali e richiedi di installare ciascuno di essi |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Raggruppa e colora l'output per categoria di aggiornamento |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Disabilita output banner/stato |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Salta la verifica/segnalazione del requisito di riavvio |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Controlla la disponibilità di aggiornamenti di Windows e winget senza installarli.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Installa automaticamente tutti gli aggiornamenti disponibili di Windows e winget.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Installa tutti gli aggiornamenti e riavvia automaticamente se necessario utilizzando l'alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Visualizza gli aggiornamenti disponibili raggruppati per categoria per una migliore organizzazione.

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

Installa automaticamente tutti gli aggiornamenti importanti e chiede per ciascun aggiornamento opzionale individualmente, consentendo l'installazione selettiva degli aggiornamenti opzionali.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Verifica la presenza di aggiornamenti, inclusi i driver, con criteri di ricerca personalizzati.

## Parameter Details

### `-Install`

> Installa automaticamente gli aggiornamenti di Windows disponibili

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

> Riavvia automaticamente se gli aggiornamenti richiedono un riavvio

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

> Criteri di ricerca personalizzati per Windows Update

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

> Includi driver nella ricerca degli aggiornamenti

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

> Includi aggiornamenti opzionali e richiedi di installare ciascuno di essi

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

> Raggruppa e colora l'output per categoria di aggiornamento

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

> Disabilita output banner/stato

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

> Salta la verifica/segnalazione del requisito di riavvio

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Initialize-ScheduledTaskScripts.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-PathUsingWindowsDefender.md)
