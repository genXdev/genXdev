# Get-KeyValueStoreNames

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getstorenames

## Synopsis

> 利用可能なキーバリューストアの名前を取得します。

## Description

* キーバリューストアディレクトリをスキャンしてJSONファイルを探し、指定された同期キーパターンに基づいて一意のストア名を抽出します。
* ストアディレクトリが存在することを確認し、必要に応じて非ローカルストアを同期します。

## Syntax

```powershell
Get-KeyValueStoreNames [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | — | — | 0 | — | 同期スコープを識別するキー。デフォルトはすべて |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Get-KeyValueStoreNames
```

デフォルトの場所からすべての店舗名を取得します。

### Example 2

```powershell
Get-KeyValueStoreNames -SynchronizationKey 'Local'
```

「ローカル」同期スコープのストア名を取得します。

### Example 3

```powershell
getstorenames -DatabasePath 'C:\MyStores'
```

エイリアスを使用してカスタムデータベースパスからすべてのストア名を取得します。

## Related Links

- [Get-KeyValueStoreNames on GitHub](https://github.com/genXdev/genXdev)
