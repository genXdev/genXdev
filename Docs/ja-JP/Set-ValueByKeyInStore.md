# Set-ValueByKeyInStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `setvalue

## Synopsis

> JSONファイルベースのストアでキーと値のペアを管理します。

## Description

JSONファイルを使用してキーと値のペアの永続ストレージを提供します。新しいエントリの挿入と既存のエントリの更新の両方を処理します。非ローカルストアのオプションの同期をサポートします。この関数は、同期キー、ストア名、キー名の組み合わせに基づいて、新しいキーと値のペアを挿入するか、既存のものを更新するアップサート操作を実装します。

## Syntax

```powershell
Set-ValueByKeyInStore [-StoreName] <string> [-KeyName] <string> [[-Value] <string>] [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | キーバリューペアのストア名 |
| `-KeyName` | String | ✅ | — | 1 | — | 設定または更新するキーの名前 |
| `-Value` | String | — | — | 2 | — | 保存する値 |
| `-SynchronizationKey` | String | — | — | 3 | — | 同期範囲を識別するキー |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Set-ValueByKeyInStore -StoreName "ConfigStore" -KeyName "ApiEndpoint" `
    -Value "https://api.example.com"
```

ConfigStoreにAPIエンドポイントを設定します。

### Example 2

```powershell
setvalue ConfigStore ApiEndpoint "https://api.example.com"
```

エイリアスを使用して値を設定します。

## Related Links

- [Set-ValueByKeyInStore on GitHub](https://github.com/genXdev/genXdev)
