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
| `-ModuleName` | String | ✅ | — | 0 | — | Le nom du module PowerShell pour lequel générer l'aide |
| `-OutputPath` | String | — | — | Named | — | Répertoire de sortie personnalisé pour les fichiers .md. Par défaut : <moduleRoot>\Docs\<langue>. |
| `-Language` | String | — | — | Named | `'en-US'` | fr-FR |
| `-Force` | SwitchParameter | — | — | Named | — | Overwrite existing .md files without prompting |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | Préfixe d'URL pour les liens de l'index README (par exemple, https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Instructions personnalisées de traduction IA |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
