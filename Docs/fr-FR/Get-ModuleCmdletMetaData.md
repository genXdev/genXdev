# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les métadonnées de toutes les cmdlets d’un module PowerShell.

## Description

Récupère les métadonnées complètes des cmdlets (synopsis, description, paramètres, exemples, sorties et alias) pour chaque cmdlet dans le module spécifié, en ajoutant les propriétés SubModuleName et CmdletType à chaque résultat.

L'attribution des sous-modules utilise deux chemins indépendants :

- Cmdlets script (.ps1) : fichier source mis en correspondance avec les mappages de répertoires dot-source .psm1 (Functions\<SubModuleName>\FileName.ps1).
- Cmdlets compilées (.dll) : espace de noms depuis ImplementationType.Namespace (par exemple, GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Le nom du module PowerShell pour lequel récupérer les métadonnées des cmdlets |
| `-Language` | String | — | — | Named | — | fr-FR |
| `-TranslationInstructions` | String | — | — | Named | — | Instructions personnalisées de traduction IA |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Renvoie les métadonnées pour toutes les applets de commande du module GenXdev.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert de naar het Nederlands vertaalde metadata voor alle GenXdev-cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
