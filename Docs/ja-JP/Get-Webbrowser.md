# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> インストールされている最新のWebブラウザのコレクションを返します。

## Description

* システムにインストールされている最新のウェブブラウザを検出し、詳細を返します。
* Windows レジストリを照会して、名前、説明、アイコンパス、実行可能パス、デフォルトブラウザの状態などの情報を取得します。
* Windows に必要な機能が登録されているブラウザのみを返します。

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Microsoft Edge ブラウザインスタンスを選択します *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Google Chrome ブラウザのインスタンスを選択します *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | デフォルトのChromiumベースブラウザを選択します *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Firefoxブラウザインスタンスを選択します *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

インストールされているすべてのモダンなウェブブラウザのコレクションを返します。

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

システムのデフォルトブラウザのみを表示するフィルター。

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
