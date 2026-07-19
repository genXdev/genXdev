# Get-ValueByKeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getvalue

## Synopsis

> JSONベースのキー・バリューストアから値を取得します。

## Description

* JSONファイルベースのキー・バリューストアから指定されたキーの値を取得します。
* オプションのデフォルト値と異なるスコープ間での同期をサポートします。
* 自動的なディレクトリ初期化と同期を提供します。

## Syntax

```powershell
Get-ValueByKeyFromStore [-StoreName] <string> [-KeyName] <string> [[-DefaultValue] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | キーを取得するストアの名前 |
| `-KeyName` | String | ✅ | — | 1 | — | 指定されたストアから取得するキー |
| `-DefaultValue` | String | — | — | 2 | — | オプションのデフォルト値 |
| `-SynchronizationKey` | String | — | — | 3 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Get-ValueByKeyFromStore -StoreName "AppSettings" -KeyName "Theme" -DefaultValue "Dark"
```

「AppSettings」から「Theme」の値を取得し、見つからない場合は「Dark」を返します。

### Example 2

```powershell
getvalue AppSettings Theme
```

値の取得に「getvalue」エイリアスを使用します。

## Related Links

- [Get-ValueByKeyFromStore on GitHub](https://github.com/genXdev/genXdev)
