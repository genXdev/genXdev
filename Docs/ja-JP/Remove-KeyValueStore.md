# Remove-KeyValueStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> キーバリューストアを削除します。

## Description

この関数は、指定されたキーバリューストアを削除します。ローカルストアの場合は物理的にファイルを削除します。同期ストアの場合は、すべてのキーを削除済みとしてマークし、同期をトリガーします。

## Syntax

```powershell
Remove-KeyValueStore [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 削除する店舗の名前 |
| `-SynchronizationKey` | String | — | — | 1 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Remove-KeyValueStore -StoreName "MyStore"
```

ローカルキーバリューストア「MyStore」を削除します。

### Example 2

```powershell
Remove-KeyValueStore "MyStore" -SynchronizationKey "Cloud"
```

特定の同期キーを持つ同期済みストアを削除します。

## Related Links

- [Remove-KeyValueStore on GitHub](https://github.com/genXdev/genXdev)
