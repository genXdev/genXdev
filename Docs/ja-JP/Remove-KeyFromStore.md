# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> キーバリューストアからキーを削除します。

## Description

この関数は、指定された名前のキーバリューストアから特定のキーを削除します。ローカルストアの場合、キーは完全に削除されます。同期ストアの場合、キーは同期のために削除済みとしてマークされます。

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | 店の名前 |
| `-KeyName` | String | ✅ | — | 1 | — | 削除するキー |
| `-SynchronizationKey` | String | — | — | 2 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

ストア「MyStore」からキー「MyKey」を削除します。

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

エイリアスを使用してキーを削除します。

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
