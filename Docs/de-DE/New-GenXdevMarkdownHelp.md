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
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll |
| `-OutputPath` | String | — | — | Named | — | Benutzerdefiniertes Ausgabeverzeichnis für .md-Dateien. Standardmäßig <moduleRoot>\Docs\<Sprache>. |
| `-Language` | String | — | — | Named | `'en-US'` | de-DE |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene .md-Dateien ohne Nachfrage überschreiben |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | URL-Präfix für README-Indexlinks (z. B. https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Brauchst du Hilfe? |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
