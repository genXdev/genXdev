# Sync-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ローカルとOneDriveのキー値ストアJSONファイルを同期します。

## Description

ローカルとOneDrive上のシャドウJSONファイル間で、最終更新タイムスタンプ方式を用いた双方向同期を実行します。レコードは最終更新時刻に基づいてマージされ、新しいバージョンが優先されます。

## Syntax

```powershell
Sync-KeyValueStore [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Sync-KeyValueStore
```

### Example 2

```powershell
Sync-KeyValueStore -SynchronizationKey "UserSettings"
```

## Related Links

- [Sync-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
