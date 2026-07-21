# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames`

## Synopsis

> 利用可能なキー値ストアの名前を取得します。

## Description

* キー値ストアディレクトリをスキャンしてJSONファイルを検出し、指定された同期キーパターンに基づいて一意のストア名を抽出します。
* ストアディレクトリが存在することを確認し、必要に応じて非ローカルストアを同期します。

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 同期スコープを識別するキー、デフォルトはすべて |
| `-DatabasePath` | String | — | — | Named | — | キーと値のストアデータファイル用のデータベースパス |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

既定の場所からすべての店舗名を取得します。

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

'ローカル' 同期スコープのストア名を取得します。

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

エイリアスを使用してカスタムデータベースパスからすべてのストア名を取得します。

## Parameter Details

### `-SynchronizationKey <String>`

> 同期スコープを識別するキー、デフォルトはすべて

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabasePath <String>`

> キーと値のストアデータファイル用のデータベースパス

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

- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Sync-KeyValueStore.md)
