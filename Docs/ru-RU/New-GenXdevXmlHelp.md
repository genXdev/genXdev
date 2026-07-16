# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
