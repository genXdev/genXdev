# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Windows が最新かどうかを確認し、オプションで利用可能な更新プログラムをインストールします。

## Description

この関数は、Windows Update、wingetパッケージの更新、PowerShellモジュールの更新を確認します。利用可能な更新を表示するか、自動的にインストールすることができます。この関数は、Windows Updateをインストールするために管理者権限が必要であり、更新プログラムの再起動が必要な場合は、必要に応じてシステムを再起動することができます。

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | 利用可能なWindowsアップデートを自動的にインストールする |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | 更新に再起動が必要な場合、自動的に再起動する |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | カスタム Windows アップデート検索条件 |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | 更新検索にドライバーを含める |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | 更新カテゴリごとにグループ化し、色付きで出力する |
| `-NoBanner` | SwitchParameter | — | — | Named | — | バナー/ステータス出力を無効化 |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | 再起動要件の確認/報告をスキップ |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

利用可能なWindowsアップデートとwingetアップデートを確認しますが、インストールはしません。

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

利用可能なすべてのWindows更新プログラムとwinget更新プログラムを自動的にインストールします。

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

エイリアスを使用して、すべての更新をインストールし、必要に応じて自動的に再起動します。

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

利用可能なアップデートをカテゴリ別にグループ化して表示し、整理しやすくします。

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

カスタム検索条件を使用したドライバーのアップデートを含む更新の確認。

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
