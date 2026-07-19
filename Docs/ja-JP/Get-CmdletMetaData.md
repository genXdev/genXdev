# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 指定されたGenXdevコマンドレットのメタデータを取得し、必要に応じてヘルプテキストを別の言語に翻訳します。

## Description

GenXdevコマンドレットに関する包括的なメタデータ（概要、説明、パラメーター、例、その他のヘルプ情報）を抽出して返します。ターゲット言語が-Languageパラメーターで指定されると、AIベースの翻訳サービスを使用してヘルプテキストを翻訳できます。カスタム翻訳指示を提供して、翻訳出力を微調整することもできます。

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | メタデータを取得するためのコマンドレットの名前 |
| `-Language` | String | — | — | 1 | — | ヘルプテキストの翻訳用BCP 47言語タグ（例：nl-NL、de-DE）。翻訳を省略するには省略します。 |
| `-TranslationInstructions` | String | — | — | 2 | — | これはテストです。 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Find-Item コマンドレットのメタデータを既定の言語で取得します。

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Find-Item コマンドレットのメタデータをオランダ語の翻訳で取得します。

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
