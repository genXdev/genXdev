# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows`

## Synopsis

> Windows が最新の状態かどうかをチェックし、必要に応じて利用可能な更新プログラムをインストールします。

## Description

この関数は、Windowsアップデート、wingetパッケージアップデート、およびPowerShellモジュールアップデートをチェックします。利用可能なアップデートを表示したり、自動的にインストールしたりすることができます。この関数は、Windowsアップデートをインストールするために管理者権限が必要であり、必要に応じてシステムを再起動することもできます。

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [-ProcessOptionalUpdates] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | 利用可能なWindows更新プログラムを自動的にインストールする |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | 更新プログラムで再起動が必要な場合は自動的に再起動する |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1"` | カスタム Windows Update 検索条件 |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | 更新検索にドライバーを含める |
| `-ProcessOptionalUpdates` | SwitchParameter | — | — | Named | — | オプションの更新プログラムを含め、それぞれをインストールするよう促す |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | 更新カテゴリ別にグループ化して色付け出力 |
| `-NoBanner` | SwitchParameter | — | — | Named | — | バナー/ステータス出力の無効化 |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | 再起動要件の確認/報告をスキップする |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Windowsおよびwingetの利用可能な更新プログラムをインストールせずに確認します。

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

利用可能なすべてのWindowsアップデートとwingetアップデートを自動的にインストールします。

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

エイリアスを使用してすべての更新をインストールし、必要に応じて自動的に再起動します。

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

利用可能な更新プログラムをカテゴリ別にグループ化して表示し、整理しやすくします。

### Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

```powershell
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates
```

重要な更新プログラムはすべて自動的にインストールされ、オプションの更新プログラムはそれぞれ個別にプロンプトが表示され、選択的なインストールが可能です。

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

カスタム検索条件を使用してドライバーを含む更新プログラムをチェックします。

## Parameter Details

### `-Install`

> 利用可能なWindows更新プログラムを自動的にインストールする

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

> 更新プログラムで再起動が必要な場合は自動的に再起動する

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

> カスタム Windows Update 検索条件

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

> 更新検索にドライバーを含める

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

> オプションの更新プログラムを含め、それぞれをインストールするよう促す

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

> 更新カテゴリ別にグループ化して色付け出力

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

> バナー/ステータス出力の無効化

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

> 再起動要件の確認/報告をスキップする

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

- [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/CurrentUserHasElevatedRights.md)
- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Enable-Screensaver.md)
- [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ActiveUser.md)
- [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ChildProcesses.md)
- [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ClipboardFiles.md)
- [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CurrentFocusedProcess.md)
- [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-DesktopScalingFactor.md)
- [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ForegroundWindow.md)
- [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KnownFolderPath.md)
- [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MpCmdRunPath.md)
- [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-OpenedFileHandleProcesses.md)
- [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PowershellMainWindow.md)
- [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-PowershellMainWindowProcess.md)
- [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-Window.md)
- [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-WindowPosition.md)
- [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-ScheduledTaskScripts.md)
- [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Pop-Window.md)
- [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Push-Window.md)
- [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Save-DesktopScreenShot.md)
- [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Send-Key.md)
- [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Send-WakeOnLan.md)
- [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ClipboardFiles.md)
- [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ForegroundWindow.md)
- [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-KnownFolderPath.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-MonitorPowerOn.md)
- [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-TaskbarAlignment.md)
- [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowPosition.md)
- [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowPositionForSecondary.md)
- [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-WindowsWallpaper.md)
- [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Start-ProcessWithPriority.md)
- [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-PathUsingWindowsDefender.md)
