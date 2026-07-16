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
| `-ModuleName` | String | ✅ | — | 0 | — | El nombre del módulo de PowerShell para el cual generar ayuda |
| `-OutputPath` | String | — | — | Named | — | Directorio de salida personalizado para archivos .md. Por defecto: <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | es-ES |
| `-Force` | SwitchParameter | — | — | Named | — | Sobrescribir los archivos .md existentes sin preguntar |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | Prefijo de URL para enlaces de índice de README (ej., https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Instrucciones de traducción AI personalizadas |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
