# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 任意のPowerShellモジュール用のMAML XMLヘルプファイルを生成します。

## Description

任意のPowerShellモジュール用のMAML XMLヘルプファイルを生成します。Get-CmdletMetaDataを使用してモジュール内のすべてのコマンドレットからメタデータを抽出し、ModuleName.dll-Help.xml（C#コマンドレット用）とModuleName-help.xmlの両方を生成します。

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ヘルプを生成するPowerShellモジュールの名前 |
| `-Language` | String | — | — | Named | `'en-US'` | ja-JP |
| `-Force` | SwitchParameter | — | — | Named | — | 既存のヘルプXMLファイルを確認なしで上書きする |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | LLM 翻訳用のカスタム指示 (Get-TextTranslation に渡されます) |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Pesterモジュールの英語ヘルプXMLをen-USで生成します。

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

GenXdev用のオランダ語ヘルプXMLを生成し、既存のファイルを上書きします。

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

実際に作成せずに、どのようなファイルが作成されるかを表示します。

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
