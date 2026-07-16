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
| `-ModuleName` | String | ✅ | — | 0 | — | Le nom du module PowerShell pour lequel générer l'aide |
| `-Language` | String | — | — | Named | `'en-US'` | fr-FR |
| `-Force` | SwitchParameter | — | — | Named | — | Écraser les fichiers d'aide XML existants sans invitation |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | Si vous devez vous déconnecter tôt, conservez cette page ouverte pendant que vous partez. |

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
