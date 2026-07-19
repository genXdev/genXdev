# Get-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `folder

## Synopsis

> Windows Shell32 APIを使用してWindows既知のフォルダーのパスを取得します。

## Description

Shell32 APIのSHGetKnownFolderPath関数を使用して、指定されたWindows既知フォルダのパスを取得します。このメソッドは環境変数を使用するよりも信頼性が高く、異なるWindowsバージョンや言語設定でも一貫して動作します。ドキュメント、ダウンロード、AppDataなど、すべての標準Windows既知フォルダをサポートしています。

## Syntax

```powershell
Get-KnownFolderPath -KnownFolder <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | パスを取得するためのWindows既知フォルダ名 |

## Examples

### Get-KnownFolderPath -KnownFolder 'Documents' Returns: C:\Users\Username\Documents

```powershell
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents
```

### folder Downloads Returns: C:\Users\Username\Downloads using the alias

```powershell
folder Downloads
Returns: C:\Users\Username\Downloads using the alias
```

### cd (folder Desktop) Changes to the Desktop folder using the alias

```powershell
cd (folder Desktop)
Changes to the Desktop folder using the alias
```

## Related Links

- [Get-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
