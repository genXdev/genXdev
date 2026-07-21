# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue`

## Synopsis

> JSONファイルベースのストアでキーと値のペアを管理します。

## Description

JSONファイルを使用してキーと値のペアの永続ストレージを提供します。新しいエントリの挿入と既存のエントリの更新の両方を処理します。非ローカルストアのオプションの同期をサポートします。この関数は、キーと値のペアを挿入するか、同期キー、ストア名、キー名の組み合わせに基づいて既存のものを更新するアップサート操作を実装します。

## Syntax

```powershell
Set-ValueByKeyInStore -StoreName <String> -KeyName <String> [[-Value] <String>] [[-SynchronizationKey] <String>] [-DatabasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | キーと値のペアのストア名 |
| `-KeyName` | String | ✅ | — | 1 | — | 設定または更新するキーの名前 |
| `-Value` | String | — | — | 2 | — | 保存する値 |
| `-SynchronizationKey` | String | — | — | 3 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーと値のストアデータファイル用のデータベースパス |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

ConfigStore で API エンドポイントを設定します。

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

エイリアスを使用して値を設定します。

## Parameter Details

### `-StoreName <String>`

> キーと値のペアのストア名

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeyName <String>`

> 設定または更新するキーの名前

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> 保存する値

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SynchronizationKey <String>`

> 同期範囲を識別するキー

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
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

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-ValueByKeyFromStore.md)
- [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Initialize-KeyValueStores.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyValueStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Sync-KeyValueStore.md)
