# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | フォーマットするスクリプトファイルへのパスを指定します。 |
| `-Settings` | Object | — | — | Named | — | 書式設定を含む設定ハッシュテーブル、またはPowerShellデータファイル（.psd1）へのパス。 |
| `-Range` | Int32[] | — | — | Named | — | 書式設定を適用する範囲を、開始行番号、開始列番号、終了行番号、終了列番号の4つの整数からなる配列で指定します。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | サブディレクトリ内のファイルを再帰的に処理する |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
