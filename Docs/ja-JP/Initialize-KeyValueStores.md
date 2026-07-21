# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ローカルストレージとOneDriveストレージ用のKeyValueStoreディレクトリ構造を初期化します。

## Description

JSONベースのキー値ストア用のディレクトリ構造を、ローカルマシン（即時アクセス用）とOneDriveフォルダ（クラウド同期用）の2か所に作成します。このコマンドレットは、両方のディレクトリが存在し、適切に構成されていることを確認します。

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | キーと値のストアデータファイル用のデータベースパス |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

キーと値のストア用の標準的なローカルおよびOneDriveディレクトリを作成します。

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

指定されたカスタムパスの下にキーと値のストアディレクトリを作成します。

## Parameter Details

### `-DatabasePath <String>`

> キーと値のストアデータファイル用のデータベースパス

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Sync-KeyValueStore.md)
