# Get-StoreKeys

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `getkeys

## Synopsis

> 与えられたキー・バリューストアのすべてのキー名を取得します。

## Description

* KeyValueStoreのJSONファイルから、指定されたストアのアクティブ（削除されていない）キーをすべて取得します。
* 同期スコープでフィルタリングすることもできます。
* ディレクトリ構造が見つからない場合は自動的に初期化し、ローカル以外のストアの同期を処理します。

## Syntax

```powershell
Get-StoreKeys [-StoreName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | キーを取得するストアの名前 |
| `-SynchronizationKey` | String | — | — | 1 | — | 同期スコープを識別するキー。デフォルトはすべて |
| `-DatabasePath` | String | — | — | Named | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Get-StoreKeys -StoreName "ApplicationSettings" -SynchronizationKey "Local"
```

ApplicationSettings ストアからローカルスコープのすべてのキーを取得します。

### Example 2

```powershell
getkeys AppSettings
```

エイリアスを使用してキーを取得します。

## Related Links

- [Get-StoreKeys on GitHub](https://github.com/genXdev/genXdev)
