# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> キーバリューストアのファイルパスを取得します。

## Description

同期キー、ストア名、ベースディレクトリに基づいてキーバリューストアのファイルパスを構築します。

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | ストアを識別するために使用される同期キー |
| `-StoreName` | String | ✅ | — | 1 | — | キーバリューストアの名前 |
| `-BasePath` | String | — | — | Named | — | ストアファイルのベースディレクトリパス |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

ローカルキーバリューストアのパスを取得します。

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
