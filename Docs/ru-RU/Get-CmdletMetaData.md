# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает метаданные для указанного командлета GenXdev, с возможностью перевода справочного текста на другой язык.

## Description

Извлекает и возвращает исчерпывающие метаданные о командлете GenXdev, включая его краткое описание, подробное описание, параметры, примеры и другую справочную информацию. Если указан целевой язык с помощью параметра -Language, текст справки может быть переведен с использованием AI-сервисов перевода. Можно предоставить пользовательские инструкции по переводу для точной настройки результата.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Имя командлета для получения метаданных |
| `-Language` | String | — | — | 1 | — | ru-RU |
| `-TranslationInstructions` | String | — | — | 2 | — | Пользовательские инструкции для модели перевода ИИ. Переопределяет инструкции перевода, учитывающие метаданные командлетов, по умолчанию. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Извлекает метаданные для командлета Find-Item на языке по умолчанию.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Haalt de metagegevens op voor de Find-Item-cmdlet met Nederlandse vertalingen.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
