# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Windows の既知のフォルダーの物理パスを変更します。

## Description

Windows Shell32 APIを使用して、ドキュメント、ダウンロード、デスクトップなどのシステムフォルダやその他の既知のWindowsフォルダを新しい場所に移動します。この関数は、ターゲットパスが存在することを確認し、包括的な既知のフォルダレジストリからフォルダの一意のGUIDを検索し、SHSetKnownFolderPath APIを使用して移動を実行します。一般的な使用例としては、容量管理や整理のためにユーザーフォルダを別のドライブに移動することが挙げられます。システムの安定性に影響を与える可能性があるため、システムクリティカルなフォルダを移動する際は注意が必要です。

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | 変更する既知のフォルダ |
| `-Path` | String | ✅ | — | 1 | — | 既知のフォルダの新しいパス |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
