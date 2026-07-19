# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les métadonnées pour une applet de commande GenXdev spécifiée, en traduisant éventuellement le texte d'aide dans une autre langue.

## Description

Extrait et renvoie des métadonnées complètes sur une cmdlet GenXdev, notamment son synopsis, sa description, ses paramètres, ses exemples et autres informations d'aide. Lorsqu'une langue cible est spécifiée via le paramètre -Language, le texte d'aide peut être traduit à l'aide de services de traduction basés sur l'IA. Des instructions de traduction personnalisées peuvent être fournies pour affiner le résultat de la traduction.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Le nom de l'applet de commande pour récupérer les métadonnées |
| `-Language` | String | — | — | 1 | — | fr-FR |
| `-TranslationInstructions` | String | — | — | 2 | — | Instructions personnalisées pour le modèle de traduction IA. Remplace les instructions de traduction par défaut prenant en compte les métadonnées des cmdlets. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Récupère les métadonnées pour l'applet de commande Find-Item dans la langue par défaut.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Haalt metagegevens op voor de Find-Item-cmdlet met Nederlandse vertalingen.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
