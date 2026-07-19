# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Генерирует файлы справки MAML для любого модуля PowerShell.

## Description

Генерирует MAML XML-файлы справки для любого модуля PowerShell, извлекая метаданные из всех командлетов модуля с помощью Get-CmdletMetaData и создавая как ModuleName.dll-Help.xml (для C# командлетов), так и ModuleName-help.xml (для

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Имя модуля PowerShell, для которого нужно создать справку |
| `-Language` | String | — | — | Named | `'en-US'` | ru-RU |
| `-Force` | SwitchParameter | — | — | Named | — | Перезаписывать существующие файлы справки XML без запроса |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Help |
| `-TranslationInstructions` | String | — | — | Named | — | Ваша фактическая трансформация текста здесь |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

Generates English help XML for the Pester module in en-US.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlandse help XML voor GenXdev, overschrijft bestaande bestanden.

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Показывает, какие файлы были бы созданы без фактической записи.

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
