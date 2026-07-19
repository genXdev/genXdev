# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Génère des fichiers d'aide Markdown complets pour tout module PowerShell.

## Description

Génère un site d'aide complet en Markdown pour n'importe quel module PowerShell :
un fichier .md par cmdlet avec toutes les sections de métadonnées, plus un README.md
index avec des tableaux par sous-module liant chaque fichier de cmdlet.

La découverte des sous-modules est portable : répertoires dot-source .psm1 pour les
cmdlets de script, espaces de noms .NET pour les cmdlets compilés, avec une chaîne
de repli en couches pour les modules sans structure de sous-module.

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

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Génère le dossier Docs\ avec un .md par cmdlet Pester + README.md d'index.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

Genereert Nederlands vertaalde markdown-help, overschrijft bestaande bestanden.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Génère une aide avec des liens GitHub absolus dans l'index du README.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
