# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает метаданные для всех командлетов в модуле PowerShell.

## Description

Извлекает полные метаданные командлета (краткое описание, описание, параметры, примеры, выходные данные и псевдонимы) для каждого командлета в указанном модуле, добавляя свойства SubModuleName и CmdletType к каждому результату.

Назначение подмодуля использует два независимых пути:

- Командлеты-скрипты (.ps1): исходный файл сопоставляется с сопоставлениями каталогов dot-исходников .psm1 (Functions\<SubModuleName>\FileName.ps1).
- Компилированные командлеты (.dll): пространство имен из ImplementationType.Namespace (например, GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Имя модуля PowerShell, для которого нужно получить метаданные командлетов |
| `-Language` | String | — | — | Named | — | ru-RU |
| `-TranslationInstructions` | String | — | — | Named | — | Пользовательские инструкции по ИИ-переводу |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Возвращает метаданные для всех командлетов модуля GenXdev.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert de naar het Nederlands vertaalde metadata voor alle GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
