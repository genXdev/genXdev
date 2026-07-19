# Get-MediaFileCreationDate

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> メディアやその他のファイルの作成日を最善の形で抽出します。

## Description

指定されたファイルの正確な作成日またはキャプチャ日を特定するために、いくつかの戦略を試みます。戦略には、画像のEXIFメタデータの読み取り、ファイル名からの日付/時刻情報の解析、および他の信頼できる情報がない場合のファイルの最終書き込み時刻へのフォールバックが含まれます。この関数は常に[DateTime]を返します。日付が特定できない場合は、[DateTime]::MinValueを返します。

## Syntax

```powershell
Get-MediaFileCreationDate -FilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The `-FilePath` parameter. |

## Examples

### Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

```powershell
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'
```

## Related Links

- [Get-MediaFileCreationDate on GitHub](https://github.com/genXdev/genXdev)
