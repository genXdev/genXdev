# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> インストールされているすべてのBCP 47言語タグとその表示名の辞書を返します。

## Description

* BCP 47カルチャコード（例：en-US、nl-NL、de-DE）をそれ自身と英語表示名にマッピングする辞書を構築します。
* .NETのCultureInfo APIを使用して、システムにインストールされているすべての特定カルチャを列挙し、PowerShellのヘルプ言語フォルダ名と翻訳対象言語の信頼できる情報源とします。
* 辞書のキーには以下が含まれます：
  - 完全なBCP 47タグ（例：「en-US」、「nl-NL」、「zh-Hans-CN」）
  - 英語表示名（例：「English (United States)」、「Dutch (Netherlands)」）
  - 単純な言語名から最も一般的な地域へのマッピング（例：「English」→「en-US」、「Dutch」→「nl-NL」）

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

完全なBCP 47言語辞書を取得してください。

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

ヘルプ生成用の言語コードを検証して解決します。

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
