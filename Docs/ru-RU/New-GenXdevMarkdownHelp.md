# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
