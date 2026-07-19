# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Генерирует подробные файлы справки в формате Markdown для любого модуля PowerShell.

## Description

Генерирует комплексный Markdown-сайт справки для любого PowerShell-модуля:
один .md файл на каждый командлет со всеми разделами метаданных, плюс README.md
индекс с таблицами по подмодулям, ссылающимися на каждый файл командлета.

Обнаружение подмодулей портативно: директории с точкой подключения .psm1 для
скриптовых командлетов, пространства имен .NET для скомпилированных командлетов,
с многоуровневой цепочкой запасных вариантов для модулей без структуры подмодулей.

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Имя модуля PowerShell, для которого нужно создать справку |
| `-OutputPath` | String | — | — | Named | — | Пользовательский выходной каталог для .md файлов. По умолчанию: <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | ru-RU |
| `-Force` | SwitchParameter | — | — | Named | — | Перезаписывать существующие .md-файлы без запроса |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Help |
| `-LinkPrefix` | String | — | — | Named | — | Префикс URL для ссылок индекса README (например, https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Пользовательские инструкции по ИИ-переводу |

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Создает папку Docs\ с одним .md-файлом для каждого командлета Pester и файлом README.md в качестве индекса.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlands-vertaalde markdown-help, overschrijft bestaande bestanden.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Создает помощь с абсолютными ссылками GitHub в индексе README.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
