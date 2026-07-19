# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Développe les objets d'entrée en noms de fichiers et de répertoires, prenant en charge divers filtres et options de sortie.

## Description

Cette fonction traite des objets d'entrée (fichiers, répertoires ou collections) et les développe en noms de fichiers et de répertoires. Elle prend en charge le filtrage, la correspondance de motifs et peut afficher les résultats sous forme d'objets. La fonction est conçue pour fonctionner avec des entrées de pipeline et offre des options de récursivité, de flux de données alternatifs, etc.

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Objet d'entrée contenant des noms de fichiers ou de répertoires |
| `-File` | SwitchParameter | — | — | Named | — | files |
| `-Pattern` | String | — | — | 1 | — | Modèle d'expression régulière pour rechercher dans le contenu *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Chemin de base pour la résolution des chemins relatifs dans la sortie |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Rechercher sur tous les lecteurs disponibles |
| `-Directory` | SwitchParameter | — | — | Named | — | Rechercher uniquement les répertoires *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Inclure à la fois les fichiers et les répertoires *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Afficher les éléments correspondants sous forme d'objets |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Inclure les flux de données alternatifs dans les résultats de recherche |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | N'entrez pas dans les sous-répertoires |

## Examples

### ResolveInputObjectFileNames -Input "C:\Temp" -File

```powershell
ResolveInputObjectFileNames -Input "C:\Temp" -File
```

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
