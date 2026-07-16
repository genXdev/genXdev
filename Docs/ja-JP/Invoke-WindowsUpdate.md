# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
