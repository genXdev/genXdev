# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ローカルストレージとOneDriveストレージ用のKeyValueStoreディレクトリ構造を初期化します。

## Description

JSONベースのキー値ストア用のディレクトリ構造を、ローカルマシン（即時アクセス用）とOneDriveフォルダ（クラウド同期用）の2か所に作成します。このコマンドレットは、両方のディレクトリが存在し、適切に構成されていることを保証します。

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | キーバリューストアデータファイルのデータベースパス |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

キーと値のストア用の標準的なローカルディレクトリとOneDriveディレクトリを作成します。

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

指定されたカスタムパスの下にキー・バリューストアのディレクトリを作成します。

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
